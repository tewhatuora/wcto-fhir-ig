{% include wcto-style.html %}

### About this Guide

This Implementation Guide describes the emerging digital services, FHIR forms and integration approach for **Well Child Tamariki Ora (WCTO)**.

The current implementation focus is **WCTO Core Contact 8 – Before School Check (B4SC)**. The underlying digital services and integration patterns are intended to support future WCTO contacts.

### WCTO Digital Services at a Glance
A high-level view of how scheduling, form access, assessment and summary services fit together.
```text
Eligibility / Cohorting
          │
          ▼
 WCTO Schedule API
          │
          ▼
Coordinator / Provider workflow
          │
          ▼
    Magic Link API
          │
          ▼
      FHIR Forms
          │
     ┌────┴──────────────┐
     │                   │
     ▼                   ▼
Schedule status     WCTO Summary API
                         │
              ┌──────────┼──────────┐
              ▼          ▼          ▼
          Completed   Clinical   Whānau
            forms      Summary    Summary
```
> **Supporting National Data Services:** NHI, NES, AIR and HPI may be used in authenticated and authorised workflows where permitted.

### Explore the Guide

| Section | Related pages | What you will find |
|---|---|---|
| **Overview**<br>[Business Context](business-context.html) | • [Purpose & Scope](purpose-scope.html)<br>• [Architecture & Principles](architecture.html)<br>• [Actors & Systems](actors.html) | Why WCTO Digital Services are being developed, what is in scope, the overall architecture and the people, organisations and systems involved. |
| [API & Service Catalogue](api-catalogue.html) | • [National Data Services](national-services.html)<br>• [Magic Link API](magic-link-api.html)<br>• [WCTO Schedule API](schedule-api.html)<br>• [WCTO Summary API](summary-api.html) | The national and WCTO digital services, their responsibilities and how they fit together. |
| [Form Catalogue](forms.html) | • [Form Access & Authentication](form-access.html)<br>• Individual form pages<br>• [Summary Catalogue](summaries.html) | Which FHIR forms are planned, who completes them, access patterns and summary outputs. |
| [End-to-End Workflow](workflow.html) | • Eligibility / cohorting<br>• Assignment<br>• Form completion<br>• Status and summary generation | How information moves through the proposed WCTO workflow. |
| **Implementation**<br>[Information Population](information-population.html) | • [Assumptions & Items to Confirm](assumptions.html)<br>• [Examples](examples.html)<br>• [Next Design Artefacts](next-design.html) | Population rules, current assumptions, placeholders and future design work. |
| [FHIR Information Model](fhir-model.html) | • Candidate resource mappings<br>• Profiles and terminology<br>• [Examples](examples.html)<br>• [FHIR Artifacts](artifacts.html) | How WCTO information may be represented using FHIR and the generated artefacts in this guide. |

### Current Status

> **Draft:** This guide represents the current conceptual design. Detailed API interactions, form content, security requirements, FHIR profiles, status models and conformance requirements are still being confirmed.

See [Assumptions & Items to Confirm](assumptions.html) for open design decisions.
