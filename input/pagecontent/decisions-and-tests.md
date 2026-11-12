<link rel="stylesheet" href="assets/css/wcto.css">

# Architecture decisions, open questions and verification

## Confirmed working decisions

- WCTO architecture with B4SC as initial use case.
- Separate WCTO repository/IG; **proposed** reuse of the existing shared FHIR server infrastructure.
- One B4SC CarePlan per child per check episode; multiple Tasks.
- Consent, whānau forms and Vision/Hearing may be completed in any order or concurrently.
- Nurse evaluation is the final B4SC clinical completion gate.
- Scheduler calculates authoritative status; Coordinator is staff-facing.
- Future Snowflake reporting and school outcome sharing are outside initial build.

## Pending sign-off

| Decision | Recommended default | Owner to confirm |
|---|---|---|
| Shared FHIR server | Reuse existing infrastructure, separate WCTO profiles | Solution architect / platform |
| NIMS vs NES nomination | Verify authoritative write/read contract; do not invent update endpoint | National service owners |
| Cohorts and updates | Re-evaluate age-four eligibility continuously and reconcile changes | Cohorts / programme |
| Referral closure | Keep CarePlan active until outstanding outcomes resolved | Clinical and programme |
| Summary trigger | On nurse evaluation completion; retry independently | Clinical / product |
| Multi-author forms | Separate submissions/review with explicit Provenance | Forms / clinical / privacy |
| SDQ Teacher/ECE | Optional task with appropriate invitation, privacy and licensing | Clinical / programme |
| Shared server FHIR release and capabilities | Validate R4/R4B, transaction, conditional create, subscriptions | FHIR platform |
| Exact API contracts | Confirm resources, endpoints, error models and security | Integration / vendors |
| Reference architecture image | Reconcile NHI/NES/NIMS/WCA connections with original screenshot | Architecture team |

## Acceptance scenarios

1. **Idempotency:** Replayed cohort event does not create a duplicate B4SC CarePlan or Tasks.
2. **Parallel forms:** Vision/Hearing can complete before consent or whānau forms.
3. **Parallel forms:** Whānau forms can complete before Vision/Hearing without blocking submission.
4. **Clinical gate:** Completing all non-nurse Tasks does not mark B4SC clinically complete.
5. **Clinical gate:** Authorised nurse evaluation completion marks B4SC clinically complete even when referral follow-up remains open.
6. **Referral closure:** Open referral prevents CarePlan administrative closure under proposed rule.
7. **Summary:** Summary generation failure does not undo completed nurse evaluation; retry succeeds without duplicate summaries.
8. **Form linkage:** QR with wrong patient, Task, questionnaire version or actor does not complete Task.
9. **Multi-author:** Parent submission cannot bypass nurse review/sign-off where required.
10. **Assignment:** Coordinator reassignment is reflected consistently in Schedule API and FHIR Task ownership.
11. **Eligibility changes:** Changed/deceased child status is flagged for controlled review; no silent destruction of clinical records.
12. **Security:** Expired/replayed magic links fail and cannot access another child's response.
13. **Future scope:** No Snowflake or school outcome transfer is enabled in initial implementation.
14. **Audit:** Every automated and manual state transition records provenance, timestamp and correlation ID.

## Integration guidance

Copy/reconcile these pages into the existing IG's `input/pagecontent` structure, update the navigation/menu configuration, then add validated FSH profiles and real Questionnaire/ValueSet definitions. Do not publish sample canonical URLs or profiles as production artefacts until reviewed. Test SUSHI and IG Publisher after integration.
