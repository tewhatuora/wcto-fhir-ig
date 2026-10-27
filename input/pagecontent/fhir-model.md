{% include wcto-style.html %}

The FHIR model is still being developed. This page records current candidate resources without presenting them as final conformance requirements.

### Confirmed Form Mechanism

- `Questionnaire` for form definition
- `QuestionnaireResponse` for form responses

### Candidate Resource Mapping

| Information / capability | Candidate FHIR resource(s) | Status |
|---|---|---|
| Form definition | `Questionnaire` | Current direction |
| Form response | `QuestionnaireResponse` | Current direction |
| Child | `Patient` | Candidate |
| Parent / caregiver | `RelatedPerson` | Candidate |
| Practitioner | `Practitioner`, `PractitionerRole` | Candidate |
| Provider organisation | `Organization` | Candidate |
| Consent | `Consent` | Candidate |
| Clinical findings | `Observation` and other domain resources | Candidate |
| Conditions | `Condition` | Candidate |
| Allergies | `AllergyIntolerance` | Candidate |
| Medications | `MedicationStatement` | Candidate |
| Immunisation | `Immunization` | Candidate |
| Referral information | `ServiceRequest` | Candidate |
| Schedule / workflow | `Task` or another workflow resource | **To be confirmed** |
| Clinical / whānau summary | `Composition`, potentially `Bundle` | **Provisional** |

Relevant clinical resources may be generated from, referenced by or associated with a `QuestionnaireResponse`.

> **In progress:** Profiles, extensions, terminology, extraction rules and invariants require detailed design.
