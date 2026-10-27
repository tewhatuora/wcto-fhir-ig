{% include wcto-style.html %}

### PEDS-R Form

PEDS-R is a standalone, licensed, multi-author assessment. Whānau complete the applicable response component; the nurse reviews responses, adds permitted practitioner contributions, completes licensed scoring/interpretation and records advice, referral or follow-up.

| Attribute | Draft definition |
|---|---|
| Authors | Whānau and nurse |
| Pattern | Multi-author |
| Licensing | Licensed assessment |
| Candidate FHIR resources | `Questionnaire`, `QuestionnaireResponse`, `Patient`, `RelatedPerson`, `Observation`, `ServiceRequest`, `Practitioner`, `PractitionerRole` |
| Authenticated population | Child, user and workflow context where permitted |
| Unauthenticated population | None from protected sources |

### Licensing

Detailed licensed questions, scoring content and interpretation material are not reproduced in this guide.

> **In progress:** Implementation must comply with the applicable PEDS-R licence.
