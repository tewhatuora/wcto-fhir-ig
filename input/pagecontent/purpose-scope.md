<link rel="stylesheet" href="assets/css/wcto.css">

# Purpose and Scope

## Purpose

WCTO Digital Services supports child health contacts through reusable APIs, structured assessments and coordinated workflows. **Before School Check (B4SC)** is the initial use case.

## Scope

### Initial B4SC scope

- Identify children approaching age four and re-evaluate changes in eligibility. **Cohort source and update mechanism are to be confirmed.**
- Create or reuse a B4SC CarePlan and track work using Tasks.
- Support coordinator and PMS/EMR scheduling, assignment and progress views.
- Capture forms, clinical and whānau summaries, and referral follow-up.

### Existing national data services

- [National Health Index (NHI) API](https://fhir-ig.digital.health.nz/nhi/): child identity and demographics.
- [National Enrolment Service (NES) API](https://fhir-ig.digital.health.nz/nes/): enrolment and nomination where supported.
- [Aotearoa Immunisation Register (AIR)](https://fhir-ig.digital.health.nz/air/): immunisation information.
- [Health Provider Index (HPI) API](https://fhir-ig.digital.health.nz/hpi/): provider and organisation identity.

National API links must be checked against the approved published specifications before release.

### Proposed WCTO digital services

- [WCTO Schedule API](apis.html#schedule-api): due dates, status and progress.
- [Magic Link API](apis.html#magic-link-api): authorised form launch on request.
- [WCTO Summary API](apis.html#summary-api): clinical and whānau summaries.
- [Scheduler and Coordinator workflow](b4sc-workflow.html): orchestration, assignment and follow-up.

### Forms and consumers

See the [single form catalogue](forms.html) and [B4SC workflow](b4sc-workflow.html). PMS/EMR systems and authorised coordinator users are proposed consumers.

### Scope boundaries

Clinical content, licences, API contracts, security controls and deployment ownership require confirmation. Snowflake reporting and school outcome sharing are future integrations, not initial deliverables.
