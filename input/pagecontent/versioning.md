<link rel="stylesheet" href="assets/css/wcto.css">

# Versioning and Compatibility

**Status: draft — API implementation capabilities not yet confirmed.**

| Kind | FHIR representation | Meaning |
|---|---|---|
| Record | `meta.versionId` | Server-managed history of an individual resource |
| Business | `version` on canonical definitions | Author-controlled release of Questionnaire, PlanDefinition, profiles and terminology |
| FHIR release | `fhirVersion` in `sushi-config.yaml` | Currently R4 (`4.0.1`); R4B transition is a design decision |

Canonical definitions have draft business version `0.1.0` and revision date `2026-11-12`. This is a working draft version, **not** a clinical approval or published release. `apply-version: false` and `default-version: true` are configured for artifact-specific versioning.

QuestionnaireResponses must use `QuestionnaireResponse.questionnaire` with a versioned canonical, for example `https://fhir-ig.digital.health.nz/wcto/Questionnaire/B4SCConsent|0.1.0`, **once canonical identity is verified**. Previously submitted responses retain their original questionnaire version. Corrections should create an auditable record change, not silently rewrite the original definition.

`GET [base]/Resource/{id}/_history/{versionId}` is a version-specific read; `GET [base]/Resource/{id}/_history` is instance history. Support for vread, business-version queries, `:below` and version-specific canonical retrieval is **not claimed** until implemented, declared in the CapabilityStatement and tested.

Compatibility decisions: define behavior for retired questionnaires, amended responses, code changes, migration and client version negotiation before production.
