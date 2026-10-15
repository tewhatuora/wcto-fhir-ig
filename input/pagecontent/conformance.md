---
title: Conformance
---

# Conformance

**Status: To be developed**

This draft describes the intended conformance structure. Normative requirements will be added as the APIs, profiles, operations, terminology, and workflows are confirmed.

## Conformance language

Once requirements are approved, this guide should use the following terms consistently:

- **SHALL** identifies a mandatory requirement;
- **SHOULD** identifies a recommended requirement for which valid exceptions may exist; and
- **MAY** identifies an optional capability.

The current narrative predominantly uses *proposed*, *expected*, *potential*, and *to be confirmed*. These statements are informative and must not be interpreted as final conformance requirements.

## Expected conformance artefacts

The completed guide is expected to include:

- API CapabilityStatements;
- StructureDefinitions for approved profiles and extensions;
- SearchParameter and OperationDefinition resources where required;
- CodeSystems and ValueSets, or references to authoritative terminology;
- canonical Questionnaires and versioning rules;
- example resources and workflow Bundles;
- invariants and validation rules;
- Must Support definitions and implementation obligations;
- security and access-control requirements;
- error and OperationOutcome behaviour;
- test cases and expected results; and
- an implementation assurance or certification approach.

## External conformance

Implementations must also conform to the authoritative specifications of any National Data Service they use. This guide does not override the NHI, NES, AIR, HPI, NZ Base, SDC, or Health New Zealand Digital Tooling specifications.

## Validation

The proposed validation approach includes:

1. SUSHI compilation of FSH definitions;
2. IG Publisher validation of generated and example resources;
3. terminology validation against approved code systems and value sets;
4. questionnaire-specific validation, including enablement, required items, data types, and scoring rules;
5. API contract and workflow tests;
6. role and access-control tests;
7. negative tests for invalid, expired, revoked, duplicated, and unauthorised requests; and
8. clinical and consumer-content acceptance testing.

Testing must also cover status transitions, concurrency, idempotency, duplicate submissions, multi-author lineage, corrections, amendments, national-service outages, accessibility, performance, recovery, and licence-holder requirements for PEDS-R and SDQ.

## Open decisions

Conformance claims cannot be finalised until the following are approved:

- canonical URL and package identifier;
- FHIR profiles and resource mappings;
- API interactions and operations;
- status models and transition rules;
- terminology and bindings;
- form versioning and amendment rules;
- licensed-content implementation constraints; and
- security and authorisation requirements.

