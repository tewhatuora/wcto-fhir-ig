---
title: Information Population
---

# Information population

Information population means presenting existing information within a form so that an authorised user can review or validate it instead of entering it again.

Population must be determined by the authentication context, authorisation, purpose of access, source-system rules, data quality, and minimum-necessary principle. Population does not automatically make the form response the authoritative source for that information.

## Draft population matrix

| Information domain | Potential source | Potential use |
|---|---|---|
| Child identity and demographics | NHI | Populate or validate child details |
| Address and contact information | NHI | Populate or validate contact information |
| GP enrolment | NES | Populate GP and practice details |
| Nominated WCTO provider | NES | Display the current provider and support nomination or update where permitted |
| Immunisation history or status | AIR | Populate or validate relevant immunisation information |
| Practitioner identity | HPI or authenticated clinical context | Attribute clinical contributions |
| Practitioner role and designation | HPI or authenticated clinical context | Populate or validate the author's professional context |
| Healthcare organisation | HPI or authenticated clinical context | Populate or validate provider organisation |
| Existing clinical information | PMS or EMR | Populate relevant information where supported and permitted |
| Assignment and workflow status | WCTO Schedule API | Establish the current WCTO workflow and component context |
| Existing form response | WCTO forms or summary capability | Continue an authorised staged or multi-author form |
| Form definition | Form service through the Magic Link API | Retrieve the correct form and version |

## Population rules requiring design

For each populated element, detailed design should specify:

- the authoritative source and retrieval interaction;
- the FHIR path and target questionnaire item;
- whether the value is copied, referenced, displayed as read-only, or offered for confirmation;
- whether the user may edit it;
- what happens when the user reports a different value;
- freshness and effective-time requirements;
- behaviour when the source is unavailable;
- provenance and audit requirements; and
- whether the populated value is included in the submitted `QuestionnaireResponse`.

## Unauthenticated access

Protected information from National Data Services, a PMS, or an EMR must not be automatically populated into an unauthenticated form. Any exceptions would require explicit privacy, security, clinical, and architecture approval and are outside the current draft position.

