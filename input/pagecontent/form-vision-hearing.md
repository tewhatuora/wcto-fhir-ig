{% include wcto-style.html %}

### Vision and Hearing Assessment Form

The combined Vision and Hearing Assessment Form is completed by a Vision and Hearing Technician.

| Attribute | Draft definition |
|---|---|
| Author | Vision and Hearing Technician |
| Pattern | Single-author clinical form |
| Data domains | Vision findings, hearing findings, outcomes, retest, referrals, practitioner and organisation information |
| Candidate FHIR resources | `Questionnaire`, `QuestionnaireResponse`, `Patient`, `Observation`, `ServiceRequest`, `Practitioner`, `PractitionerRole`, `Organization` |
| Authenticated population | NHI child details, HPI practitioner/organisation context and relevant Schedule information |
| Unauthenticated access | Not expected |

```text
Child assigned
      │
      ▼
WCTO Schedule API
      │
      ▼
VHT launches combined form
      │
      ▼
Magic Link API
      │
      ▼
NHI + HPI context where authorised
      │
      ▼
Vision and hearing findings
      │
      ▼
Combined form submitted
      │
 ┌────┴─────────────┐
 ▼                  ▼
Schedule status   Summary API
updated           form available
```

> **In progress:** Detailed clinical content, outcome coding, referral representation and conformance rules.
