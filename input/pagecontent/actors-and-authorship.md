---
title: Actors and Authorship
---

# Actors and authorship

The WCTO workflow involves multiple people and systems. The identity and authority of a person accessing a form are distinct from the authorship of information recorded in that form.

## Human actors

| Actor | Expected responsibilities |
|---|---|
| Parent, caregiver, or whānau member | Provide consent-related information, child health history, developmental concerns, and parent or caregiver assessments. |
| Nurse | Review whānau-provided information, complete clinical assessment components, record findings, advice, referrals, and follow-up, and finalise applicable multi-author forms. |
| Vision and Hearing Technician | Complete vision and hearing screening findings, outcomes, retest requirements, and referrals. |
| ECE educator or teacher | Complete the educator-specific behavioural and emotional assessment in the SDQ Teacher/ECE Form. |
| Coordinator | Support assignment, reassignment, component tracking, and operational follow-up, subject to role-based access. |
| Other authorised clinician | View completed forms or appropriate summaries and use the information within the authorised care context. |

## System actors

| Actor | Expected responsibilities |
|---|---|
| PMS or EMR | Establish an authenticated clinical launch, supply permitted context, and consume relevant completed information. |
| Consumer or clinical portal | Authenticate a user where supported, establish the applicable child context, launch a form, and display authorised results. |
| Approved invitation service | Distribute controlled links through email, SMS, or another approved communication channel. |
| National Data Services | Provide authoritative information through the relevant national API. |
| WCTO Schedule API | Provide workflow, assignment, and component-status context. |
| WCTO Summary API | Provide completed forms and approved summaries to authorised consumers. |

## Multi-author model

The following forms are expected to support staged or multi-author completion:

- Consent Form;
- Health History and Nursing Assessment Form; and
- PEDS-R Form.

A multi-author form may be started by whānau and later retrieved by an authorised healthcare professional. Each contribution should remain attributable to its author and should not be silently presented as if entered by another participant.

The detailed technical pattern for recording item-level authorship, review, correction, attestation, and provenance remains to be confirmed.

## Author representation

Candidate FHIR resources include `Patient`, `RelatedPerson`, `Practitioner`, `PractitionerRole`, `Organization`, and `Provenance`. The appropriate representation depends on the contributor and context.

The representation of an ECE educator or teacher requires specific confirmation during detailed FHIR design.

