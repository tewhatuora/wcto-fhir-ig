Profile: WCTOCarePlan
Parent: CarePlan
Id: wcto-careplan
Title: "WCTO CarePlan"
Description: "A WCTO CarePlan coordinating activities for a child."
* ^version = "0.1.0"
* ^date = "2026-11-12"
* status 1..1
* intent 1..1
* intent = #plan
* subject 1..1
* subject only Reference(Patient)
* identifier 1..*
* category 1..*

Profile: WCTOB4SCCarePlan
Parent: WCTOCarePlan
Id: wcto-b4sc-careplan
Title: "B4SC CarePlan"
Description: "WCTO Core Contact 8 CarePlan. One B4SC CarePlan per child for their Before School Check; duplicate prevention is a Scheduler business rule."
* ^version = "0.1.0"
* ^date = "2026-11-12"
* category 1..*
* category from WCTOContactTypeVS (extensible)
