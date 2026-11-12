{% include wcto-style.html %}

# Developer Guide

Start with [B4SC Workflow](b4sc-workflow.html), then [Data Model](data-model.html), [Profiles](profiles.html), [Forms](forms.html) and [FHIR Artifacts](artifacts.html).

| Need | Where |
|---|---|
| Understand the process | [B4SC workflow](b4sc-workflow.html) |
| Find FHIR elements and constraints | [Profiles](profiles.html) |
| See linked resources | [Examples](examples.html) |
| Find form definitions | [Forms](forms.html) |
| Integrate with services | [B4SC APIs](apis.html) |
| Review unresolved design | [Open Decisions](decisions-and-tests.html) |
| Update and build this IG | [README](https://github.com/tewhatuora/wcto-fhir-ig) (repository location to verify) |

**Draft:** Final API contracts, authentication, searches and CapabilityStatements are not approved. Do not infer production endpoints from examples.


## Resource lifecycle and FHIR interactions

| Purpose | FHIR interaction (illustrative) | Required design behaviour |
|---|---|---|
| Find active B4SC episode | `GET CarePlan?patient={id}&category={b4sc-code}` | Server support and search parameters must be verified; use stable identifiers and concurrency protection |
| Create B4SC CarePlan | `POST CarePlan` | Idempotency/retry strategy required |
| Retrieve assessment work | `GET Task?based-on=CarePlan/{id}` | Search capabilities and authorisation must be confirmed |
| Submit form | `POST QuestionnaireResponse` or supported update | Preserve response version and contributor identity |
| Mark work complete | `PUT/PATCH Task/{id}` via orchestration | Only after corresponding business completion criteria are satisfied |
| Produce summary | WCTO Summary API (contract TBD) | Do not assume that a FHIR Composition or Bundle is mandatory until agreed |

**FHIR references:** `Task.basedOn` points to the CarePlan; `Task.for` and `CarePlan.subject` point to the child. `QuestionnaireResponse.questionnaire` identifies the form canonical and `QuestionnaireResponse.subject` identifies the child. Link responses to work items using the agreed Task input/output, Provenance or other supported mechanism; do not invent a non-standard QuestionnaireResponse field.

## Implementation checks

- Authorisation: enforce child-context and user-role access for all API reads and writes; magic links must be scoped, short-lived and revocable.
- Multi-author forms: model separate contributions or controlled amendments with provenance and audit; do not silently overwrite earlier authors' answers.
- Source systems: NHI for identity, NES for enrolment, HPI for provider identity, AIR for immunisations, subject to authorised access.
- Forms: preserve original wording, codes, item `linkId`s, licensing and validation logic before declaring a Questionnaire clinically ready.
- Terminology: use authoritative code systems and value sets; never assume provisional codes are nationally endorsed.
- Failure handling: repeat submission, partial completion, lost callback, duplicate event, reassignment, correction and summary regeneration must be tested.
