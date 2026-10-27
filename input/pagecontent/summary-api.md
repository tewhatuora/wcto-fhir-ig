{% include wcto-style.html %}


The WCTO Summary API provides authorised access to completed forms and generated WCTO summaries.

| Attribute | Draft definition |
|---|---|
| Purpose | Share completed assessment information and consolidated summaries |
| Data domains | Completed forms, outcomes, referrals, recommendations, completion status and next steps |
| Candidate FHIR resources | `QuestionnaireResponse`, `Observation`, `Consent`, `ServiceRequest`, `Composition`, `Bundle` |
| Key consumers | PMS, EMR, clinical portals, consumer portals and authorised WCTO services |
| Outputs | Completed individual forms, Clinical B4SC Summary and Whānau B4SC Summary |

### Outputs

- **Completed individual forms** — discrete clinical artefacts preserving authorship and completion state.
- **Clinical B4SC Summary** — consolidated clinical view of components, findings, outcomes, referrals, recommendations and follow-up.
- **Whānau B4SC Summary** — accessible results and next steps without unsuitable internal workflow or detailed scoring information.

See [Summary Catalogue](summaries.html).

> **Provisional:** `Composition` and `Bundle` remain candidate summary resources.
