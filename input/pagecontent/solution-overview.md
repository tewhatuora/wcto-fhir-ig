---
title: Solution Overview
---

# Solution overview

The proposed integration solution combines existing authoritative national services, new WCTO services, and digital FHIR forms.

## Solution components

| Component | Responsibility |
|---|---|
| National Data Services | Provide authoritative identity, demographic, enrolment, immunisation, practitioner, role, and organisation information. |
| Magic Link API | Launch the correct form and establish the permitted form and workflow context. |
| WCTO Schedule API | Support eligibility or due-list context, provider assignment, component progress, and overall workflow completion. |
| FHIR forms | Capture information contributed by whānau, educators, nurses, and Vision and Hearing Technicians. |
| WCTO Summary API | Provide authorised access to completed forms and approved consolidated summaries. |
| PMS, EMR, and portals | Launch forms, supply permitted context, and consume completed information or summaries. |

## Logical service relationship

1. A national eligibility or scheduling process identifies a child who may be due for a WCTO contact.
2. The WCTO Schedule API records or exposes the applicable workflow and assignment context.
3. A clinical system, consumer portal, or approved invitation workflow requests the relevant form through the Magic Link API.
4. The launch context determines whether authorised source information may populate the form.
5. The applicable person completes or contributes to the form.
6. Submission creates or updates a `QuestionnaireResponse` and may create or update associated clinical or administrative resources.
7. The applicable component status is updated through the WCTO Schedule API.
8. Completed forms and approved summaries become available through the WCTO Summary API.

## FHIR approach

All digital forms are expected to use `Questionnaire` and `QuestionnaireResponse` for form definition and response capture. Additional FHIR resources may represent clinical, administrative, consent, referral, provenance, or summary information associated with a completed form.

The final resource mappings and profiles remain subject to detailed FHIR design.

