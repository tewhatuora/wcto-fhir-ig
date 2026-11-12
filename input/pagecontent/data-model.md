{% include wcto-style.html %}

# FHIR Data Model

This page explains the proposed B4SC resource relationships in plain language. The formal constraints, types, bindings and element cardinalities are defined in the generated [FHIR Profiles](profiles.html).

## B4SC resources and references

The Scheduler checks for an existing B4SC CarePlan for a child and creates one if needed. **One B4SC CarePlan per child for their Before School Check** is an orchestration business rule, not a restriction on all CarePlans for that child. The CarePlan represents the overall check, not each visit or form.

Tasks identify activities associated with that CarePlan. `Task.basedOn` is used in the draft WCTO Task profile to reference the CarePlan. QuestionnaireResponses record answers, identify the child and their questionnaire, and retain the appropriate author. Evidence and output mapping to Tasks must be specified and tested.

![B4SC FHIR resource model](b4sc-resources.svg)

## Resource implementation links

| Resource | Detailed definition | Example |
|---|---|---|
| CarePlan | [WCTO CarePlan profile](StructureDefinition-wcto-careplan.html) and [B4SC CarePlan profile](StructureDefinition-wcto-b4sc-careplan.html) | [Example CarePlan](CarePlan-WCTOExampleB4SCCarePlan.html) |
| Task | [WCTO Task profile](StructureDefinition-wcto-task.html) | [Example nurse Task](Task-WCTOExampleNurseTask.html) |
| PlanDefinition | [WCTO PlanDefinition profile](StructureDefinition-wcto-plan-definition.html) | [B4SC workflow definition](PlanDefinition-WCTOExampleB4SCPlanDefinition.html) |
| QuestionnaireResponse | [WCTO QuestionnaireResponse profile](StructureDefinition-wcto-questionnaire-response.html) | See [Examples](examples.html) |
| RelatedPerson | [WCTO RelatedPerson profile](StructureDefinition-wcto-related-person.html) | Example pending |

## Authoritative sources and persistence

NHI remains authoritative for patient identity; NES for enrolment; HPI for provider identifiers; AIR for immunisation information. WCTO persists its workflow and assessment records in the proposed shared FHIR infrastructure. Caregiver relationships need an agreed verification and persistence approach; do not infer them from NHI alone.

## Business rules outside profile cardinalities

The Scheduler must prevent duplicate active B4SC plans for the same child and check. Nurse evaluation marks B4SC clinical completion, while unresolved referral follow-up can keep the CarePlan open. See [B4SC Workflow](b4sc-workflow.html) and [Decisions](decisions-and-tests.html).
