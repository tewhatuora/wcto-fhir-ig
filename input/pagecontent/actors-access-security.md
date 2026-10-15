---
title: Actors, Access and Security
---

# Actors, access and security

**Status: In development**

## Human actors

| Actor | Expected responsibility |
|---|---|
| Parent, caregiver, or whānau member | Provide consent-related information, health history, concerns, and parent/caregiver assessments. |
| Nurse | Review whānau information, complete clinical components, record findings, advice, follow-up, and finalise applicable forms. |
| Vision and Hearing Technician | Record screening findings, outcomes, retest requirements, and follow-up decisions. |
| ECE educator or teacher | Complete the educator-specific SDQ assessment. |
| Coordinator | Support assignment, reassignment, progress tracking, and operational follow-up. |
| Other authorised clinician | View completed forms or summaries within an authorised care context. |

## System actors

PMS/EMR systems, coordinator and consumer applications, invitation services, National Data Services, and the WCTO Schedule and Summary APIs participate according to their approved responsibilities and access rights.

## Authorship and multi-author completion

Consent, Health History and Nursing Assessment, and PEDS-R are expected to support staged completion. The working model preserves the whānau response and links it to the authorised clinician-reviewed or final response. Author, role, organisation, time, source, confirmation, correction, and derivation must remain traceable.

Candidate author resources include `RelatedPerson`, `Practitioner`, `PractitionerRole`, `Organization`, and `Provenance`. The educator representation requires a specific decision and must reflect the real identity model rather than forcing an educator into a clinical role.

## Authenticated access

An authenticated launch securely establishes the user, child, and workflow context. Subject to authorisation and purpose of use, it may populate information from the launching application, National Data Services, the Schedule API, or an existing response.

## Unauthenticated access

An approved email or SMS link may launch a blank form without returning protected source information. The submitted response must be associated with the intended invitation and workflow through an approved secure matching process.

## Required controls

- least-privilege access and minimum-necessary disclosure;
- independent validation of identity, child, role, organisation, and workflow context;
- secure token generation, storage, expiry, revocation, reuse, and replay protection;
- protection against forwarding, guessing, link leakage, and incorrect recipients;
- no sensitive data in URLs, logs, analytics, browser history, or referrer headers;
- audit of launch, access, submission, correction, status transition, derivation, and summary generation;
- protection of licensed content and restricted scores; and
- privacy impact, security risk, threat, clinical-safety, and information-governance review before production.

Detailed scopes, roles, claims, token rules, retention, disposal, incident response, and subject-access requirements are **to be developed**.

