### Overview

This page describes the high-level workflow for digital Well Child Tamariki Ora (WCTO) services.

The B4 School Check (B4SC) is the initial use case.

The workflow separates:

- the reusable WCTO service definition;
- identification of the eligible child cohort;
- creation of a child-specific health event;
- consent and participation;
- required activities;
- structured assessments;
- provider responsibility; and
- status tracking.

---

### High-Level Workflow

| Step | Workflow Activity | Potential FHIR Representation |
|---|---|---|
| 1 | Define the WCTO health service | `PlanDefinition` |
| 2 | Identify children who are eligible or due | `Group` |
| 3 | Create the child-specific health event | `CarePlan` |
| 4 | Record participation or consent | `Consent`, `Task` |
| 5 | Create or identify required activities | `Task` |
| 6 | Complete structured assessments | `Questionnaire`, `QuestionnaireResponse` |
| 7 | Update individual activity status | `Task.status` |
| 8 | Determine overall health event status | `CarePlan.status` |

The exact interaction between these resources remains to be confirmed as the WCTO service model is refined.

---

### 1. Health Service Definition

A reusable WCTO health service may be represented using `PlanDefinition`.

For B4SC, the service definition may describe activities such as:

| Activity | Purpose |
|---|---|
| Consent | Record participation before other B4SC activities proceed |
| Nursing Assessment | Capture the nursing component |
| Whānau Assessment | Capture relevant whānau or caregiver information |
| Early Childhood Education Assessment | Capture information relevant to the ECE component |
| Vision and Hearing | Capture the vision and hearing component |

The detailed structure of the PlanDefinition remains to be confirmed.

---

### 2. Identify Eligible Children

FHIR `Group` is the current candidate for representing children who are eligible or due for a WCTO contact.

For B4SC, current working requirements indicate that:

- eligibility is primarily based on the child approaching or turning four years old;
- cohort generation may occur approximately two to three months before the fourth birthday; and
- the cohort may support service preparation and coordination.

The detailed cohort generation and ownership model remains to be confirmed.

---

### 3. Create the Child-Specific Health Event

Once a child is identified as due for a WCTO service, a `CarePlan` may represent the scheduled or active health event for that child.

The CarePlan may provide the overall context for:

- the child;
- the relevant WCTO service;
- required activities;
- provider responsibility;
- activity progress; and
- overall status.

The detailed relationship between `PlanDefinition` and `CarePlan` remains to be confirmed.

---

### 4. Record Participation and Consent

Consent is expected to occur before the remaining B4SC assessment activities.

Potential representation includes:

- `Consent`;
- a consent-related `Task`; and
- Questionnaire-based consent capture where required.

Once the consent requirements have been satisfied, the remaining assessment activities may proceed.

The final representation of participation and consent remains to be confirmed.

---

### 5. Create and Track Required Activities

Individual WCTO activities may be represented using `Task`.

For B4SC, the current working activity set includes:

| Activity | Potential Representation |
|---|---|
| Consent | `Task` |
| Nursing Assessment | `Task` |
| Whānau Assessment | `Task` |
| Early Childhood Education Assessment | `Task` |
| Vision and Hearing | `Task` |

Each Task may include:

- status;
- owner;
- relationship to the CarePlan;
- associated assessment;
- completion information.

---

### 6. Complete Structured Assessments

FHIR Forms are expected to support structured WCTO assessments.

The general pattern is:

| Step | Resource |
|---|---|
| Required activity | `Task` |
| Assessment definition | `Questionnaire` |
| Completed assessment | `QuestionnaireResponse` |
| Activity completion | `Task.status` updated |

The detailed launch, pre-population, submission and extraction pattern will be defined as the FHIR Forms capability is confirmed.

---

### 7. Assessment Ordering

Consent is expected to occur first.

After consent, the remaining B4SC assessments should generally be able to occur in any appropriate order.

