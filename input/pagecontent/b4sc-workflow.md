{% include wcto-style.html %}

# Before School Check — End-to-End Workflow

This is the B4SC-specific workflow. It begins with identifying a child due for a check, not with consent capture. Detailed FHIR elements are maintained in [Profiles](profiles.html); API contracts are in [APIs](apis.html).

## B4SC Sequence Diagram

The following sequence diagram illustrates the interactions
between WCTO participants, orchestration services, and
FHIR resources throughout the B4SC process.

![WCTO B4SC Sequence Diagram](b4sc-sequence-diagram.svg)

## End-to-end pathway

The diagram follows the steps below. Consent, family contributions and Vision and Hearing may be completed **in any order or concurrently**. The nurse evaluation is the final B4SC clinical completion gate. Summary availability and CarePlan closure are separate milestones.

![B4SC end-to-end workflow](b4sc-flow.svg)

## Responsibility swimlanes

The swimlane-style diagram distinguishes system orchestration, coordinator/provider actions, whānau and screening work, nurse review, and summary/follow-up. It is an overview; it does not specify synchronous calls or approved deployment boundaries.

![B4SC responsibility swimlanes](b4sc-swimlane.svg)

## End-to-end steps and CarePlan updates

| Step | Responsibility | Expected workflow update |
|---|---|---|
| Eligibility identified or changed | Cohorts / Scheduler | Re-evaluate eligibility and existing plan; avoid duplicate B4SC plans |
| Plan initiated | Scheduler | Create or reuse B4SC CarePlan; instantiate appropriate Tasks from approved workflow definition |
| Nomination and assignment | Coordinator / authorised provider | Record or reference nominated provider through approved service and update responsibility |
| Consent captured and reviewed | Whānau / nurse | Store evidence and record review outcome; do not assume form submission completes nurse review |
| Family forms completed | Whānau / nurse | Record form submissions and any required nurse contributions or review |
| Vision and Hearing completed | Screening provider | Record screening result and relevant Task progress independently |
| Nurse evaluation completed | Nurse | Final clinical completion gate once required inputs reviewed |
| Summaries produced | Summary service | Produce clinical and whānau outputs according to approved readiness and release rules |
| Referral follow-up | Responsible clinical/coordinator team | Track outstanding referrals and their outcomes without treating the platform as an e-referral system |
| CarePlan closed | Orchestration / authorised workflow | Close only when required clinical and follow-up closure conditions are satisfied |

## Proposed task catalogue

| Task type | What completes it | Gate / dependency |
|---|---|---|
| Consent and review | Consent evidence and required nurse review | No mandatory ordering against other capture activities |
| Whānau forms | Required parent responses plus any nurse review/portion | Independent capture; nurse review may remain pending |
| Vision and Hearing | Approved screening completion evidence | Can progress concurrently |
| Nurse evaluation | Nurse completes final clinical assessment | Final B4SC clinical completion gate |
| Referral follow-up (conditional) | Required referral outcome documented | May remain open after summaries are available |

## Form completion versus clinical completion

A submitted `QuestionnaireResponse` indicates that a form response exists. It does **not** necessarily mean its associated Task is complete or that the B4SC is clinically complete. The workflow must evaluate whether nurse review or other evidence is required before transitioning Task status.

## Events and automation (proposed)

Events include CarePlan created/reused, response submitted, nurse review recorded, screening completed, nurse evaluation completed, summary produced, referral created and referral outcome recorded. The Scheduler should re-evaluate affected Tasks and the CarePlan after relevant events. The exact event transport, idempotency and error-handling design require confirmation.

## Completion and closure

The nurse evaluation marks clinical completion of B4SC once the required inputs have been reviewed. Summaries can be produced according to approved readiness rules. **The CarePlan stays active when required referral follow-up remains unresolved**, even when the clinical check is complete and summaries are available.


## Implementation rules and event handling

1. Identify an eligible child through cohorts and use an idempotent lookup keyed by child, B4SC contact type and episode to avoid duplicate B4SC CarePlans. The precise identifier policy is to be confirmed.
2. Apply the B4SC PlanDefinition through an orchestration service. PlanDefinition describes the intended actions; FHIR alone does not automatically persist Tasks. ActivityDefinition is **not required for the MVP**.
3. Create or reconcile the initial assessment Tasks. Consent, whānau health, PEDS-R, SDQ Parent and Vision/Hearing may be completed in any order or concurrently. SDQ Teacher/ECE is captured when applicable and must not silently become a universal blocking gate.
4. Preserve form submission events and authorship. A QuestionnaireResponse may represent a contribution, but completion of a Task depends on its documented review/acceptance rule; submission does not automatically imply nurse sign-off.
5. The nurse evaluation is the **final clinical completion gate**, after the nurse has reviewed the required assessments and exceptions. On completion, update the B4SC clinical status and trigger summary generation according to approved rules.
6. Referral follow-up may remain open after clinical completion. Track referral progress separately from the clinical gate; administrative case closure remains a business decision.
7. Use event deduplication and state reconciliation to handle repeated submissions, late updates, corrected answers and retries without creating duplicate Tasks.

### Suggested event-to-action mapping (proposed)

| Event | Orchestration action | Completion implication |
|---|---|---|
| Consent submitted | Persist response and mark for review if required | Not automatically B4SC complete |
| Family form submitted | Persist QuestionnaireResponse; update corresponding Task according to review rules | Does not gate other family/V&H activity |
| Vision/Hearing completed | Record findings and update assessment Task | Does not independently complete B4SC |
| Nurse evaluation completed and accepted | Check all required clinical evidence and exceptions | Final clinical completion gate |
| Referral initiated/completed | Create/update referral tracking Task | Independently tracked |
| Clinical completion recorded | Request clinical and whānau summary generation | Summary availability subject to API rules |
