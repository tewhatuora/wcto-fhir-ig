{% include wcto-style.html %}

# B4SC API Services

**Proposed logical interfaces only.** Paths, request schemas, ownership and security controls require approval. These services support the [B4SC workflow](b4sc-workflow.html).

## Schedule API

Exposes due children, assigned providers and progress to authorised Coordinator and PMS/EMR consumers. The Scheduler/orchestrator, not the Schedule API itself, manages CarePlan and Task lifecycle.

## Magic Link API

An authorised Coordinator or PMS/EMR requests a time-limited link for a particular child, Task and Questionnaire. Links are **not** automatically created with every CarePlan.

## Summary API

Generates or retrieves clinical and whānau summaries from approved evidence. Summary availability does not itself close the CarePlan; required referral outcomes may remain outstanding.

## Common requirements

Authentication, authorisation, correlation IDs, audit, retries, idempotency, privacy controls and error handling must be specified in approved API contracts. See [Developer Guide](developer-guide.html) and [Open Decisions](decisions-and-tests.html).

## National service dependencies

Use the authoritative [NHI](https://fhir-ig.digital.health.nz/nhi/), [NES](https://fhir-ig.digital.health.nz/nes/), [HPI](https://fhir-ig.digital.health.nz/hpi/) and [AIR](https://fhir-ig.digital.health.nz/air/) specifications. Validate URLs and approved versions before publishing.
