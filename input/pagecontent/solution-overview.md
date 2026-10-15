---
title: Solution Overview
---

# Solution overview

**Status: Draft for review**

The proposed integration solution combines existing authoritative national services, new WCTO services, and digital FHIR forms.

## Solution components

| Component | Responsibility |
|---|---|
| Cohorting capability | Apply approved B4SC eligibility rules to a scheduled NHI-derived population extract and identify children turning four who may be due for Core Contact 8. The implementing system is not yet confirmed. |
| National Data Services | Provide authoritative identity, demographic, enrolment, immunisation, practitioner, role, and organisation information. |
| Coordinator application | Present due children and relevant NHI and NES information to authorised coordinators and support provider assignment or reassignment. |
| Magic Link API | Launch the correct form and establish the permitted form and workflow context. |
| WCTO Schedule API | Support eligibility or due-list context, provider assignment, component progress, and overall workflow completion. |
| FHIR forms | Capture information contributed by whānau, educators, nurses, and Vision and Hearing Technicians. |
| WCTO Summary API | Provide authorised access to completed forms and approved consolidated summaries. |
| PMS, EMR, and portals | Retrieve permitted schedule information, launch forms, supply permitted context, and consume completed information or summaries. |

## Logical service relationship

1. The cohorting process applies the approved eligibility rules to a scheduled NHI-derived population extract to identify children turning four who may be due for Core Contact 8.
2. The WCTO Schedule API records or exposes the due-child and workflow context.
3. An authorised coordinator uses the coordinator application to retrieve relevant NHI and NES information and assign or reassign a provider. A PMS or EMR may also read permitted schedule information directly.
4. Provider nomination through NES may offer an additional assignment route, subject to detailed design and activation of that currently unused capability. The meeting did not confirm a single authoritative source for assignment.
5. The assigned provider becomes responsible for progressing the applicable B4SC workflow.
6. A clinical system, consumer portal, or approved invitation workflow requests the relevant form through the Magic Link API.
7. The launch context determines whether authorised source information may populate the form.
8. The applicable person completes or contributes to the form.
9. Starting or saving a form may move the relevant component into an in-progress state, according to the approved status rules.
10. Submission creates or updates a `QuestionnaireResponse` and may create or update associated clinical or administrative resources, including referral tasks where required.
11. The applicable component and overall workflow status are updated through the WCTO Schedule API.
12. Completed forms and approved clinical and whānau summaries become available through the WCTO Summary API. A consolidated PDF-style output may also be generated if approved.

## FHIR approach

All digital forms are expected to use `Questionnaire` and `QuestionnaireResponse` for form definition and response capture. Additional FHIR resources may represent clinical, administrative, consent, referral, provenance, or summary information associated with a completed form.

The final resource mappings and profiles remain subject to detailed FHIR design.

