---
title: WCTO API Services
---

# WCTO API services

The following services are proposed for the WCTO digital solution. Their final names, responsibilities, FHIR operations, and API contracts remain subject to detailed design and endorsement.

## Magic Link API

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

## WCTO Schedule API

The WCTO Schedule API is intended to identify or expose children due for a WCTO contact and manage assignment, reassignment, component progress, and overall completion.

| Attribute | Draft definition |
|---|---|
| Purpose | Support due-list management, provider assignment, component tracking, and completion |
| Information domains | Eligibility, due status, assignment, reassignment, component status, and overall workflow status |
| Candidate FHIR resources | `Task` or another appropriate workflow representation, to be confirmed |
| Read interactions | Retrieve due children, assignment, component status, and overall status |
| Update interactions | Assign or reassign a provider and update component or overall status |
| Form interaction | Submission or finalisation of a relevant form may update the corresponding component status |

### Draft status concepts

The final status model must distinguish workflow status, assignment status, and form-component status rather than placing unrelated states in one list.

| Status group | Candidate concepts |
|---|---|
| Eligibility or due state | Due; not due; eligibility to be confirmed |
| Assignment state | Unassigned; assigned; reassigned |
| Overall workflow state | Not started; in progress; returned; closed; completed |
| Form component state | Not started; in progress; completed; returned for update; unable to complete |

Component status is expected for the Health History and Nursing Assessment, PEDS-R, SDQ Parent, SDQ Teacher/ECE, and Vision and Hearing components. Whether Consent is modelled as a component, prerequisite, or separate state requires confirmation.

FHIR workflow status and business status should be designed separately. Final codes, transitions, permissions, and terminal-state rules require business and technical approval.

## WCTO Summary API

The WCTO Summary API provides authorised access to completed individual forms and generated WCTO summaries.

| Attribute | Draft definition |
|---|---|
| Purpose | Share completed assessment information and approved consolidated summaries |
| Information domains | Completed forms, assessment outcomes, referrals, recommendations, completion status, and next steps |
| Candidate FHIR resources | `QuestionnaireResponse`, `Observation`, `Consent`, `ServiceRequest`, `Composition`, and `Bundle`, subject to confirmation |
| Key consumers | PMS, EMR, clinical portals, consumer portals, and authorised WCTO services |
| Expected outputs | Completed individual forms, Clinical B4SC Summary, and Whānau B4SC Summary |

The API must apply audience-appropriate access controls. The whānau-facing output is not expected to expose internal workflow details, restricted licensed scoring constructs, or clinical information that has not been approved for consumer presentation.

