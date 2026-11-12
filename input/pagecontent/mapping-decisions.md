<link rel="stylesheet" href="assets/css/wcto.css">

# Data Mapping Decisions and Sign-off

**Status: Draft — not approved.** Before API design is finalized, record each decision, approver, date, evidence and change impact in the version-controlled mapping and the stakeholder review platform (Health NZ Confluence, GitHub or SharePoint).

| ID | Decision needed | Proposed direction | Owner | Status |
|---|---|---|---|---|
| DM-01 | Canonical identifiers and NZ Base profiles | Reuse national conventions and profiles | FHIR architecture | Open |
| DM-02 | Consent semantics | Keep response evidence; assess formal Consent requirement | Clinical/privacy | Open |
| DM-03 | Parent/nurse review and authorship | Separate respondent and clinical review events | Clinical | Open |
| DM-04 | Questionnaire item mappings and scoring | Map original approved forms before finalization | Clinical/forms | Blocked — originals/licensing |
| DM-05 | Structured Observation extraction | Extract only agreed reusable results | Clinical/data | Open |
| DM-06 | Summary representation and retention | Choose API-only or persistent document resources | Product/architecture | Open |
| DM-07 | Referral closure vs clinical completion | Nurse gate completes clinical check; referral may remain open | Business | Proposed, pending sign-off |
| DM-08 | Schedule status transformation | Derive due/partial/complete from accepted state | Product/API | Open |
| DM-09 | Two-way updates, correction and audit | Define ownership and reconciliation rules | Integration | Open |
| DM-10 | Vision/hearing and family form ordering | Independent or concurrent | Business | Working decision, pending formal sign-off |
