Profile: WCTORelatedPerson
Parent: RelatedPerson
Id: wcto-related-person
Title: "WCTO Related Person"
Description: "Child-to-caregiver relationship where verified and authorised."
* ^version = "0.1.0"
* ^date = "2026-11-12"
* patient 1..1
* patient only Reference(Patient)
* relationship 1..*