The current working assessment set includes:

- Nursing Assessment;
- Whānau Assessment;
- Early Childhood Education Assessment; and
- Vision and Hearing.

The Implementation Guide should not introduce additional sequencing unless there is a confirmed clinical or business requirement.

---

### 8. Assignment and Responsibility

Responsibility may exist at more than one level.

#### Overall Responsibility

`CareTeam` may represent the provider or team responsible for the overall WCTO health event.

#### Activity Responsibility

`Task.owner` may represent the provider or workforce responsible for an individual activity.

For example:

| Activity | Example Responsibility |
|---|---|
| Nursing Assessment | Nursing provider |
| Whānau Assessment | Relevant WCTO provider |
| ECE Assessment | ECE contributor or responsible service |
| Vision and Hearing | Vision and hearing workforce |

The relationship between `CareTeam`, `Task.owner` and provider nomination remains to be confirmed.

---

### 9. Update Activity Status

As activities are completed, the associated Task status should be updated.

Potential activity states may include:

- requested;
- in progress;
- completed;
- declined; or
- unable to complete.

The final Task status lifecycle remains to be confirmed.

---

### 10. Determine Overall Health Event Status

The overall WCTO health event may be represented using `CarePlan.status`.

Potential completion considerations include:

- consent requirements satisfied;
- all mandatory Tasks completed;
- required assessments completed;
- optional activities not blocking completion;
- declined activities handled appropriately; and
- unable-to-complete activities handled according to programme rules.

The final business rules for overall completion remain to be confirmed.

---

### B4SC Example

A simplified B4SC workflow is:

| Stage | Description |
|---|---|
| Eligibility | Child is identified as approaching or due for B4SC |
| Health event | A child-specific B4SC CarePlan is established |
| Consent | Participation requirements are completed |
| Activities | Required B4SC Tasks are available |
| Assessments | Relevant Questionnaires are completed |
| Responses | QuestionnaireResponses are recorded |
| Progress | Individual Task statuses are updated |
| Completion | Overall B4SC status is determined |

This allows different B4SC components to be completed by different workforces while maintaining visibility of the overall health event.

---

### Provider Workflow

The Provider View should make it easy for an authorised user to understand:

- which WCTO health event is active for the child;
- what has already been completed;
- what is currently in progress;
- what remains outstanding;
- who is responsible for each activity;
- which assessment needs to be completed next; and
- the overall status of the WCTO event.

Where possible, this information should be available through the provider's existing PMS or EMR workflow.

---

### Coordinator Workflow

The Coordinator View may support authorised users working across a defined cohort.

It may provide visibility of:

- children who are eligible or due;
- active WCTO health events;
- outstanding activities;
- activity ownership;
- incomplete or overdue activity;
- overall completion status.

The Coordinator View supports population-level coordination rather than direct completion of an individual clinical assessment.

---

### Status Tracking

| Workflow Level | Potential FHIR Representation |
|---|---|
| Overall health event | `CarePlan.status` |
| Individual activity | `Task.status` |
| Assessment | `QuestionnaireResponse.status` |
| Participation | `Consent.status` |

The relationship between FHIR status values and programme-level business status remains to be confirmed.

---

### Out of Scope

The following workflows are outside the current scope of this Implementation Guide:

- appointment and booking management; and
- referral workflow management.

These capabilities may continue to be managed within provider systems or other existing services.

---

### Areas to Confirm

The following workflow details remain to be confirmed:

- who generates the eligible cohort;
- what triggers creation of the child's CarePlan;
- how `PlanDefinition` relates to CarePlan creation;
- which Tasks are mandatory;
- the required Task status lifecycle;
- how Task ownership is assigned;
- how provider nomination relates to assignment;
- how Consent is represented;
- what happens when consent is declined;
- what constitutes completion of an assessment;
- what constitutes overall CarePlan completion; and
- how partially completed WCTO events are represented.