<link rel="stylesheet" href="assets/css/wcto.css">

# Data Population and Security Boundaries

> **Draft security and source model.** This page documents proposed boundaries; implementation requires privacy, access-control and clinical approvals.

| Data | Candidate authoritative source | Notes |
| --- | --- | --- |
| NHI, demographic identity | NHI | Authorised lookup only |
| GP enrolment | NES | Confirm actual available fields |
| Practitioner, role, organisation | HPI | Maintain separate identity and role references |
| Immunisation | AIR | Source system remains authoritative |
| Existing clinical history | PMS/EMR | Subject to integration, permissions and data provenance |
| B4SC workflow state | WCTO scheduler / FHIR workflow | CarePlan and Task business rules |
| Previous form responses | WCTO form store | Access to prior submissions must be authorised |

## Access boundary

- Authenticated clinical workflows may use approved national-service and clinical-system prepopulation, according to role, purpose, consent and authorisation.
- Unauthenticated or insufficiently authorised magic-link access must **not** expose protected data through prepopulation. Manual entry may be permitted according to the access model.
- A magic link itself can act as an access credential: assess its claims, expiry, scope and server-side authorisation before classifying it as unauthenticated.
- Never assume access to NHI, NES, HPI, AIR or PMS/EMR simply because a user can open a form.

## Design checks

Confirm the exact source and access decision for each field; capture provenance for prepopulated values; apply least-privilege access; protect generated summaries; and audit retrieval, amendment and publication.
