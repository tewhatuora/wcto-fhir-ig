# WCTO Business Rules

## Overview

This page records the current working business rules for Well Child Tamariki Ora digital workflows.

B4SC is the initial use case.

These rules are preliminary and will be refined as programme, clinical and technical requirements are confirmed.

## Eligibility

For B4SC:

- eligibility is based primarily on the child approaching or turning four years old;
- children are included regardless of citizenship or health eligibility status;
- cohort generation may need to occur approximately two to three months before the child's fourth birthday.

The detailed eligibility mechanism remains to be confirmed.

## Cohort Generation

FHIR `Group` is the current candidate for representing an eligible child cohort.

The following remain to be confirmed:

- who generates the cohort;
- who owns the cohort;
- how frequently it is refreshed;
- how children enter the cohort;
- how children leave the cohort;
- how demographic changes affect membership;
- whether Group is the final FHIR representation.

## Health Service Definition

`PlanDefinition` may define the reusable WCTO health service.

A PlanDefinition may identify:

- required activities;
- optional activities;
- sequencing requirements;
- expected assessments;
- completion rules.

For B4SC, the current working activities include:

- Consent;
- Nursing Assessment;
- Whānau Assessment;
- Early Childhood Education Assessment;
- Vision and Hearing.

## Scheduled Health Event

`CarePlan` may represent the scheduled or active WCTO health event for an individual child.

The CarePlan may provide context for:

- the child;
- the relevant WCTO service;
- required activities;
- assigned providers;
- individual activity status;
- overall status.

The rules for creation, activation and completion of the CarePlan remain to be confirmed.

## Consent

Consent should occur before the remaining B4SC assessment activities.

If consent is declined, downstream behaviour must follow the agreed programme rules.

Potential representation includes:

- FHIR `Consent`;
- Questionnaire-based consent capture;
- programme participation status.

The final approach remains to be confirmed.

## Assessment Ordering

After consent, the remaining B4SC assessments should generally be able to occur in any order.

These include:

- Nursing Assessment;
- Vision and Hearing;
- Whānau Assessment;
- Early Childhood Education Assessment.

The IG should not impose additional sequencing unless a confirmed clinical or business requirement requires it.

## Activity Tracking

Required and outstanding WCTO activities may be represented using `Task`.

Each Task may contain:

- activity status;
- owner;
- relationship to the CarePlan;
- associated assessment;
- completion information.

The detailed Task lifecycle remains to be confirmed.

## Assignment

Assignment may occur at more than one level.

Potential representation includes:

- `CareTeam` for overall health event responsibility;
- `Task.owner` for an individual activity.

The relationship between provider nomination, CareTeam and Task ownership remains to be confirmed.

## Assessment Completion

An assessment may be considered completed when the relevant `QuestionnaireResponse` satisfies the programme-specific completion requirements.

Potential considerations include:

- required questions completed;
- required clinical review performed;
- QuestionnaireResponse assigned the appropriate status;
- associated Task updated.

The exact rules will be defined for each assessment.

## Overall Event Completion

The overall WCTO health event may be considered complete when all required business conditions have been met.

Potential considerations include:

- consent requirements satisfied;
- all mandatory Tasks completed;
- required assessments completed;
- optional activities not blocking completion;
- declined activities handled appropriately;
- unable-to-complete activities handled appropriately.

The final completion rules remain to be confirmed.

## Status Tracking

| Business Level | Potential FHIR Representation |
|---|---|
| Overall health event | `CarePlan.status` |
| Individual activity | `Task.status` |
| Assessment | `QuestionnaireResponse.status` |
| Participation | `Consent.status` |

FHIR resource status should not automatically be assumed to represent programme-level business status without an agreed mapping.

## Authoritative Data

Where information is already available from an authoritative national source, the WCTO solution should avoid creating unnecessary duplicate records.

Examples include:

- NHI for identity and demographics;
- NES for relevant enrolment and provider nomination information;
- AIR for national immunisation information.

The exact source-of-truth rules for individual data elements remain to be confirmed.

## Out of Scope

The following are outside the current scope:

- appointment and booking management;
- referral workflow management.

These activities may continue to be managed by provider systems or other existing services.

## Open Questions

The following rules require further confirmation:

- Who determines eligibility?
- Who creates and maintains the cohort?
- When is a CarePlan created?
- What causes a CarePlan to become active?
- Which Tasks are mandatory?
- What Task statuses are required?
- What happens when consent is declined?
- What happens when an assessment cannot be completed?
- What constitutes a completed QuestionnaireResponse?
- How is overall completion calculated?
- How are partially completed WCTO events represented?
- How are provider assignment changes handled?