{% include wcto-style.html %}

### Purpose

This guide describes the national digital services, WCTO digital services, integration patterns, FHIR forms, information models and summary services proposed to support WCTO delivery.

### Scope

The WCTO Digital Services capability is intended to support multiple WCTO contacts through reusable APIs and FHIR forms. The initial implementation is **WCTO Core Contact 8 – Before School Check (B4SC)**.

### Initial Scope

| Area | Included |
|---|---|
| Existing National APIs | NHI, NES, AIR and HPI |
| New WCTO APIs | Magic Link API, WCTO Schedule API and WCTO Summary API |
| FHIR forms | Consent; Health History and Nursing Assessment; PEDS-R; SDQ Parent; SDQ Teacher/ECE; Vision and Hearing Assessment |
| Summaries | Completed individual forms, Clinical B4SC Summary and Whānau B4SC Summary |
| Integration patterns | Authenticated and controlled unauthenticated access, information population, multi-author completion, status updates and summaries |

### Boundaries

This guide does **not** reproduce detailed specifications belonging to existing National APIs. Detailed questionnaire content, terminology, validation, scoring, profiles, extensions, security and conformance requirements will be added as design is confirmed.

External booking and end-to-end referral workflow management are not defined here. Referral information may be recorded and surfaced; the boundary between recording a referral and managing follow-up remains to be confirmed.

### Future Reuse

Services and reusable form components should not be unnecessarily constrained to B4SC where they may support other WCTO contacts or child health workflows.
