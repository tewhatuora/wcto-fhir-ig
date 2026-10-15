---
title: Assumptions and Decisions
---

# Assumptions and decisions

**Status: Draft for review**

The following matters require confirmation through business, clinical, architecture, privacy, security, licensing, terminology, and technical governance.

| Topic | Current position or decision required |
|---|---|
| Cohorting | A scheduled NHI-derived population input is expected; the implementing system, full eligibility rules, schedule, ownership, exceptions, and reconciliation are not confirmed. |
| Initial eligibility | Children recorded in NHI who are turning four are included in the working rule; citizenship is not a filter. |
| Assignment | The authoritative record and synchronisation among the coordinator application, NES, and Schedule API require a decision. |
| Schedule representation | `Task` or another workflow representation and the transition model require approval. |
| Status | Assignment, overall workflow, form-component, and referral-task states remain separate dimensions. |
| Magic Link | Service ownership, token security, matching, expiry, reuse, and recovery require detailed design. |
| Forms | `Questionnaire` and `QuestionnaireResponse` are the capture mechanism; extraction and derived-resource mappings are to be developed. |
| Multi-author | Preserve the whānau response and link the clinician-reviewed/final response; detailed lineage and item-level provenance remain open. |
| Consent | Scope, authority, finalisation, withdrawal, enforcement, and relation to Schedule status require approval. |
| Licensed instruments | PEDS-R and SDQ reproduction, scoring, presentation, storage, and distribution require licence confirmation. |
| Educator identity | Authentication, organisation attribution, and FHIR author representation are unresolved. |
| Summaries | Content, FHIR representation, audience, approval, withholding, amendment, and regeneration rules require design. |
| Referral boundary | Provider-facing tasks belong to the clinical workflow layer; the solution does not build an external e-referral service. |
| Case closure | Referral-task completion and B4SC closure are separate and require pathway-specific rules. |
| PDF | PDF summaries remain a possible future phase, not an initial requirement. |
| Conformance | Profiles, terminology, Must Support rules, examples, validation, test cases, and assurance are to be developed. |

## Next design outputs

1. Confirm service, actor, access, form, summary, and information catalogues.
2. Approve cohorting, assignment, status, exception, and closure rules.
3. Confirm form sources, licences, population matrices, and multi-author lineage.
4. Define API contracts, profiles, extensions, terminology, mappings, examples, and tests.
5. Complete privacy, security, clinical-safety, accessibility, information-governance, and implementation review.

