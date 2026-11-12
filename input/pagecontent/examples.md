<link rel="stylesheet" href="assets/css/wcto.css">

# FHIR Examples

The following synthetic instances illustrate how WCTO resources fit together. They are not real patient data and are not approved production payloads.

| Example | Description |
|---|---|
| [Example child](Patient-WCTOExampleChild.html) | Synthetic child identity |
| [B4SC CarePlan](CarePlan-WCTOExampleB4SCCarePlan.html) | CarePlan linked to the child |
| [Nurse evaluation Task](Task-WCTOExampleNurseTask.html) | Task referencing the CarePlan through `basedOn` |
| [B4SC PlanDefinition](PlanDefinition-WCTOExampleB4SCPlanDefinition.html) | Draft workflow action catalogue |

See [FHIR Profiles](profiles.html) for the formal resource constraints and [B4SC Workflow](b4sc-workflow.html) for the expected Task lifecycle. Additional examples are needed for consent, family forms, screening, responses, referrals and summary outputs.
