{% include wcto-style.html %}


## Human actors

| Actor | Proposed participation |
|---|---|
| Child / tamariki | Subject of the B4SC assessment and CarePlan |
| Whānau / caregiver | Provides consent and family assessment information |
| B4SC coordinator | Reviews nominations, provider assignment, form status and follow-up |
| Nurse / clinician | Reviews family contributions, completes clinical evaluation and determines clinical completion |
| Vision and Hearing provider | Records screening activity and results |
| ECE / teacher | May provide educator questionnaire information where required |

## System actors

Cohorts, Scheduler, Coordinator application, PMS/EMR, national services, FHIR forms, shared FHIR server, Magic Link API and Summary API are described in [Solution Overview](solution-overview.html).

## Security design boundary

A person receiving a form URL does not, by itself, establish that the person is authorised to access the child's health information. Authentication, consent, authorisation, link expiry, audit and relationship verification require a confirmed threat model and access design. No particular login method is prescribed here.
