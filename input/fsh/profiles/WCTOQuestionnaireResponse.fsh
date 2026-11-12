Profile: WCTOQuestionnaireResponse
Parent: QuestionnaireResponse
Id: wcto-questionnaire-response
Title: "WCTO Questionnaire Response"
Description: "Answers associated with a WCTO contact and child."
* ^version = "0.1.0"
* ^date = "2026-11-12"
* questionnaire 1..1
* subject 1..1
* subject only Reference(Patient)
* status 1..1
