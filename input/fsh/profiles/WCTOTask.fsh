Profile: WCTOTask
Parent: Task
Id: wcto-task
Title: "WCTO Task"
Description: "Actionable work associated with a WCTO CarePlan."
* ^version = "0.1.0"
* ^date = "2026-11-12"
* status 1..1
* intent 1..1
* for 1..1
* for only Reference(Patient)
* basedOn 1..*
* basedOn only Reference(CarePlan)
* code 1..1
* code from WCTOTaskTypeVS (extensible)
