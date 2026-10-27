{% include wcto-style.html %}


| Item | Draft position / question |
|---|---|
| Form mechanism | FHIR `Questionnaire` and `QuestionnaireResponse` used for form definition and response |
| Resource derivation | Clinical resources may be generated from, referenced by or associated with a `QuestionnaireResponse` |
| Multi-author model | Consent, Health History/Nursing and PEDS-R expected to support staged/multi-author completion |
| Authorship | Retain author, role, organisation and time where available |
| Authenticated population | National Data Services and PMS/EMR information only in authenticated/authorised context |
| Unauthenticated population | No protected automatic population into email/SMS-launched forms |
| Consent finalisation | Whānau may begin consent; finalisation requires informed provider conversation |
| PEDS-R licensing | Must comply with applicable licence |
| SDQ licensing | Must comply with applicable licensing requirements |
| Growth charts | Growth observations in scope; charts may be separate/linked initially |
| Schedule resource | `Task` or another FHIR workflow representation to be confirmed |
| NES interactions | Provider nomination/update expected subject to NES specification and agreed rules |
| Form versions | Version management required |
| Status model | Component and overall statuses require confirmation |
| Referral management | Recording vs managing referral follow-up requires further definition |
| Corrections and updates | Amendment/version preservation/source correction rules require definition |
| ECE author representation | FHIR and identity representation remains to be confirmed |
| Summary representation | `Composition` and `Bundle` are provisional candidates |
| Coordinator capability | Final application/product remains to be confirmed |
| Cohorting implementation | Eligibility/cohorting implementation remains to be confirmed |

These items are expected to change as business, clinical, architecture, security and technical design progresses.
