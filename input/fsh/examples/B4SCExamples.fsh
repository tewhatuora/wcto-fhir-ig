Instance: WCTOExampleChild
InstanceOf: Patient
Usage: #example
Title: "Example B4SC child"
* identifier[0].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[0].value = "ZZZ0000"
* name[0].family = "Example"
* name[0].given[0] = "Tamariki"
* birthDate = "2022-05-10"

Instance: WCTOExampleB4SCCarePlan
InstanceOf: WCTOB4SCCarePlan
Usage: #example
Title: "Example B4SC CarePlan"
* identifier[0].system = "https://example.org/wcto/episode"
* identifier[0].value = "b4sc-example-001"
* status = #active
* intent = #plan
* subject = Reference(WCTOExampleChild)
* category[0] = WCTOContactTypeCS#b4sc

Instance: WCTOExampleNurseTask
InstanceOf: WCTOTask
Usage: #example
Title: "Example nurse evaluation task"
* status = #requested
* intent = #order
* for = Reference(WCTOExampleChild)
* basedOn[0] = Reference(WCTOExampleB4SCCarePlan)
* code = WCTOTaskTypeCS#nurse-evaluation

Instance: WCTOExampleB4SCPlanDefinition
InstanceOf: WCTOPlanDefinition
Usage: #example
Title: "Example B4SC PlanDefinition"
* url = "https://fhir-ig.digital.health.nz/wcto/PlanDefinition/WCTOExampleB4SCPlanDefinition"
* version = "0.1.0"
* date = "2026-11-12"
* name = "B4SCWorkflow"
* title = "B4SC Workflow Template"
* status = #draft
* action[0].title = "Consent and review"
* action[0].code = WCTOTaskTypeCS#consent
* action[1].title = "Whānau forms"
* action[1].code = WCTOTaskTypeCS#whanau-forms
* action[2].title = "Vision and hearing"
* action[2].code = WCTOTaskTypeCS#vision-hearing
* action[3].title = "Nurse evaluation"
* action[3].code = WCTOTaskTypeCS#nurse-evaluation
