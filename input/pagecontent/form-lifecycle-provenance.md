<link rel="stylesheet" href="assets/css/wcto.css">

# Form Lifecycle, Authorship and Provenance

> **Draft design.** Define workflow states independently of FHIR `QuestionnaireResponse.status`.

## Contributors

- Whānau/parent/guardian: may submit Health History, Consent, PEDS-R and SDQ Parent.
- Teacher/ECE: may provide SDQ Teacher information if included; FHIR author representation remains a decision.
- Vision/Hearing provider: records screening outcomes.
- Nurse: reviews relevant responses, adds findings, and completes Nurse Evaluation.

## Proposed business stages

`Not started → In progress → Submitted → Awaiting review → Under review → Reviewed / finalised`

These are **business stages**, not values to insert directly into `QuestionnaireResponse.status`. Use `Task.status`, `Task.businessStatus` and application rules to represent workflow; use only valid QuestionnaireResponse status values for response state.

## Correction and history

1. Retain the original submitted contribution and its attribution.
2. Record review/amendment events with identity, organisation, timestamp and target.
3. Use server-managed resource history (`meta.versionId`) where supported, plus an explicit Provenance strategy.
4. Specify whether corrections amend an existing response or create a separate response and how both are related.
5. Ensure summaries identify the reviewed/final data version used.

## B4SC completion

Consent, whānau forms and Vision/Hearing may occur in any order or concurrently. The Nurse Evaluation is the final clinical completion gate. Referral follow-up can remain open after clinical evaluation; CarePlan closure rules need a programme decision.

## Decisions to confirm

- Whether whānau and nurse use separate QuestionnaireResponses for shared forms.
- Representation of Teacher/ECE authors.
- How signed consent is represented.
- What triggers finalisation and summary regeneration after corrections.
