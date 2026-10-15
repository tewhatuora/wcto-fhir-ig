---
title: National Data and Population
---

# National data and information population

**Status: In development**

National Data Services provide authoritative information and may be accessed only within an authenticated, authorised, and appropriate purpose-of-use context.

## National services

| Service | WCTO use | Candidate FHIR resources |
|---|---|---|
| NHI | Child identity, demographics, address, and contact information | `Patient` |
| NES | Enrolment, GP, nominated provider, and organisation information | Resources defined by the authoritative NES IG |
| AIR | Relevant immunisation history or status | `Immunization` and resources defined by the authoritative AIR IG |
| HPI | Practitioner, role, designation, and healthcare organisation | `Practitioner`, `PractitionerRole`, `Organization` |

The scheduled NHI-derived population input used for cohorting is distinct from an interactive NHI API call used for an individual child. The implementing cohorting system, extract content, schedule, transfer, controls, and reconciliation require approval.

## Population matrix

| Information | Potential source | Potential use |
|---|---|---|
| Due-child cohort | Approved cohorting capability | Establish scheduling context |
| Child details and contacts | NHI | Populate or validate child information |
| GP and provider enrolment | NES | Display or validate provider information |
| Immunisation information | AIR | Populate or validate relevant status/history |
| Practitioner and organisation | HPI or authenticated context | Attribute professional contributions |
| Existing clinical information | PMS or EMR | Populate approved items |
| Assignment and progress | Schedule API | Establish current workflow context |
| Existing response | WCTO forms capability | Continue authorised staged completion |
| Form definition | Form service through the Magic Link API | Retrieve the correct form version |

## Population rules

For every populated item, define the source, retrieval interaction, FHIR path, target `linkId`, freshness, editability, confirmation behaviour, source-unavailable behaviour, provenance, audit, and whether the value becomes part of the `QuestionnaireResponse`.

Population does not make the response authoritative for source-system data. Protected information from NHI, NES, AIR, HPI, a PMS, or an EMR must not be automatically populated into an unauthenticated form.

Before publication, insert the approved canonical links to the authoritative national-service Implementation Guides.

