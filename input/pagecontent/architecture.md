
{% include wcto-style.html %}

The proposed architecture separates authoritative national information, WCTO workflow services and assessment forms so each capability has a clear responsibility.

### Architectural Principles

| Principle | Description |
|---|---|
| **Reuse National Data Services** | NHI, NES, AIR and HPI remain authoritative for the information they manage. |
| **Reference rather than replicate** | Link to authoritative National API specifications rather than copying them. |
| **Capture information once** | Reuse existing information where access context permits. |
| **Support multiple channels** | Forms may be launched from clinical systems, consumer portals and controlled invitation workflows. |
| **Separate forms from workflow** | Forms capture assessment information; due, assignment and completion are managed through the Schedule API. |
| **Preserve authorship** | Information contributed by whānau, educators and health professionals should retain source and author context. |
| **Support multi-author completion** | Selected forms may be started by one author and completed by another authorised author. |
| **Protect unauthenticated access** | Unauthenticated launches must not expose or auto-populate protected health information. |
| **Standards-based interoperability** | Use established FHIR resources and profiles where suitable. |
| **Support future reuse** | Avoid unnecessary B4SC-specific constraints. |
| **Respect licensed assessments** | Licensed forms and scoring approaches must follow applicable licensing conditions. |

```text
National Data Services
NHI · NES · AIR · HPI
        │
        ▼
WCTO Digital Services
Schedule · Magic Link · Summary
        │
        ▼
FHIR Forms and FHIR information
        │
        ▼
PMS / EMR / portal / authorised viewing
```

> **Draft:** Detailed infrastructure topology, hosting and security controls will be added during detailed design.
