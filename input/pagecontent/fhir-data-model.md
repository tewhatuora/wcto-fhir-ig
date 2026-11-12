<link rel="stylesheet" href="assets/css/wcto.css">

## WCTO / B4SC Data Model Overview

The following diagram provides a conceptual overview of
the WCTO and B4SC FHIR resources, clinical information
domains, authorship, and workflow lifecycle.

![WCTO B4SC Data Model](wcto-fhir-data-model-overview.png)

**Note:** This is a conceptual illustration.
The detailed FHIR resource relationships and
cardinalities are defined in the technical data model.

> **Status: Draft design.** This page describes candidate FHIR relationships, not a published conformance requirement. Confirm profile definitions, references, and cardinalities against the IG's FSH and the selected FHIR version.

## Resource diagram

The editable source is `diagrams/fhir-data-model.puml`. Render it to `input/images/wcto-fhir-data-model.svg` before enabling the image below.

<!-- Uncomment after the SVG has been generated:
![WCTO / B4SC FHIR resource model](wcto-fhir-data-model.svg)
-->

The resource model separates external authoritative information, people/provider context, WCTO workflow, and clinical information.

## Important relationship corrections

| Topic | Correct modelling approach |
| --- | --- |
| CarePlan and Task | Use `Task.basedOn` to reference the B4SC CarePlan where this workflow design is adopted. Do not claim `CarePlan.activity` directly references a Task. |
| PlanDefinition | A reusable workflow definition is interpreted by orchestration logic to create CarePlan/Tasks. A diagram arrow is **not** an automatic FHIR reference. |
| QuestionnaireResponse and Observation | Observation creation is a *conditional extraction/transformation*, not an automatic reference from QuestionnaireResponse. |
| QuestionnaireResponse version | There is no `QuestionnaireResponse.version` element. `meta.versionId` is server-managed; the `Questionnaire` canonical can be versioned independently. |
| Task state | `Task.status` must use FHIR-defined status codes. More detailed service stages may use `Task.businessStatus` and workflow rules. |
| Clinical completion | `QuestionnaireResponse.status=completed` means the response is completed, not that B4SC has been clinically signed off. |
| Authorship | Use `QuestionnaireResponse.author`/`source` as appropriate, and a reviewed provenance/version strategy for multiple contributions. |
| Immunisation | AIR is authoritative; WCTO should not imply it creates source immunisation records. |
| Cardinalities | Do not invent `1..1` or `0..*` profile constraints without FSH and clinical agreement. |

## Core resource responsibilities

| Resource | Responsibility |
| --- | --- |
| Patient | Child identity, NHI identifier, demographics sourced under authorised arrangements |
| RelatedPerson | Parent, guardian, whānau relationship to child, where represented |
| Practitioner / PractitionerRole / Organization | Provider identity, professional role and organisation; HPI is authoritative where applicable |
| CarePlan | One B4SC CarePlan per child for this use case, checked by the orchestration service |
| Task | Work items, ownership, business status, completion and follow-up |
| Questionnaire / QuestionnaireResponse | Versioned form definitions and captured answers |
| Provenance | Record contribution/review/amendment history where adopted |
| Observation | Selected measured or clinically validated findings |
| Condition / AllergyIntolerance / MedicationStatement | Candidate clinical records only after agreed reconciliation |
| Immunization | AIR-sourced immunisation information |
| ServiceRequest | Referral intent if adopted; not necessarily an electronic referral system |
| DocumentReference / Composition | Generated summaries and structured documents where adopted |

## Further detail

- [Clinical data model](clinical-data-model.html)
- [B4SC data mapping](b4sc-data-mapping.html)
- [Form lifecycle and provenance](form-lifecycle-provenance.html)
- [Data population and security](data-population-security.html)
