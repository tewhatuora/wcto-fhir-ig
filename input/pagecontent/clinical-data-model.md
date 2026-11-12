<link rel="stylesheet" href="assets/css/wcto.css">

# B4SC Clinical Data Model

> **Draft logical data catalogue.** Clinical questions, approved terminology, conditional rules, cardinalities and copyrighted instrument content must be validated with the programme and form owners.

## Form inventory

| Form or assessment | Main contributor | Purpose | Output / mapping considerations |
| --- | --- | --- | --- |
| Consent | Parent / guardian / whānau | Capture consent decision and relevant details | QuestionnaireResponse; Consent resource only if agreed |
| Health History | Whānau, then clinician review | Medical and social history, development and wellbeing | QuestionnaireResponse; selectively reconciled Condition, AllergyIntolerance or medication history |
| PEDS-R | Whānau; clinician review as designed | Developmental screening | QuestionnaireResponse; licensed instrument content must not be invented |
| SDQ Parent | Parent / guardian | Behavioural and emotional screening | QuestionnaireResponse; approved scoring/terminology |
| SDQ Teacher / ECE | Teacher / educator, if in scope | Independent educator contribution | QuestionnaireResponse; author representation to be decided |
| Vision and Hearing | Screening provider | Screening results and outcomes | QuestionnaireResponse and/or Observation as approved |
| Nurse Evaluation | Nurse / clinician | Final clinical review, findings, decisions and sign-off | QuestionnaireResponse and/or clinical resources; final B4SC completion gate |

## Clinical information domains

| Domain | Candidate fields | Candidate FHIR representation |
| --- | --- | --- |
| Demographics | NHI, name, date of birth, address | Patient; authoritative source NHI |
| Conditions / health history | Existing conditions, health concerns | QuestionnaireResponse; Condition after review where agreed |
| Allergies | Reported allergies and reactions | QuestionnaireResponse; AllergyIntolerance after reconciliation |
| Medication | Current medicines | QuestionnaireResponse; MedicationStatement if adopted |
| Immunisation | Immunisation history/status | AIR-sourced Immunization |
| Development and wellbeing | Developmental concerns, sleep, eating, toileting, disability/support | QuestionnaireResponse; selected Observation if mapped |
| Environment | Smoking exposure and other context | QuestionnaireResponse; Observation only if defined |
| Measurements | Height, weight, BMI if calculated | Observation, with validated units, dates and derivation |
| Vision / hearing | Results, incomplete/retest reasons, outcomes | Observation and/or QuestionnaireResponse |
| Nurse assessment | Clinical findings, advice, plan, referrals, follow-up | QuestionnaireResponse; Observation, ServiceRequest, Task, CarePlan as adopted |

## Field-level definition template

For each form item, specify: form, section, `linkId`, display text, clinical definition, datatype, required/conditional cardinality, author, authoritative/prepopulation source, terminology, validation, target FHIR resource/element, extraction trigger, summary output, and approval status.

**Do not automatically convert all whānau-reported answers into longitudinal clinical records.** Define the nurse review/reconciliation step before creating derived resources.
