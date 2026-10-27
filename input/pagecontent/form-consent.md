{% include wcto-style.html %}

### Consent Form

The Consent Form records informed consent for B4SC participation and applicable information-sharing decisions. Whānau may begin the form before an appointment, but consent should be finalised through an appropriate informed provider conversation.

| Attribute | Draft definition |
|---|---|
| Authors | Whānau; nurse and/or Vision and Hearing Technician |
| Pattern | Multi-author / staged completion |
| Data domains | Child and guardian identity, participation consent, ECE questionnaire consent, information-sharing permissions, consent status, attestation and completion date |
| Candidate FHIR resources | `Questionnaire`, `QuestionnaireResponse`, `Patient`, `RelatedPerson`, `Consent`, `Practitioner`, `PractitionerRole` |
| Authenticated population | NHI, HPI and launching PMS/EMR/portal context where permitted |
| Unauthenticated population | None |

> **In progress:** Detailed questionnaire items, consent states, attestation and final FHIR mappings.
