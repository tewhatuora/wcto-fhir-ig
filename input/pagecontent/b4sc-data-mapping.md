{% include wcto-style.html %}

# B4SC Business-to-FHIR Data Mapping

> **Proposed mapping register.** The rows below identify candidates, not final approved field-level mappings. Replace illustrative labels with exact approved form `linkId` values.

| Data element / event | Source / contributor | Candidate resource.element | Rule / open decision |
| --- | --- | --- | --- |
| Child NHI | NHI | `Patient.identifier` | Verify identifier system and access |
| Date of birth | NHI | `Patient.birthDate` | Authoritative source |
| GP enrolment | NES | Related service/organisation references as designed | Confirm NES mapping and availability |
| Provider practitioner | HPI | `Practitioner.identifier` | Confirm HPI identifier system |
| Provider role / organisation | HPI | `PractitionerRole.practitioner`, `.organization` | Keep person, role and organisation distinct |
| Whānau relationship | Parent/guardian | `RelatedPerson.patient`, `.relationship` | Verify author identity and linkage |
| Parent form submission | Whānau | `QuestionnaireResponse.author`, `.authored`, `.status` | Submission does not equal clinical approval |
| Nurse review / amendment | Nurse | `Provenance.target`, `.agent`, `.recorded` and version history | Define how original answers are preserved |
| Height / weight | Screening / nurse | `Observation` | Only after units, codes, date and extraction approved |
| Immunisation | AIR | `Immunization` | AIR remains authoritative |
| Referral required | Nurse | `Task` and possibly `ServiceRequest` | Referral reason and closure rule TBD |
| Nurse evaluation complete | Nurse | `Task.status`, `.businessStatus` and orchestration | Final B4SC clinical completion gate |
| Summary produced | Summary service | `DocumentReference` / `Composition` if adopted | Agree clinical and whānau outputs |

## Conditional validation examples (to confirm)

- If referral is required, capture referral reason before recording a referral.
- If vision or hearing screening is incomplete, capture an agreed reason and follow-up decision.
- Where whānau answers are amended by a clinician, retain attribution and original contribution.
- Consent, whānau forms and Vision/Hearing have **no mandatory order**; Nurse Evaluation is the final clinical gate.

## FHIR resource relationships

The following diagram provides context for the candidate resource mappings; it does not make the proposed mappings authoritative.

![B4SC FHIR resource relationships](b4sc-resources.svg)

## Form mapping worksheet

For every item capture: **form | section | linkId | label | type | required/enableWhen | terminology | contributor | source | candidate FHIR resource | candidate element | validation | provenance | summary inclusion | status**.
