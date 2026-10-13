---
title: Summary Catalogue
---

# Summary catalogue

The proposed summary capability provides access to completed source forms and two audience-specific consolidated views. The detailed content, FHIR representation, and generation rules remain subject to clinical and technical design.

## Completed individual forms

Each completed form should remain available as a discrete clinical artefact. This allows authorised users to inspect the submitted source information and distinguish contributions made by whānau, educators, nurses, and Vision and Hearing Technicians.

| Attribute | Draft definition |
|---|---|
| Purpose | Provide access to the completed source form and associated resources |
| Audience | Authorised healthcare providers and coordinators |
| Information domains | Information captured by the source form, including authorship, completion status, and provenance |
| Candidate FHIR resources | `QuestionnaireResponse` and associated `Consent`, `Observation`, `ServiceRequest`, `Provenance`, or other resources |
| Source | Submitted form and approved derivation process |

## Clinical B4SC Summary

The Clinical B4SC Summary consolidates relevant information from completed B4SC forms for authorised clinicians and coordinators. It should provide visibility of completed and outstanding components, key findings, assessment outcomes, referrals, recommendations, and follow-up requirements.

| Attribute | Draft definition |
|---|---|
| Purpose | Provide a consolidated clinical view of the B4SC |
| Audience | Nurses, Vision and Hearing Technicians, GPs, coordinators, and other authorised clinicians |
| Information domains | Completion status; consent; health history; nursing findings; growth; oral health; immunisation; developmental assessment; behavioural assessment; vision and hearing screening; referrals; advice; recommendations; follow-up |
| Candidate FHIR resources | `Composition` and `Bundle`, referencing relevant `QuestionnaireResponse`, `Consent`, `Observation`, `ServiceRequest`, and provenance information |
| Source | Completed forms, approved National Data Service information, and WCTO Schedule information |
| Generation | System-generated from approved source information |

## Whānau B4SC Summary

The Whānau B4SC Summary presents approved results and next steps in a clear, accessible format for parents, caregivers, and whānau.

It is an audience-specific presentation and should not expose internal workflow information, restricted licensed scoring constructs, or clinical information unsuitable for its intended audience.

| Attribute | Draft definition |
|---|---|
| Purpose | Provide whānau with approved results, advice, referrals, and next steps |
| Audience | Parent, caregiver, or whānau member |
| Information domains | Completed components; accessible results; advice; referrals; recommendations; relevant immunisation information; next steps |
| Candidate FHIR resources | `Composition`, potentially referencing selected underlying resources |
| Source | Approved information from completed forms and/or the Clinical B4SC Summary |
| Generation | System-generated according to approved clinical and consumer-content rules |

## Traceability and safety

Each summary element should remain traceable to its source and generation rule. Summary design must define:

- which source is authoritative when values differ;
- how corrections and withdrawn information are handled;
- how incomplete and unavailable components are represented;
- how clinical review or approval is recorded;
- which information may be shown to whānau;
- how licensed content is protected; and
- how summary versions relate to the underlying form and resource versions.

