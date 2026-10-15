---
title: Summaries and Referrals
---

# Summaries, referrals and follow-up

**Status: In development**

## Summary outputs

| Output | Purpose | Candidate representation |
|---|---|---|
| Completed individual form | Preserve and retrieve the source assessment | `QuestionnaireResponse` and associated resources |
| Clinical B4SC Summary | Provide an authorised clinical view of completion, findings, advice, follow-up, and referral-task status | `Composition` and document `Bundle`, subject to design |
| Whānau B4SC Summary | Present approved results and next steps in accessible language | Audience-specific `Composition`, subject to design |
| PDF-style output | Optional presentation generated from structured information | Future phase |

Each summary element must be traceable to its source and generation rule. The design must define source precedence, incomplete components, corrections, clinical approval, consumer release, licensed-content protection, versioning, and regeneration.

## Referral boundary

An assessment may identify a referral or follow-up need and create, or request creation of, a provider-facing task in the clinical workflow or care-plan layer. The responsible provider uses the approved PMS, e-referral service, or operational process to transmit the external referral. The WCTO solution does not provide or replace an external e-referral system.

## Candidate task lifecycle

| State | Meaning |
|---|---|
| identified | Follow-up or referral need identified |
| assigned | Responsibility assigned |
| initiated | External referral process initiated |
| accepted | Receiving service accepted the referral, where known |
| outcome-received | Outcome received and recorded |
| completed | Required provider-facing follow-up complete |
| cancelled | Task no longer required under an approved reason |
| declined | Receiving service declined the referral or request |

Not every pathway uses every state. Final codes and mappings are to be developed.

## Relationship to B4SC closure

Referral-task status and B4SC case status are separate. Depending on pathway rules, the B4SC may close after referral initiation, acceptance, receipt of an outcome, or while a separately owned follow-up task remains open.

