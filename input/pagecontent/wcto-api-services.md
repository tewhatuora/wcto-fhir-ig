---
title: WCTO API Services
---

# WCTO API services

**Page status: Draft for review**

The following services are proposed for the WCTO digital solution. Their final names, responsibilities, FHIR operations, and API contracts remain subject to detailed design and endorsement.

| Service | Development status |
|---|---|
| WCTO Schedule API | In development |
| Magic Link API | In development; service ownership decision required |
| WCTO Summary API | In development |

## Common requirements

All proposed services are expected to support:

- FHIR R4 payloads where a FHIR interaction is appropriate;
- reuse of NZ Base identifiers, profiles, datatypes, and terminology;
- authentication, authorisation, purpose-of-use, and least-privilege enforcement;
- correlation identifiers and end-to-end traceability;
- audit records for access, creation, update, status transition, correction, and retrieval;
- duplicate protection, version-aware updates, and consistent privacy-safe errors;
- observability, availability, recovery, and operational support; and
- protection of licensed form content and restricted derived information.

CapabilityStatements, operations, search parameters, scopes, roles, errors, performance requirements, and executable test cases are **to be developed**.

## Magic Link API

**Status: In development**

The Magic Link API provides controlled access to the relevant FHIR form and establishes the context required for its completion.

| Attribute | Draft definition |
|---|---|
| Purpose | Securely launch the required WCTO form and provide the permitted form and workflow context |
| Information domains | Authentication context, user context, child context, form context, and workflow context |
| Candidate FHIR resources | `Questionnaire`; `QuestionnaireResponse` when an existing response is continued |
| Authenticated population | May use permitted National Data Service information, PMS or EMR context, portal context, WCTO Schedule information, and an existing form response |
| Unauthenticated population | None; a blank form is expected |
| Key consumers | PMS, EMR, clinical portals, consumer portals, and approved invitation workflows |

The service must not treat possession of a URL as equivalent to an authenticated identity. Detailed token and access-control requirements remain to be confirmed.

**To be developed:** request and response contract; token construction and storage; expiry, revocation and reuse; child and invitation matching; questionnaire version selection; save/resume/recovery; abuse detection; and privacy-safe errors.

## WCTO Schedule API

**Status: In development**

The WCTO Schedule API is intended to identify or expose children due for a WCTO contact and manage assignment, reassignment, component progress, and overall completion.

| Attribute | Draft definition |
|---|---|
| Purpose | Support due-list management, provider assignment, component tracking, and completion |
| Information domains | Eligibility, due status, assignment, reassignment, component status, and overall workflow status |
| Candidate FHIR resources | `Task` or another appropriate workflow representation, to be confirmed |
| Cohort input | Children identified by the approved cohorting process applying B4SC rules to a scheduled NHI-derived population extract |
| Read interactions | Retrieve due children, provider assignment, component status, and overall status |
| Update interactions | Assign or reassign a provider and update component or overall status |
| Form interaction | Submission or finalisation of a relevant form may update the corresponding component status |
| Key consumers | Coordinator application, PMS, EMR, clinical workflow services, and authorised reporting services |

### Status dimensions

Assignment, overall workflow status, and form-component status are separate concepts and must not be combined into one ambiguous status list.

| Status group | Candidate concepts |
|---|---|
| Eligibility or due state | Due; not due; eligibility to be confirmed |
| Assignment state | Unassigned; assigned; reassigned |
| Overall workflow state | Due; in progress or partially complete; returned; closed; completed |
| Form component state | Not started; in progress; completed; returned for update; unable to complete |

Component status is expected for the Health History and Nursing Assessment, PEDS-R, SDQ Parent, SDQ Teacher/ECE, and Vision and Hearing components. Whether Consent is modelled as a component, prerequisite, or separate state requires confirmation.

FHIR workflow status and business status should also be designed separately. Final codes, transitions, permissions, and terminal-state rules require business and technical approval.

Starting or saving a form is expected to provide evidence that the relevant component is in progress. The precise trigger, treatment of drafts, inactivity rules, and reversal or correction behaviour remain to be defined.

Provider assignment may originate through the coordinator application. Provider self-nomination through NES was also identified as a possible route, although that NES functionality is not currently used by this workflow and requires confirmation before inclusion in the production design. The Schedule API is expected to reflect the resulting assignment-related state, but the meeting did not define the coordinator application, NES, or Schedule API as the single authoritative assignment record.

**To be developed:** search, read, assign/reassign, component update, overall-status update and cohort-reconciliation interactions; authority rules; direct versus event-driven updates; duplicate handling; reopen rules; and the meaning of `returned`.

## WCTO Summary API

**Status: In development**

The WCTO Summary API provides authorised access to completed individual forms and generated WCTO summaries.

| Attribute | Draft definition |
|---|---|
| Purpose | Share completed assessment information and approved consolidated summaries |
| Information domains | Completed forms, assessment outcomes, referrals, recommendations, completion status, and next steps |
| Candidate FHIR resources | `QuestionnaireResponse`, `Observation`, `Consent`, `ServiceRequest`, `Composition`, and `Bundle`, subject to confirmation |
| Key consumers | PMS, EMR, clinical portals, consumer portals, and authorised WCTO services |
| Expected outputs | Completed individual forms, Clinical B4SC Summary, and Whānau B4SC Summary; a consolidated PDF-style output remains an unconfirmed option |

The API must apply audience-appropriate access controls. The whānau-facing output is not expected to expose internal workflow details, restricted licensed scoring constructs, or clinical information that has not been approved for consumer presentation.

**To be developed:** source-form inclusion, clinical and consumer transformations, incomplete-component handling, referral information, corrections, amendments, provenance, release rules, summary versioning and regeneration.

