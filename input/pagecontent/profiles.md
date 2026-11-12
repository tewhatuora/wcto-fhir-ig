<link rel="stylesheet" href="assets/css/wcto.css">

# WCTO FHIR Profiles

Open a profile to see the generated StructureDefinition, cardinalities, bindings and constraints. Examples are linked where available. These are **draft** profiles.

| Profile | Purpose | Example |
|---|---|---|
| [WCTO CarePlan](StructureDefinition-wcto-careplan.html) | Reusable WCTO plan | [B4SC example](CarePlan-WCTOExampleB4SCCarePlan.html) |
| [B4SC CarePlan](StructureDefinition-wcto-b4sc-careplan.html) | Before School Check plan | [B4SC example](CarePlan-WCTOExampleB4SCCarePlan.html) |
| [WCTO Task](StructureDefinition-wcto-task.html) | Work tracking and completion evidence | [Nurse Task](Task-WCTOExampleNurseTask.html) |
| [WCTO QuestionnaireResponse](StructureDefinition-wcto-questionnaire-response.html) | Answers and authorship | Example to be developed |
| [WCTO RelatedPerson](StructureDefinition-wcto-related-person.html) | Whānau relationship where required | Example to be developed |
| [WCTO PlanDefinition](StructureDefinition-wcto-plan-definition.html) | Proposed workflow template constraints | [PlanDefinition example](PlanDefinition-WCTOExampleB4SCPlanDefinition.html) |

For resource relationships see [B4SC Data Model](data-model.html). One active B4SC CarePlan per child is a **Scheduler business rule**, not a profile element cardinality.
