---
title: Form Catalogue
---

# Form catalogue

**Page status: Draft for review**

Each digital form is expected to use `Questionnaire` and `QuestionnaireResponse` for presentation and response capture. Additional resources listed below are candidate representations of information contained in, derived from, or associated with the form. Final mappings require detailed design.

The initial implementation contains six distinct digital forms. Their detailed content must still be aligned with the source material, licensed vendor content, and approved clinical workflow.

## Catalogue overview

| Form | Authorship pattern | Initial use |
|---|---|---|
| Consent Form | Staged or multi-author | Core Contact 8 — B4SC |
| Health History and Nursing Assessment Form | Multi-author | Core Contact 8 — B4SC |
| PEDS-R Form | Multi-author and licensed | Core Contact 8 — B4SC |
| SDQ Parent Form | Single-author and licensed | Core Contact 8 — B4SC |
| SDQ Teacher/ECE Form | Single-author and licensed | Core Contact 8 — B4SC |
| Vision and Hearing Assessment Form | Single-author clinical form | Core Contact 8 — B4SC |

| Form | Development status |
|---|---|
| Consent | In development |
| Health History and Nursing Assessment | In development |
| PEDS-R | To be developed following licensing confirmation |
| SDQ Parent | To be developed following licensing confirmation |
| SDQ Teacher/ECE | To be developed following licensing and author-access decisions |
| Vision and Hearing Assessment | In development |

## Common form requirements

All forms require stable canonical identifiers and versions, unique `linkId` values, approved wording and terminology, accessible presentation, validation, save/resume rules, corrections, provenance, privacy, security, and executable tests.

Authenticated pre-population may use only approved information for an authorised purpose of use. Unauthenticated launches are expected to present blank forms.

For multi-author forms, the working design preserves the whānau response and links it to the authorised clinician-reviewed or final response. The final lineage, response-status, amendment, and item-level provenance model is **to be developed**. A clinician must not appear to have authored a whānau answer, and whānau must not appear to have authored a clinical interpretation.

Form-specific mappings must define when answers create, update, reference, or do not create resources such as `Observation`, `Consent`, `ServiceRequest`, or provider-facing `Task`.

## Consent Form

The Consent Form records informed consent for participation in the B4SC and applicable information-sharing decisions. Whānau may view or begin the form before the appointment; however, consent is expected to be finalised through an appropriate informed discussion with the nurse or Vision and Hearing Technician.

| Attribute | Draft definition |
|---|---|
| Authors | Whānau; nurse and/or Vision and Hearing Technician |
| Information domains | Child identity; parent or legal guardian identity; participation consent; ECE questionnaire consent; information-sharing permissions; consent status; attestation; completion date |
| Candidate FHIR resources | `Questionnaire`, `QuestionnaireResponse`, `Patient`, `RelatedPerson`, `Consent`, `Practitioner`, `PractitionerRole` |
| Potential authenticated population | Child details from NHI; practitioner and organisation information from HPI; child and user context from the launching PMS, EMR, or portal |
| Unauthenticated population | None |

The relationship between participation consent, information-sharing consent, and any consent required for individual assessments must be confirmed.

## Health History and Nursing Assessment Form

This form combines whānau-provided health history with the nurse's review and clinical assessment. Whānau may start the form before the appointment. The nurse may then review the submitted information, discuss concerns, record permitted corrections or additions, and complete clinical components.

| Attribute | Draft definition |
|---|---|
| Authors | Whānau and nurse |
| Information domains | Child demographics; caregiver contacts; household information; language; GP and WCTO provider information; ECE and intended school; medical and hospital history; conditions; allergies; medicines; immunisation; oral health; vision and hearing history; disability and support needs; existing services; sleep, eating, toileting, smoking exposure, and whānau concerns; height; weight; BMI; growth interpretation; nursing findings; advice; referrals; follow-up |
| Candidate FHIR resources | `Questionnaire`, `QuestionnaireResponse`, `Patient`, `RelatedPerson`, `Organization`, `Condition`, `AllergyIntolerance`, `MedicationStatement`, `Immunization`, `Observation`, `ServiceRequest`, `Practitioner`, `PractitionerRole` |
| Potential authenticated population | NHI demographics and contact details; NES enrolment and provider information; AIR immunisation information; HPI practitioner, role, and organisation details; permitted PMS or EMR information |
| Unauthenticated population | None |

