{% include wcto-style.html %}

### Health History and Nursing Assessment Form

This form combines whānau-provided child health history with the nurse's review and clinical assessment.

| Attribute | Draft definition |
|---|---|
| Authors | Whānau and nurse |
| Pattern | Multi-author |
| Data domains | Identity/demographics; contacts; household; languages; GP/WCTO provider; ECE/school; medical history; conditions; allergies; medications; immunisation; dental; vision/hearing; support needs; sleep/eating/toileting; smoking; whānau concerns; growth; nursing findings; advice; referrals; follow-up |
| Candidate FHIR resources | `Questionnaire`, `QuestionnaireResponse`, `Patient`, `RelatedPerson`, `Organization`, `Condition`, `AllergyIntolerance`, `MedicationStatement`, `Immunization`, `Observation`, `ServiceRequest`, `Practitioner`, `PractitionerRole` |
| Authenticated population | NHI, NES, AIR, HPI and permitted PMS/EMR information |
| Unauthenticated population | None |

### Growth

Growth observations are in scope. Growth charts and percentile visualisation may initially be linked rather than built directly into the FHIR form.

> **In progress:** Detailed form content, clinical validation, population and extraction mappings.
