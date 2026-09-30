// ═══════════════════════════════════════════════════════════════════════════
// B4SC Patient profile
// The subject of every B4SC check is a pre-school child. This profile captures
// the minimum data the programme needs on the patient record.
// ═══════════════════════════════════════════════════════════════════════════

Profile: B4SCPatient
Parent: Patient
Id: b4sc-patient
Title: "B4SC Patient"
Description: "A pre-school child who is the subject of a Before School Check."
* name 1..* MS
* birthDate 1..1 MS
* gender MS

Instance: B4SCPatientExample
InstanceOf: B4SCPatient
Title: "B4SC Patient Example"
Description: "Example pre-school child receiving a Before School Check."
* name.given[0] = "Aroha"
* name.family = "Ngata"
* birthDate = "2022-03-14"
* gender = #female
