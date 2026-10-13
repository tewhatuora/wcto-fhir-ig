---
title: Architectural Principles
---

# Architectural principles

| Principle | Description |
|---|---|
| Reuse national services | National Data Services remain authoritative for demographic, enrolment, immunisation, practitioner, role, and organisation information. |
| Reference rather than replicate | This guide links to authoritative national specifications instead of copying content that may change independently. |
| Capture information once | Information already available from an authoritative source should be reused when the access context, purpose, and authorisation permit it. |
| Support multiple channels | Forms may be launched from clinical systems, consumer portals, or approved email and SMS invitation workflows. |
| Separate form capture from workflow management | Forms capture assessment information. Eligibility, assignment, component progress, and overall completion are managed through the scheduling capability. |
| Preserve authorship and provenance | Information contributed by whānau, educators, and health professionals must retain its source, author, role, organisation, and time context where available. |
| Support staged and multi-author completion | Where appropriate, one person may begin a form and another authorised person may review, complete, or update it. |
| Minimise disclosure | A form launch must reveal only the information necessary and permitted for that context. Unauthenticated access must not automatically disclose protected health information. |
| Use standards-based interoperability | Information should use established FHIR resources, profiles, terminology, and implementation patterns where suitable. |
| Design for future reuse | Shared WCTO capabilities and reusable form components should not be unnecessarily limited to B4SC. |
| Respect licensed content | Licensed assessments, questions, scoring, and interpretation material must be implemented and distributed according to the applicable licence. |
| Preserve source information | Derived clinical resources and summaries should remain traceable to the submitted form and other authoritative sources from which they were produced. |
| Manage versions explicitly | Forms, responses, profiles, derived resources, and summaries must remain interpretable when national requirements or licensed content change. |

