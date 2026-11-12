{% include wcto-style.html %}

# Business-to-FHIR Data Mapping

**Status: Draft — stakeholder agreement required before API design is finalized.** This mapping follows the [Health NZ FHIR API Standard — Agree Data Mapping](https://apistandards.digital.health.nz/fhir-api-standard/Principles%20and%20Guidelines/DataMapping). The full reviewable table is `mapping/b4sc-business-to-fhir-mapping.csv` in this source package.

## Scope and approach

The bounded context covers the B4SC episode, workflow activities, assessments, results and summary delivery. Cohort selection, national identity and immunisation sources remain external unless an explicit data-exchange requirement justifies persistence. Each row records business and FHIR type/cardinality, mapping/transformation logic, source ownership, reverse mapping and approval status.

## Key proposed mappings

| Business concept | FHIR representation | Rule / open decision |
|---|---|---|
| Child identity | `Patient.identifier` | NHI authoritative; identifier system must match NZ conventions |
| B4SC episode | `CarePlan` | One per child/check episode; deduplicate via scheduler |
| Consent / family / vision-hearing / nurse activity | `Task` | Independent tasks; nurse evaluation final clinical gate |
| Original form and answers | `Questionnaire` / `QuestionnaireResponse` | Preserve linkIds, authorship and versions |
| Structured clinical result | `Observation` where agreed | Do not duplicate every answer by default |
| Provider assignment | `Task.owner`, `CarePlan.careTeam` | HPI identity and access decisions required |
| Referral follow-up | `Task`, possibly `ServiceRequest` | No e-referral functionality assumed |
| Summaries | API payload, `DocumentReference`, or `Composition`/`Bundle` | Storage/format decision pending |
| Schedule | Derived status | Agree due, partial, complete and amended-response rules |

## Questionnaire-level mapping

The existing six FSH/JSON questionnaire definitions are **draft scaffolds**. Do not treat them as verified originals. A linkId-level mapping requires the authoritative source questionnaires, rights to reproduce licensed PEDS-R/SDQ content, item codes, enableWhen rules, data types, validation and scoring definitions. The separate Nurse Evaluation Questionnaire is still missing.

## Stakeholder review and sign-off

Clinical/business owners should review meaning, mandatory items, workflow and consent semantics; information architects review ownership and external boundaries; FHIR developers review element selection, terminology, references and reverse transformations; security/privacy owners review role-based access. Record decisions in [Mapping Decisions](mapping-decisions.html). No sign-off is implied by inclusion in this IG.
