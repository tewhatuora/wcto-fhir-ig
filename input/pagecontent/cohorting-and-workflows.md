---
title: Cohorting and Workflows
---

# Cohorting and workflows

**Status: Draft for review**

## Cohorting and eligibility

An implementation-neutral cohorting capability is expected to receive a scheduled NHI-derived population input and apply approved B4SC business rules. The working rule includes children recorded in NHI who are turning four; citizenship is not used as an eligibility filter.

The complete specification must define the age window, due date, refresh cycle, exclusions, incomplete or merged identities, deceased and overseas status, previous completion, regional movement, duplicates, manual review, reconciliation, audit, failures, and reruns.

## End-to-end workflow

1. The cohorting capability identifies children potentially due for Core Contact 8.
2. The Schedule API exposes or records the due-child context.
3. A coordinator application uses approved NHI and NES information to support provider assignment or reassignment.
4. A PMS/EMR may read permitted schedule information directly; NES self-nomination remains an unconfirmed option.
5. A PMS, portal, or invitation workflow requests the appropriate form through the Magic Link API.
6. An authenticated launch may use approved population; an unauthenticated launch presents a blank form.
7. Whānau, nurse, educator, or technician completes the applicable contribution.
8. The system creates or updates the `QuestionnaireResponse` and any approved derived or associated resources.
9. The component and overall workflow states are updated through the approved direct or event-driven mechanism.
10. Completed forms and summaries become available through the Summary API.

## Status dimensions

| Dimension | Candidate concepts |
|---|---|
| Eligibility | due, not-due, pending, excluded |
| Assignment | unassigned, assigned, reassigned |
| Overall workflow | due, in-progress, returned, completed, closed |
| Form component | not-started, in-progress, completed, returned-for-update, unable-to-complete |

FHIR workflow status and programme business status should remain separate where meanings differ. Every state requires an approved definition, entry trigger, actor, evidence, transitions, reversibility, reason, audit event, and effect on summaries.

## Multi-author workflow

Whānau information is preserved, then linked to the clinician-reviewed or final response. The model must not make a clinician appear to have authored a whānau answer or whānau appear to have authored a clinical interpretation.

## Exceptions to define

Source-service outages, invalid or expired links, incorrect recipients, abandoned drafts, reassignment during completion, duplicates, conflicting updates, consent decline or withdrawal, unscorable assessments, corrections, and summary regeneration require explicit flows.

