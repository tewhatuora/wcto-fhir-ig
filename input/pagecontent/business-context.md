# Business Context

## Overview

Well Child Tamariki Ora (WCTO) supports a range of child health activities delivered across different healthcare settings, workforces and provider organisations.

The future digital approach is intended to allow healthcare providers to continue working within their existing Practice Management System (PMS) or Electronic Medical Record (EMR), while interacting with national digital services using APIs and structured FHIR artefacts.

The purpose of this Implementation Guide is to define a common FHIR-based integration pattern that can support WCTO services consistently across provider systems.

The B4 School Check (B4SC), also referred to as WCTO Core Contact 8, is the initial use case.

Future WCTO contacts may reuse the same common model where appropriate.

## B4 School Check

B4SC is the final universal WCTO contact and is generally delivered around the age of four.

The B4SC may include:

- consent and participation;
- whānau information;
- Early Childhood Education information;
- nursing assessment;
- vision and hearing activity;
- immunisation information;
- other relevant child health information;
- activity and overall completion tracking.

Different components may be completed by different workforces or provider organisations.

The digital model therefore needs to support both:

- the overall status of the B4SC; and
- the status and ownership of its individual activities.

## Common WCTO Service Model

The working model separates the reusable definition of a WCTO service from the individual health event created for a child.

```text
Health Service Definition
PlanDefinition
        ↓
Eligible Child Cohort
Group
        ↓
Scheduled Health Event
CarePlan
        ↓
Required / Outstanding Activities
Task
        ↓
Structured Assessment
Questionnaire
        ↓
QuestionnaireResponse
        ↓
Task status updated
        ↓
Overall health event status updated
```

Supporting concepts include:

```text
CareTeam / Task.owner
        ↓
Assignment / responsibility
```

and:

```text
Consent
   ↓
Participation
```

## Health Service Definition

`PlanDefinition` is the current candidate for representing the reusable definition of a WCTO health service.

For B4SC this may describe the activities expected to make up the service, such as:

- Consent;
- Nursing Assessment;
- Whānau Assessment;
- Early Childhood Education Assessment;
- Vision and Hearing.

The detailed use of PlanDefinition remains to be confirmed.

## Scheduled Health Event

`CarePlan` is the current candidate for representing the scheduled or active WCTO health event for an individual child.

For example:

```text
PlanDefinition
"B4 School Check"
        ↓
CarePlan
"B4 School Check for Child A"
```

The CarePlan may provide the overall context for:

- the child;
- the WCTO service;
- required activities;
- provider responsibility;
- activity status;
- overall health event status.

## Cohort and Eligibility

Eligibility is expected to be a key part of the B4SC workflow.

Current working requirements indicate that:

- eligibility is based primarily on the child approaching or turning four years old;
- children are included regardless of citizenship or health eligibility status;
- cohort generation may need to occur approximately two to three months before the child's fourth birthday to support service preparation.

FHIR `Group` is the current candidate for representing the eligible population.

The final cohort generation, ownership and maintenance model remains to be confirmed.

## Activities

A WCTO health event may consist of multiple individual activities.

`Task` is the current candidate for representing required or outstanding activities.

For B4SC this may include:

```text
CarePlan
   │
   ├── Task: Consent
   ├── Task: Nursing Assessment
   ├── Task: Whānau Assessment
   ├── Task: ECE Assessment
   └── Task: Vision and Hearing
```

Each activity may have:

- its own status;
- its own owner;
- an associated assessment;
- completion information.

## Structured Assessments

FHIR Forms are expected to support structured WCTO assessments.

The primary FHIR resources are:

- `Questionnaire`
- `QuestionnaireResponse`

The Questionnaire defines the assessment.

The QuestionnaireResponse records the completed answers.

The current B4SC assessment areas are:

- Consent;
- Nursing Assessment;
- Vision and Hearing;
- Whānau Assessment;
- Early Childhood Education Assessment.

Additional specialised assessments may be introduced where required.

## Assessment Sequencing

