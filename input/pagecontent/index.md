<link rel="stylesheet" href="assets/css/wcto.css">

# Well Child Tamariki Ora (WCTO) FHIR Implementation Guide

Welcome to the **Well Child Tamariki Ora (WCTO) FHIR Implementation Guide**. This guide describes a proposed interoperable approach to coordinating child health checks, collecting information from whānau and clinicians, tracking activities, and sharing structured results across authorised health services.

The initial detailed use case is the **Before School Check (B4SC)**, undertaken around four years of age. The design aims to reuse common FHIR workflow and information patterns so that other WCTO contacts can be supported without creating a separate integration model for each contact.

> **Implementation status:** This guide contains both proposed designs and implementation artifacts. A resource, endpoint, profile, or workflow described here should not be assumed to be deployed or approved unless its individual page states that status.

## What this guide covers

| Area | Purpose | Start here |
| --- | --- | --- |
| B4SC service workflow | How a child is identified, assigned, assessed, and completed | [B4SC workflow](b4sc.html) |
| Solution architecture | Systems, integration boundaries, and information exchange | [Solution architecture](solution-architecture.html) |
| FHIR resource model | How Patient, CarePlan, Task, QuestionnaireResponse, and supporting resources relate | [FHIR resource data model](fhir-data-model.html) |
| Clinical data model | The actual health, development, vision, hearing, and nursing information collected | [Clinical data model](clinical-data-model.html) |
| Data mapping | Form item, source, author, type, terminology, validation, and candidate FHIR element | [B4SC data mapping](b4sc-data-mapping.html) |
| Forms and assessments | Questionnaire definitions, response examples, and form-specific requirements | [Forms and questionnaires](forms.html) |
| Profiles and examples | Conformance requirements and example FHIR resources | [FHIR artifacts](artifacts.html) |
| Data population and security | Authoritative sources, pre-population, and access boundaries | [Data population and security](data-population-security.html) |
| Authorship and corrections | Whānau, clinician, and educator contributions; provenance and history | [Form lifecycle and provenance](form-lifecycle-provenance.html) |

## B4SC: how the pieces fit together

B4SC uses a **single B4SC CarePlan per child** for the B4SC use case, with multiple associated Tasks to track the work. A cohorting process identifies children approaching eligibility, and the scheduling/orchestration layer checks for an existing B4SC CarePlan before creating or updating workflow activities. A coordinator or authorised provider can assign the appropriate service team.

**Consent, whānau/family forms, and Vision & Hearing activities may progress in any order or concurrently.** They are not dependent on consent being completed first. The **Nurse Evaluation is the final clinical completion gate** after the required assessment information has been reviewed. Referrals and follow-up activities may continue after the clinical check, subject to agreed closure rules.

| Stage | What happens | Primary information |
| --- | --- | --- |
| Identify | Cohorts identify children due for B4SC | NHI-derived cohort information and eligibility rules |
| Coordinate | Scheduler checks for an existing B4SC CarePlan; provider assignment is managed | CarePlan, Task, PractitionerRole, Organization |
| Collect | Whānau, educators (where applicable), and screening providers contribute information | Questionnaire, QuestionnaireResponse, Task |
| Assess | Nurse reviews contributions and records clinical findings | QuestionnaireResponse, Observation where mapped, Task |
| Complete | Nurse Evaluation confirms clinical completion | CarePlan and Task state, assessment outcomes |
| Share and follow up | Clinical and whānau summaries are generated; referrals and follow-up are tracked | DocumentReference / Composition where adopted, ServiceRequest and Task where appropriate |

For the sequence, exceptions, task automation, and completion rules, see the [B4SC workflow](b4sc.html).

## Explore the guide

| I want to… | Read… |
| --- | --- |
| Understand the overall service and why FHIR is used | [B4SC overview and workflow](b4sc.html) |
| See how applications and national services connect | [Solution architecture](solution-architecture.html) |
| Understand the FHIR resource relationships | [FHIR resource data model](fhir-data-model.html) |
| See exactly which clinical data elements are collected | [Clinical data model](clinical-data-model.html) |
| Map a form question to a FHIR resource or element | [B4SC data mapping](b4sc-data-mapping.html) |
| Understand whānau, nurse, and educator authorship | [Form lifecycle and provenance](form-lifecycle-provenance.html) |
| Find pre-population sources and security boundaries | [Data population and security](data-population-security.html) |
| Find the actual profiles, terminology, and examples | [FHIR artifacts](artifacts.html) |

