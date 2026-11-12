CodeSystem: WCTOContactTypeCS
Id: wcto-contact-type
Title: "WCTO Contact Types"
Description: "Provisional WCTO contact type codes."
* ^version = "0.1.0"
* ^date = "2026-11-12"
* ^status = #draft
* ^content = #complete
* #b4sc "Before School Check" "WCTO Core Contact 8"

CodeSystem: WCTOTaskTypeCS
Id: wcto-task-type
Title: "WCTO Task Types"
Description: "Provisional B4SC task type codes."
* ^version = "0.1.0"
* ^date = "2026-11-12"
* ^status = #draft
* ^content = #complete
* #consent "Consent and review"
* #whanau-forms "Whānau forms"
* #vision-hearing "Vision and hearing"
* #nurse-evaluation "Nurse evaluation"
* #referral-follow-up "Referral follow-up"

ValueSet: WCTOContactTypeVS
Id: wcto-contact-type-vs
Title: "WCTO Contact Type Value Set"
* ^version = "0.1.0"
* ^date = "2026-11-12"
* include codes from system WCTOContactTypeCS

ValueSet: WCTOTaskTypeVS
Id: wcto-task-type-vs
Title: "WCTO Task Type Value Set"
* ^version = "0.1.0"
* ^date = "2026-11-12"
* include codes from system WCTOTaskTypeCS
