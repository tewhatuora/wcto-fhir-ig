
{% include wcto-style.html %}

| Service | Purpose in WCTO | Potential use |
|---|---|---|
| **NHI API** | Child identity, demographics and contact information | Populate or validate child details |
| **NES API** | GP enrolment and provider information | Populate GP/practice and support WCTO provider nomination where supported |
| **AIR API** | Immunisation history, schedule/status and updates | Populate or validate immunisation information |
| **HPI API** | Practitioner, role and healthcare organisation information | Attribute clinical contributions and populate provider information |

### Authoritative Specifications

Use the authoritative National API implementation guides for supported resources, operations, security, validation, conformance and onboarding requirements.

### Form Population

National Data Service information may populate forms only where the context is authenticated, authorised and appropriate. Unauthenticated launches must not retrieve or display protected National Data Service information.
