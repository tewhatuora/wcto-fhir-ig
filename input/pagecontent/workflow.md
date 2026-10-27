{% include wcto-style.html %}

This page describes the current logical workflow for WCTO Digital Services.

The diagrams are conceptual and intended to show how the proposed services, forms and summary outputs fit together. Detailed API interactions, security controls, status transitions and final FHIR behaviour remain subject to design confirmation.

### Overall Logical Flow

```text
National eligibility / scheduling process
                 │
                 ▼
          WCTO Schedule API
      Child due for WCTO contact
                 │
                 ▼
        Coordinator capability
     NHI contact details / NES GP
                 │
                 ▼
       Assign or reassign provider
                 │
                 ▼
      Clinical or consumer channel
     PMS / EMR / portal / invitation
                 │
                 ▼
            Magic Link API
                 │
                 ▼
        Determine launch context
                 │
         ┌───────┴────────┐
         │                │
         ▼                ▼
  Authenticated      Unauthenticated
     context             context
         │                │
         │                └── Retrieve blank form
         │                    No National Data Service
         │                    or PMS / EMR population
         │
         ├── NHI
         ├── NES
         ├── AIR
         ├── HPI
         ├── PMS / EMR context
         ├── WCTO Schedule API
         └── Existing form response
         │
         └───────┬────────┘
                 │
                 ▼
     Retrieve and present FHIR form
                 │
                 ▼
   Whānau / nurse / VHT / educator
      completes relevant section
                 │
                 ▼
      Submit QuestionnaireResponse
                 │
         ┌───────┴────────┐
         │                │
         ▼                ▼
 Create or update     Update WCTO
  FHIR resources     Schedule status
         │                │
         └───────┬────────┘
                 │
                 ▼
          WCTO Summary API
                 │
       ┌─────────┼──────────┐
       │         │          │
       ▼         ▼          ▼
   Completed   Clinical   Whānau
 individual    B4SC       B4SC
   forms      Summary    Summary
       │         │          │
       └─────────┴──────────┘
                 │
                 ▼
    Authorised PMS / EMR / portal
     and clinical viewing channels
```

> **Supporting National Data Services:** NHI, NES, AIR and HPI may be used in authenticated and authorised workflows where permitted.

> **Coordinator capability:** The final coordinator application remains to be confirmed and may be provided through Provider View or another solution.

### Multi-Author Form Flow

This pattern is expected to apply particularly to:

- Consent Form
- Health History and Nursing Assessment Form
- PEDS-R Form

```text
Whānau receives or opens a form
                 │
                 ▼
      Completes whānau sections
                 │
                 ▼
       Saves or submits response
                 │
                 ▼
Authorised nurse retrieves existing response
                 │
                 ▼
 Reviews whānau-provided information
                 │
                 ▼
Adds clinical findings, scoring,
advice or referrals
                 │
                 ▼
     Finalises the relevant form
                 │
         ┌───────┴────────┐
         │                │
         ▼                ▼
 WCTO Schedule API   WCTO Summary API
   status updated     form made available
```

Authors and provenance should be retained so information added by whānau is distinguishable from information reviewed or added by a health professional.

### Vision and Hearing Flow

```text
Child assigned for Vision and Hearing assessment
                     │
                     ▼
              WCTO Schedule API
                     │
                     ▼
Vision and Hearing Technician launches combined form
                     │
                     ▼
         Magic Link API retrieves form
                     │
                     ▼
Authenticated context may populate:
NHI child details + HPI practitioner details
                     │
                     ▼
    Vision and hearing findings documented
                     │
                     ▼
          Combined form submitted
                     │
             ┌───────┴────────┐
             │                │
             ▼                ▼
      WCTO Schedule API   WCTO Summary API
        status updated     form made available
```

### Summary-Generation Flow

The Summary API draws on completed forms, relevant national information and WCTO workflow status to produce authorised summary outputs.

```text
Consent Form
Health History and Nursing Assessment Form
PEDS-R Form
SDQ Parent Form
SDQ Teacher/ECE Form
Vision and Hearing Assessment Form
National Data Service information
WCTO Schedule status
                 │
                 ▼
          WCTO Summary API
                 │
         ┌───────┴────────┐
         │                │
         ▼                ▼
   Clinical B4SC      Whānau B4SC
      Summary            Summary
```

Completed individual forms also remain available as discrete clinical artefacts through the WCTO Summary API.

### Workflow Notes

- Eligibility / cohorting identifies children approaching the relevant WCTO contact; the final implementation mechanism remains to be confirmed.
- Provider assignment and reassignment are managed through the WCTO workflow, with NES interaction subject to the NES specification and agreed business rules.
- Authenticated launches may use permitted NHI, NES, AIR, HPI, PMS/EMR, WCTO Schedule and existing form information.
- Unauthenticated launches retrieve a blank form and must not automatically expose protected information from National Data Services or PMS/EMR systems.
- Relevant form submission may update WCTO Schedule status.
- Referral information may be recorded and surfaced, but this guide does not define an external end-to-end referral management system.
- Final status models, sequence details, security controls and conformance requirements remain to be confirmed.
