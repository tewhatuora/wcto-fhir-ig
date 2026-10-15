---
title: Architecture
---

# Architecture

**Status: Draft for review**

The proposed architecture connects an implementation-neutral cohorting capability, a provider-facing coordinator workflow, national information services, digital FHIR forms, and summary services. B4SC is the initial use case, but shared capabilities should remain reusable for other WCTO contacts.

## Architectural principles

| Principle | Description |
|---|---|
| Reuse national services | NHI, NES, AIR, and HPI remain authoritative for their information domains. |
| Reference rather than replicate | This guide links to authoritative national specifications instead of copying changing normative content. |
| Capture information once | Reuse existing information only when identity, purpose, authorisation, and source rules permit it. |
| Separate forms from workflow | Forms capture assessment information; cohorting, assignment, component progress, and overall completion remain workflow responsibilities. |
| Preserve authorship | Whānau, educator, technician, and clinician contributions must remain distinguishable and traceable. |
| Support staged completion | Applicable forms may be started by whānau and completed or reviewed by an authorised clinician. |
| Minimise disclosure | Form launches reveal only the information required and permitted for that context. |
| Use FHIR appropriately | Use established FHIR resources, NZ Base profiles, SDC patterns, and terminology where suitable. |
| Respect licensed content | PEDS-R and SDQ content, scoring, and distribution must follow the applicable licence. |
| Manage versions | Forms, responses, profiles, derived resources, and summaries must remain interpretable after change. |

## Logical components

| Component | Responsibility | Status |
|---|---|---|
| Cohorting capability | Apply approved eligibility rules to the scheduled NHI-derived population input | In development; implementing system not confirmed |
| Coordinator application | Present due children and support provider assignment and operational follow-up | To be developed |
| WCTO Schedule API | Expose or manage assignment, component progress, and overall workflow state | In development |
| Magic Link API | Select and launch the appropriate FHIR form and context | In development; ownership decision required |
| FHIR Forms | Capture the six B4SC assessment and consent workflows | In development or to be developed by form |
| WCTO Summary API | Provide completed forms and audience-specific summaries | In development |
| Clinical workflow/care-plan layer | Own provider-facing follow-up and referral tasks | Draft for review |

## Key boundaries

- The cohorting implementation has not been selected.
- The solution does not replace NHI, NES, AIR, HPI, a PMS/EMR, or an external e-referral system.
- Possession of a form URL is not equivalent to authenticated identity.
- A PDF, if added later, is a presentation generated from structured information rather than the authoritative exchange source.

