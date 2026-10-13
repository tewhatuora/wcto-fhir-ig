---
title: Scope
---

# Scope

The WCTO Digital Services capability is intended to support multiple WCTO contacts through reusable APIs, integration patterns, and FHIR forms. The initial implementation described by this guide is WCTO Core Contact 8 — Before School Check (B4SC).

The proposed services and patterns should support future reuse across other WCTO contacts and related child-health workflows without unnecessarily embedding B4SC-specific assumptions in shared capabilities.

## Initial scope

### Existing National Data Services

- National Health Index (NHI) API;
- National Enrolment Service (NES) API;
- Aotearoa Immunisation Register (AIR) API; and
- Health Provider Index (HPI) API.

### Proposed WCTO Digital Services

- Magic Link API;
- WCTO Schedule API; and
- WCTO Summary API.

The WCTO Summary API is expected to make available:

- completed individual FHIR forms;
- a consolidated Clinical B4SC Summary; and
- a Whānau B4SC Summary containing approved, accessible information for parents, caregivers, and whānau.

### FHIR forms

The initial form catalogue contains:

- Consent Form;
- Health History and Nursing Assessment Form;
- PEDS-R Form;
- SDQ Parent Form;
- SDQ Teacher/ECE Form; and
- Vision and Hearing Assessment Form.

## Scope boundaries

This guide defines the proposed integration-level structure and responsibilities. It does not yet define:

- final questionnaire items or licensed assessment content;
- approved API contracts or FHIR profiles;
- final workflow and status models;
- detailed security, privacy, consent, token, or access-control rules;
- production infrastructure or deployment topology;
- final terminology and value sets;
- referral-management ownership; or
- final conformance and testing requirements.

These matters require confirmation through the applicable governance and detailed-design processes.

