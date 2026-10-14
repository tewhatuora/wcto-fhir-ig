---
title: Terminology
---

# Terminology

This page describes the proposed terminology approach. Approved code systems, value sets, and bindings will be added as form and API design progresses.

## Principles

- Reuse established national and international terminology where it meets the clinical and operational requirement.
- Reference terminology from its authoritative source instead of creating duplicate local codes.
- Use NZ Base and nationally governed terminology where applicable.
- Define a WCTO-specific code system only when no suitable authoritative terminology exists and the new concepts have been approved through terminology governance.
- Separate machine-readable codes from user-facing display text and support approved English and te reo Māori displays where required.
- Bind coded elements at an appropriate strength and document the expected behaviour for codes outside the preferred or extensible value set.
- Version terminology so historical forms and responses remain interpretable.

## Candidate terminology areas

Terminology is expected to be required for:

- WCTO contact and component types;
- eligibility and due-state concepts;
- assignment and workflow business statuses;
- form-component statuses;
- consent types and outcomes;
- assessment outcomes and pathways;
- referral types, destinations, and statuses;
- advice, recommendation, and follow-up categories;
- vision and hearing screening methods and outcomes;
- growth interpretation;
- form completion and unable-to-complete reasons; and
- author role and relationship categories.

## Questionnaire answer terminology

Where a questionnaire item uses coded answers, the form specification should identify:

- the canonical `ValueSet` or explicit answer options;
- the code system, code, and display;
- the binding strength;
- whether an answer can be repeated;
- whether an “other” answer requires additional text;
- how retired or superseded codes are handled; and
- whether licensed answer content may be included in the published IG.

## Governance and publication

The terminology authority, maintenance process, release cadence, and publication location remain to be confirmed. Terminology resources must not be presented as normative until clinical and terminology governance approval has been obtained.

