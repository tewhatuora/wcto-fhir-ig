
{% include wcto-style.html %}

WCTO Digital Services are intended to support delivery of Well Child Tamariki Ora contacts using reusable national services, WCTO-specific APIs and structured FHIR forms.

The initial implementation focus is **Core Contact 8 – Before School Check (B4SC)**.

### Why this Guide Exists

The guide provides a common reference for Health New Zealand product and delivery teams, WCTO service providers, PMS/EMR vendors, FHIR form developers and National Data Service teams.

It describes the proposed service boundaries, integration patterns, forms, summaries, information population and FHIR approach without reproducing detailed specifications maintained by existing National Data Services.

### Solution Context

| Capability | Role |
|---|---|
| National Data Services | Authoritative identity, enrolment, immunisation, practitioner and organisation information |
| WCTO Schedule API | Due status, assignment, component tracking and completion |
| Magic Link API | Secure access to the relevant FHIR form |
| FHIR Forms | Structured capture of assessment information |
| WCTO Summary API | Completed forms and consolidated summaries |

### Initial Use Case

B4SC is the current implementation focus. The service patterns should remain reusable so they can support future WCTO contacts without unnecessary B4SC-specific constraints.

See [Purpose & Scope](purpose-scope.html) and [End-to-End Workflow](workflow.html).
