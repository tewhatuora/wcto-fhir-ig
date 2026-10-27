{% include wcto-style.html %}

The Magic Link API provides secure access to the relevant WCTO FHIR form and context needed to complete it.

| Attribute | Draft definition |
|---|---|
| Purpose | Launch the required WCTO FHIR form and supply appropriate context |
| Data domains | Authentication, user, child, form and workflow context |
| Relevant FHIR resources | `Questionnaire`; `QuestionnaireResponse` when continuing an existing response |
| Authenticated population | May use authorised National Data Services, PMS/EMR/portal context, WCTO Schedule information and existing form response |
| Unauthenticated population | None |
| Key consumers | PMS, EMR, clinical portals, consumer portals and approved invitation workflows |

### Authenticated Launch

```text
Authenticated channel
       │
       ▼
Magic Link API
       │
       ▼
Resolve form and context
       │
       ▼
Permitted population
       │
       ▼
Present / continue form
```

### Unauthenticated Launch

```text
Email / SMS / approved invitation
              │
              ▼
         Magic Link API
              │
              ▼
        Retrieve blank form
              │
              ▼
      Manual information entry
```

> **To be confirmed:** Token format, expiry, secure matching, invitation controls and detailed security requirements.