Consent is expected to occur before the remaining B4SC assessment activities.

After consent, the remaining assessments should generally be able to occur in any order.

```text
Consent
   ↓
   ├── Nursing Assessment
   ├── Vision and Hearing
   ├── Whānau Assessment
   └── ECE Assessment
```

The Implementation Guide should not introduce additional sequencing unless supported by a confirmed clinical or business requirement.

## Assignment and Responsibility

Different WCTO activities may be completed by different providers or workforces.

Responsibility may therefore need to be represented at more than one level.

Potential representation includes:

- `CareTeam` for overall responsibility;
- `Task.owner` for responsibility for an individual activity.

The final relationship between CareTeam, Task ownership and provider nomination remains to be confirmed.

## Consent and Participation

`Consent` is the current candidate resource for representing participation or consent where formal FHIR representation is required.

For B4SC, consent is expected to occur before the remaining assessment activities.

The detailed relationship between:

- FHIR Consent;
- Questionnaire-based consent capture;
- programme participation status

remains to be confirmed.

## National Digital Services

### NHI

NHI services may provide authoritative information relating to:

- child identity;
- demographics;
- contact information.

Authoritative national information should be reused where appropriate rather than unnecessarily duplicated.

### NES

NES may support:

- enrolment information;
- provider nomination;
- relevant provider assignment information.

The relationship between NES nomination and the WCTO assignment model remains to be confirmed.

### AIR

The Aotearoa Immunisation Register may support:

- retrieval of immunisation status;
- recording immunisations where relevant to the WCTO interaction.

Existing AIR capability should be reused rather than duplicating the national immunisation record.

### Provider Systems

Healthcare providers are expected to continue working through their existing PMS or EMR systems.

Provider systems may interact with national WCTO services through APIs and structured FHIR Forms.

### Health NZ Coordinator Capability

A Health New Zealand coordinator capability may provide visibility across provider boundaries.

Potential uses include:

- viewing eligible children;
- monitoring scheduled WCTO events;
- viewing outstanding activities;
- viewing provider assignment;
- monitoring component and overall completion status.

The detailed coordinator capability remains to be confirmed.

## Status Tracking

Status may exist at multiple levels.

| Level | Potential FHIR Representation |
|---|---|
| Overall health event | `CarePlan.status` |
| Individual activity | `Task.status` |
| Assessment | `QuestionnaireResponse.status` |
| Participation | `Consent.status` |

The final business rules for calculating overall WCTO or B4SC completion remain to be confirmed.

## Out of Scope

The following capabilities are outside the current scope of this Implementation Guide:

- appointment and booking management;
- referral workflow management.

These capabilities may continue to be managed within provider systems or other existing services.

The IG may eventually record information indicating that follow-up activity occurred, but it does not currently define the end-to-end booking or referral workflow.

## Future WCTO Use

Although B4SC is the initial implementation, the common model is intended to be reusable.

Future WCTO contacts may reuse:

- `PlanDefinition` for health service definition;
- `Group` for cohort;
- `CarePlan` for a child-specific health event;
- `Task` for required activities;
- `Questionnaire` and `QuestionnaireResponse` for structured assessments;
- `CareTeam` and `Task.owner` for assignment;
- `Consent` for participation.

Each WCTO contact may define its own:

- eligibility rules;
- required activities;
- assessments;
- workforce requirements;
- assignment rules;
- completion rules;
- status logic.

## Areas to Confirm

The following areas remain to be confirmed:

- cohort generation and ownership;
- final use of Group;
- relationship between PlanDefinition and CarePlan;
- CarePlan creation and completion rules;
- required Task types;
- Task status lifecycle;
- assignment using CareTeam and Task.owner;
- relationship with NES provider nomination;
- Consent representation;
- Questionnaire contents;
- QuestionnaireResponse completion rules;
- overall WCTO completion rules;
- reuse of existing NZ and Health New Zealand FHIR artefacts.

## Status

This page represents the current working WCTO business context.

It will evolve as programme, clinical and technical requirements are confirmed.