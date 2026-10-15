---
title: Scope
---

# Scope

**Status: Draft for review**

The WCTO Digital Services capability is intended to support multiple WCTO contacts through reusable APIs, integration patterns, and FHIR forms. The initial implementation described by this guide is WCTO Core Contact 8 — Before School Check (B4SC).

The proposed services and patterns should support future reuse across other WCTO contacts and related child-health workflows without unnecessarily embedding B4SC-specific assumptions in shared capabilities.

## Initial scope

### Initial eligibility and cohorting

The initial B4SC cohort is expected to include children recorded in NHI who are turning four years of age. The meeting position was that citizenship filtering is not applied.

An implementation-neutral cohorting capability performs the eligibility check using a scheduled NHI-derived population extract and the approved B4SC business rules. The implementing system, extract content, schedule, exception handling, and reconciliation process remain to be confirmed.

The cohorting capability identifies children who may be due for Core Contact 8 and initiates the downstream scheduling and provider-assignment workflow. It does not by itself establish that every identified child will complete the B4SC.

### Existing National Data Services

- National Health Index (NHI) API;
- National Enrolment Service (NES) API;
- Aotearoa Immunisation Register (AIR) API; and
- Health Provider Index (HPI) API.

### Proposed WCTO Digital Services

- Magic Link API;
- WCTO Schedule API; and
- WCTO Summary API.

### Workflow applications and consumers

- a coordinator application providing a due-child and provider-assignment view;
- PMS and EMR integrations that may retrieve due children and current statuses directly from the WCTO Schedule API;
- clinical and consumer portals; and
- approved email, SMS, or other invitation workflows.

The WCTO Summary API is expected to make available:

- completed individual FHIR forms;
- a consolidated Clinical B4SC Summary; and
- a Whānau B4SC Summary containing approved, accessible information for parents, caregivers, and whānau.

### FHIR forms

The initial digital form scope contains six forms:

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