## Solution architecture and data flows

The architecture separates **national authoritative services** from the **WCTO coordination and clinical workflow**. National services may provide identity, enrolment, practitioner, organisation, and immunisation information when the caller is authorised. WCTO components manage scheduling, care-plan and task coordination, form capture, assessment, and summary generation.

| Source or component | Responsibility |
| --- | --- |
| NHI | Authoritative child identity and demographic information |
| NES | Enrolment information where applicable and available |
| HPI | Practitioner, practitioner role, and organisation information |
| AIR | Authoritative immunisation history |
| PMS / EMR | Existing clinical information, subject to access and integration arrangements |
| WCTO cohorts and scheduler | Eligibility identification and B4SC workflow orchestration |
| WCTO FHIR services | CarePlan, Task, form responses, clinical resources, and references as defined by the implementation |
| Coordinator / clinical applications | Provider assignment, review, and assessment workflows |
| Summary services | Clinical and whānau outputs and downstream sharing |

See the [Solution architecture](solution-architecture.html) for component diagrams and API boundaries, and the [Data population and security](data-population-security.html) page for access-dependent pre-population rules.

## Understanding the data model

The data model is documented at three levels so that business, clinical, and technical readers can trace the same information without overloading a single diagram.

| Layer | Describes | Details |
| --- | --- | --- |
| Clinical / logical data | What B4SC collects: health history, allergies, medicines, development, growth, vision and hearing, nursing findings, advice, referrals, and follow-up | [Clinical data model](clinical-data-model.html) |
| Business-to-FHIR mapping | Each element's source, contributor, data type, validation, terminology, cardinality, and FHIR destination | [B4SC data mapping](b4sc-data-mapping.html) |
| FHIR resource model | How Patient, RelatedPerson, PractitionerRole, CarePlan, Task, QuestionnaireResponse, Observation, and other resources relate | [FHIR resource data model](fhir-data-model.html) |

A completed QuestionnaireResponse is retained as a record of the captured answers. **Not every answer automatically becomes a separate clinical resource.** Rules for extracting or reconciling clinical data into resources such as Observation, Condition, AllergyIntolerance, or MedicationStatement must be specified in the mapping.

## Who should start where?

| Audience | Recommended reading path |
| --- | --- |
| Clinical and service teams | [B4SC workflow](b4sc.html) → [Clinical data model](clinical-data-model.html) → [Forms](forms.html) |
| Business analysts and product owners | [B4SC workflow](b4sc.html) → [Data mapping](b4sc-data-mapping.html) → [Form lifecycle](form-lifecycle-provenance.html) |
| Integration and application developers | [Solution architecture](solution-architecture.html) → [FHIR resource model](fhir-data-model.html) → [FHIR artifacts](artifacts.html) |
| Security and information governance | [Data population and security](data-population-security.html) → [Form lifecycle and provenance](form-lifecycle-provenance.html) |
| Implementers and testers | [FHIR artifacts](artifacts.html) → [Forms](forms.html) → [B4SC data mapping](b4sc-data-mapping.html) |

## Implementation approach

The WCTO design favours **reuse of established FHIR standards, NZ Base profiles, and existing shared-care infrastructure** where appropriate. The intended implementation approach is to:

1. Establish authoritative identities, service boundaries, and access controls.
2. Define the B4SC CarePlan and Task workflow, including idempotent scheduling and assignment.
3. Define and version the individual Questionnaires and their response handling.
4. Map the clinical data elements, including terminology, conditional validation, and any derived clinical resources.
5. Implement authorship, audit, provenance, and correction rules for staged contributions.
6. Define summary generation, referral tracking, and downstream integration contracts.
7. Validate profiles, examples, APIs, permissions, and end-to-end workflow behaviour before deployment.

The guide distinguishes **agreed requirements**, **proposed design choices**, and **items to be confirmed**. In particular, educator identity representation, response correction policies, extraction into clinical resources, and referral closure rules require explicit design decisions before they can be treated as normative implementation requirements.

---

**Suggested starting point:** Start with the [B4SC workflow](b4sc.html), or go directly to the [FHIR resource data model](fhir-data-model.html) and [Clinical data model](clinical-data-model.html).
