<link rel="stylesheet" href="assets/css/wcto.css">

# B4SC FHIR Data Model — UML and bounded contexts

This page implements the [Health NZ FHIR API Standard: FHIR data model](https://apistandards.digital.health.nz/fhir-api-standard/) recommendation. It is a **proposed** UML 2.0 class model. The editable, version-controlled PlantUML source is `input/images/b4sc-fhir-data-model.puml`. Render the diagram as SVG using PlantUML before publishing. The existing [resource diagram](data-model.html) remains available as a simpler overview.

## One-page model

The model distinguishes **salmon** proposed profiled resources, **orange** shared canonical definitions, **white** standard FHIR resources, and **blue** logical external records. Solid arrows represent resource references; dashed blue arrows represent external identifier/integration relationships. The model explicitly shows resource references, important data elements and proposed cardinalities.

**Note:** No rendered diagram is bundled here because PlantUML rendering has not been run. Render `input/images/b4sc-fhir-data-model.puml` to `input/images/b4sc-fhir-data-model.svg`, then embed the SVG here after visual review.

## Model boundaries and design decisions

- **Within WCTO:** CarePlan, Task, QuestionnaireResponse, relevant Observations, and retained summary resources are persisted in the shared FHIR infrastructure as agreed by solution design.
- **Shared definitional resources:** PlanDefinition and Questionnaires are versioned canonical artifacts, not per-child records.
- **External:** NHI is authoritative for child identity; HPI for provider identity; NES for enrolment; AIR for immunisation. External lookups do not imply local copies or literal FHIR References to external databases.
- **CarePlan and Task:** One B4SC CarePlan per child/check episode is enforced by orchestration logic. Multiple Tasks can reference it using `Task.basedOn`.
- **Form evidence:** QuestionnaireResponse records actual answers. Task completion is a separate workflow transition; link Task outputs to accepted evidence using an agreed implementation mapping.
- **Clinical results:** Observation is created only for agreed reusable structured results; do not automatically turn every form answer into an Observation.
- **Consent:** A consent QuestionnaireResponse is not automatically equivalent to a FHIR Consent resource. Decide the legal/business representation with stakeholders.
- **Referral:** Task tracks internal follow-up; ServiceRequest is optional and must not imply an e-referral integration.
- **Summary:** DocumentReference, Composition/Bundle or API-only generation is subject to a storage/format decision.

## Related documentation

See [Business-to-FHIR Data Mapping](data-mapping.html), [API Conformance](api-standards.html), [B4SC Workflow](b4sc-workflow.html), and [Forms](forms.html).