Growth observations are in scope. Growth charts, percentiles, and visualisation may initially be provided through a linked or separate capability rather than rendered directly within the FHIR form.

## PEDS-R Form

The PEDS-R Form is a standalone licensed assessment with whānau and practitioner contributions. Whānau complete the applicable response component. The nurse reviews the responses and comments, records permitted professional contributions, completes the licensed scoring and interpretation process, and records the resulting pathway, advice, referrals, and follow-up.

| Attribute | Draft definition |
|---|---|
| Authors | Whānau and nurse |
| Information domains | Child and parent identity; developmental concerns; expressive and receptive communication; fine and gross motor development; behaviour; social and emotional development; self-care; school skills and readiness; cognitive or global development; relevant health concerns; prior screening; practitioner concerns; scoring; pathway or risk classification; secondary screening; advice; referrals; recommendations; follow-up |
| Candidate FHIR resources | `Questionnaire`, `QuestionnaireResponse`, `Patient`, `RelatedPerson`, `Observation`, `ServiceRequest`, `Practitioner`, `PractitionerRole` |
| Potential authenticated population | Child information from NHI and permitted PMS or EMR context; practitioner and organisation details from HPI; existing whānau responses when an authorised nurse continues the form |
| Unauthenticated population | None |

Licensed questions, scoring, interpretation material, and distribution rules are intentionally not reproduced in this guide.

The digital implementation must be reviewed with the relevant licence holder or vendor to confirm that wording, response options, scoring, presentation, and distribution remain compliant with the licensed instrument.

## SDQ Parent Form

The Strengths and Difficulties Questionnaire (SDQ) Parent Form captures a parent or caregiver assessment of the child's behavioural and emotional strengths and difficulties. It is a distinct form because it has a specific author, context, and licensed content.

| Attribute | Draft definition |
|---|---|
| Author | Parent, caregiver, or whānau member |
| Information domains | Child identity; author and relationship; emotional symptoms; conduct; hyperactivity; peer relationships; prosocial behaviour; reported difficulties; duration; distress; functional and family impact; comments; scores; assessment outcome |
| Candidate FHIR resources | `Questionnaire`, `QuestionnaireResponse`, `Patient`, `RelatedPerson`, `Observation` |
| Potential authenticated population | Child information from NHI; authenticated author and relationship context where available |
| Unauthenticated population | None |

Scoring and derived results may be generated after submission, subject to licensing and approved implementation requirements.

## SDQ Teacher/ECE Form

The SDQ Teacher/ECE Form captures an assessment from an educator who knows the child in the relevant educational setting. It remains separate from the parent form because its author, context, and assessment result are distinct.

| Attribute | Draft definition |
|---|---|
| Author | ECE educator or teacher |
| Information domains | Child identity; educator identity; educational organisation; emotional symptoms; conduct; hyperactivity; peer relationships; prosocial behaviour; reported difficulties; duration; distress or functional impact where applicable; comments; scores; assessment outcome |
| Candidate FHIR resources | `Questionnaire`, `QuestionnaireResponse`, `Patient`, `RelatedPerson` or another approved author representation, `Organization`, `Observation` |
| Potential authenticated population | Child information from NHI; ECE details from the WCTO workflow or launching system; authenticated author and organisation information where supported |
| Unauthenticated population | None |

An authenticated workforce context may not be available for all educators. The launch, matching, identity, author representation, and organisation-attribution approach requires confirmation.

## Vision and Hearing Assessment Form

This combined clinical form is completed by a Vision and Hearing Technician and captures vision and hearing screening findings, outcomes, retest requirements, advice, and referrals.

| Attribute | Draft definition |
|---|---|
| Author | Vision and Hearing Technician |
| Information domains | Child identity; screening date and location; practitioner and organisation; right and left eye findings; vision outcome; hearing findings for each ear; audiometry; tympanometry; screening completion; retest requirements; referrals; advice; overall outcome |
| Candidate FHIR resources | `Questionnaire`, `QuestionnaireResponse`, `Patient`, `Observation`, `ServiceRequest`, `Practitioner`, `PractitionerRole`, `Organization` |
| Potential authenticated population | Child information from NHI; practitioner, role, designation, and organisation information from HPI or the authenticated clinical context; assignment and workflow information from the WCTO Schedule API |
| Unauthenticated population | Not expected |

The completed form should be available to the nurse and other authorised clinicians through the WCTO Summary API.

