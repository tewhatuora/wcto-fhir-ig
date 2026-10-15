---
title: FHIR Artifacts and Terminology
---

# FHIR artefacts and terminology

**Status: To be developed**

## Source organisation

| Artefact | Location |
|---|---|
| Profiles | `input/fsh/profiles` |
| Extensions | `input/fsh/extensions` |
| Terminology | `input/fsh/terminology` |
| Questionnaires | `input/fsh/questionnaires` |
| CapabilityStatements and operations | `input/fsh/capabilities` |
| Synthetic FSH examples | `input/fsh/examples` |
| Hand-authored JSON/XML examples | `input/examples` |

The current `.fsh` files are comment-only placeholders and generate no unapproved artefacts.

## Candidate artefacts

- workflow, assignment, referral-task, summary, and provenance profiles;
- six canonical B4SC Questionnaires;
- CapabilityStatements for Schedule, Magic Link, and Summary services;
- operations and search parameters only where standard FHIR REST is insufficient;
- extensions only where FHIR R4, NZ Base, SDC, and approved national artefacts cannot represent the requirement; and
- positive and negative synthetic examples.

## Terminology principles

- Reuse authoritative national or international terminology.
- Create WCTO-specific codes only when no suitable terminology exists and governance approves them.
- Separate machine codes from user-facing English and te reo Māori displays.
- Document binding strength, out-of-set behaviour, versioning, and retired-code handling.
- Protect licensed answer content from unauthorised publication.

Candidate terminology includes eligibility and exclusion reasons, assignment and workflow states, form-component states, consent outcomes, screening outcomes, referral-task states, completion reasons, author roles, and summary audiences.

## Delivery sequence

Confirm models; assess reuse; approve terminology; draft profiles, questionnaires and capabilities; add examples; validate with SUSHI and the Publisher; complete clinical, licensing, privacy, security and architecture review; then publish.

