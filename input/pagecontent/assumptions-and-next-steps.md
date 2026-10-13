---
title: Assumptions and Next Steps
---

# Assumptions and matters for confirmation

The following positions are provisional and require confirmation through the relevant business, clinical, architecture, privacy, security, licensing, and technical processes.

| Topic | Draft position or question |
|---|---|
| Form mechanism | `Questionnaire` and `QuestionnaireResponse` will be used for form definition and response capture. |
| Resource derivation | Relevant resources may be generated from, referenced by, or associated with the `QuestionnaireResponse`. |
| Multi-author model | Consent, Health History and Nursing Assessment, and PEDS-R are expected to support staged or multi-author completion. |
| Authorship | Contributions should retain author, role, organisation, and time information where available. The level of item-specific provenance remains to be defined. |
| Authenticated population | National Data Services and PMS or EMR information may populate forms only within an authenticated, authorised, and appropriate purpose-of-use context. |
| Unauthenticated population | Protected information will not be automatically populated into forms launched through unauthenticated email or SMS links. |
| Consent finalisation | Whānau may review or begin consent before the appointment, but informed consent is expected to be finalised with the applicable healthcare provider. |
| PEDS-R licensing | Reproduction, scoring, interpretation, distribution, and storage must comply with the applicable licence. |
| SDQ licensing | The applicable SDQ licensing and permitted digital implementation model must be confirmed. |
| Growth charts | Growth observations are in scope. Chart generation and visualisation may initially be separate from the FHIR form. |
| Schedule resource | Use of `Task` or another FHIR workflow representation remains to be confirmed. |
| Schedule statuses | Workflow, assignment, and component status codes and transitions require business and technical approval. |
| Educator representation | The identity, authentication, organisation attribution, and FHIR representation of an ECE educator or teacher remain to be confirmed. |
| Summary resources | Use of `Composition` and `Bundle` is provisional and requires detailed design. |
| Summary governance | Inclusion, transformation, audience, approval, and regeneration rules must be defined. |
| NES interactions | Provider nomination or update is subject to the authoritative NES specification and approved workflow. |
| Form versions | Version-management rules are required, particularly when licensed content or national requirements change. |
| Referral boundary | The boundary between recording a referral and managing its acceptance, delivery, and follow-up remains to be defined. |
| Corrections and amendments | Rules are required for amending submitted forms, retaining previous versions, correcting source information, and regenerating summaries. |
| Provenance | The required granularity of provenance for population, multi-author contributions, derivation, and summary generation must be confirmed. |
| Terminology | Code systems, value sets, bindings, display terms, and Māori language requirements require clinical and terminology governance. |
| Conformance | Must-support rules, validation, test cases, capability statements, and implementation assurance remain to be developed. |

# Proposed next design artefacts

Following stakeholder review, the next artefacts should include:

1. confirmed service and API catalogue;
2. confirmed actor, author, and access model;
3. confirmed form and summary catalogue;
4. confirmed information-domain catalogue;
5. agreed WCTO Schedule API state model and transition rules;
6. detailed end-to-end sequence diagrams, including exception flows;
7. form-specific source and population matrices;
8. form-specific `Questionnaire` and `QuestionnaireResponse` specifications;
9. mappings to derived or associated FHIR resources;
10. FHIR profiles, extensions, terminology, and validation rules;
11. privacy, security, consent, access-control, and audit requirements;
12. versioning, correction, provenance, and lifecycle rules;
13. licensing confirmation for PEDS-R and SDQ; and
14. conformance, testing, and implementation-assurance approach.

# Reviewer questions

Reviewers are invited to comment on:

- whether the guide structure meets the needs of its intended implementers;
- whether the service, form, and summary catalogues cover the initial B4SC scope;
- whether authorship and multi-author completion are represented accurately;
- whether the proposed information domains and candidate FHIR resources are appropriate at this stage;
- whether authenticated and unauthenticated access are sufficiently clear;
- whether the draft Schedule API responsibilities and status concepts are adequate;
- whether the proposed separation between source forms, the Clinical B4SC Summary, and the Whānau B4SC Summary is correct; and
- which assumptions can now be confirmed, changed, or deferred to detailed design.

