{% include wcto-style.html %}

# Health NZ FHIR API Standards Alignment

**Assessment status: Draft / not independently verified.** This page is a review checklist, not a certification or claim of compliance. Review against the current [FHIR API Standard](https://apistandards.digital.health.nz/fhir-api-standard/) and applicable national security/publishing standards before release.

| Review area | IG evidence | Status / next action |
|---|---|---|
| FHIR data model | [UML model](b4sc-data-model.html), editable `.puml` | Draft; render and validate references |
| Agree business data mapping | [Data Mapping](data-mapping.html), CSV and [decisions](mapping-decisions.html) | Not approved; stakeholder sign-off required |
| NZ Base reuse | FSH profiles | Audit parent profiles, bindings, NZ identifiers |
| Canonical URL governance | `sushi-config.yaml` and FSH | Confirm publisher canonical and uniqueness |
| Profiling and extensions | FSH definitions | Check constraints and avoid unnecessary extensions |
| Versioning and compatibility | [Developer Guide](developer-guide.html) | Define API/IG/resource version policy and breaking-change rules |
| FHIR API interactions | [APIs](apis.html) | Define operations, errors, search, paging and capability expectations |
| Security, consent and authorization | [Actors](actors.html) | Complete role/access matrix and privacy review |
| Terminology | `input/fsh/valuesets` | Confirm NZ terminology systems and bindings |
| Validation and publishing | `VALIDATION.md` | Run SUSHI, IG Publisher and link checks |

**Important:** Magic Link and Summary endpoints may be custom service APIs; document which interfaces are FHIR-native and which are not, rather than presenting every endpoint as a conformant FHIR REST API.


## Release verification gates (HISO 10110 v1.2)

| Requirement | Evidence in this source | Status |
|---|---|---|
| NZ Base 2.0.0 dependency | `sushi-config.yaml` | Configured; profile-level validation pending |
| FHIR R4B preferred | `fhirVersion: 4.0.1` | R4 draft; R4B migration decision pending |
| Canonical URL naming | IG canonical and FSH-generated definitions | Requires canonical review and publisher test |
| Canonical business versions/dates | Profiles, terminology and Questionnaire FSH | Draft versions set; validate generated resources |
| Versioned QuestionnaireResponse references | `versioning.md` | Documented; examples and runtime enforcement pending |
| Business-to-FHIR mapping | `mapping/*.csv` | Proposed, not approved |
| UML data model | `input/images/b4sc-fhir-data-model.puml` and `b4sc-fhir-data-model.svg` | Rendered; clinical review pending |
| CapabilityStatement at `/metadata` | No verified deployed endpoint | Not demonstrated |
| JSON support | Reference draft JSON files | Server support not demonstrated |
| Published IG | Local source only | Not demonstrated |
| OpenAPI 3.x, policies, automated test reports, SLA | Not supplied in this package | Missing or unverified |

**Do not claim HISO compliance or production readiness until these gates are satisfied.**
