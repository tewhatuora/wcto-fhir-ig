---
title: National Data Services
---

# National Data Services

National Data Services provide authoritative demographic, enrolment, immunisation, practitioner, role, and organisation information. They may be accessed only within an authenticated, authorised, and appropriate purpose-of-use context.

| Service | WCTO purpose | Relevant information domains | Primary candidate FHIR resources | Potential form use |
|---|---|---|---|---|
| NHI API | Retrieve or validate child identity, demographic, address, and contact information | Identity, demographics, address, and contact details | `Patient` | Populate or validate child information |
| NES API | Retrieve enrolment and provider information and support WCTO provider nomination where permitted | GP enrolment, provider enrolment, nominated WCTO provider, and organisation information | Resources defined by the authoritative NES IG | Populate enrolment and provider details; support nomination or update where supported |
| AIR API | Retrieve relevant immunisation information | Immunisation history and immunisation status | `Immunization` and resources defined by the authoritative AIR IG | Populate or validate immunisation information |
| HPI API | Retrieve practitioner, role, designation, and healthcare organisation information | Practitioner identity, practitioner role, designation, and organisation | `Practitioner`, `PractitionerRole`, and `Organization` | Populate or validate author, role, and provider information |

## Authoritative specifications

The exact resources, profiles, interactions, operations, supported fields, search parameters, security rules, and conformance requirements for each national service are defined by its authoritative Implementation Guide.

This WCTO guide should link to those specifications and should not duplicate their normative content.

> **Publication note:** Insert the approved canonical links for the NHI, NES, AIR, and HPI Implementation Guides before publication.

## Use within forms

Information retrieved from a national service is not automatically suitable for every form or every user. Population must consider:

- authenticated identity and child context;
- role and authorisation;
- purpose of access;
- minimum necessary information;
- freshness and source-system status;
- whether the value should be displayed, validated, or copied into the response; and
- whether the user is permitted to correct the information or must update it through the authoritative service.

