{% include wcto-style.html %}

This page explains **how WCTO components fit together** and directs implementers to the single authoritative definition for each technical detail. Element cardinalities and FHIR constraints are maintained in [Profiles](profiles.html), not repeated here.

## Architectural principles

| Principle | Application to WCTO |
|---|---|
| Reuse national services | Query approved national services rather than creating competing identity, enrolment or immunisation stores |
| Reference rather than replicate | Persist only the information required for WCTO workflow and approved reporting |
| Capture once | Reuse assessment evidence appropriately across authorised workflow steps |
| Separate forms from workflow | QuestionnaireResponses capture answers; CarePlan and Task coordinate work |
| Preserve authorship | Distinguish whānau, educator and clinician contributions |
| Support staged completion | Forms and screening may progress independently; nurse evaluation is the final clinical gate |
| Minimise disclosure | Access and link security must be defined and reviewed; a link alone must not be treated as proof of identity |
| Use FHIR appropriately | Reuse base and NZ profiles where suitable, constrain only where required |
| Respect licensed content | Confirm permission before publishing copyrighted questionnaires or scoring content |
| Manage versions | Version templates, forms and implementation contracts deliberately |

## Logical architecture

The Scheduler coordinates CarePlan and Task creation or reuse; the Schedule API exposes information to consumers. The Coordinator application supports staff workflow, while PMS/EMR systems may consume schedule information and request form launches. The final deployment topology and service interfaces remain to be confirmed.

<div class="wcto-compact-diagram">

![Logical WCTO architecture](wcto-logical.svg)

</div>

## FHIR data model

The B4SC CarePlan coordinates the child's check. It is **not created from a QuestionnaireResponse**. Tasks represent work; responses record answers and may supply evidence for completion. Solid arrows below represent intended references; dashed arrows represent proposed orchestration or evidence associations, which require detailed mapping.

<div class="wcto-compact-diagram">

![B4SC resource relationship model](b4sc-resources.svg)

</div>

Read the [FHIR Data Model](data-model.html) for relationship explanations, [Profiles](profiles.html) for exact element definitions, [Examples](examples.html) for resource instances and [B4SC Workflow](b4sc-workflow.html) for completion rules.

## Architecture boundaries

The cohort source, nomination interface, authorised form launch design, service ownership and final closure events are not yet approved. These are tracked in [Decisions and Tests](decisions-and-tests.html).


## Source architecture diagrams (discovery references)

The following diagrams were provided as **draft reference material**. They illustrate existing thinking, not approved interface contracts. The FHIR model and orchestration rules documented in this guide take precedence where the diagrams omit CarePlan and Task details.

### FHIR, EMR and provider-view data flow (draft)

![Draft B4SC data flow](b4sc-dfd-reference.png)

### Early Years integrated solution overview (draft)

![Draft Early Years solution](early-years-integration-reference.png)

The integrated view includes PMS/EMR, coordination workspace, Magic Link, renderer, FHIR Server, NHI, NES, HPI, AIR, WCTO Schedule, WCTO Summary, and downstream Snowflake/HDP reporting. **Reporting is not the operational source of Task status.**
