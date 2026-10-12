### Overview

The **B4 School Check (B4SC)** is the initial Well Child Tamariki Ora (WCTO) use case supported by this Implementation Guide.

B4SC is the final universal WCTO contact and is generally delivered around the age of four.

The WCTO digital model is intended to support providers to understand:

- whether a child is due for B4SC;
- which activities are required;
- which activities have been completed;
- which activities remain outstanding;
- who is responsible for each activity; and
- the overall status of the B4SC health event.

---

### B4SC at a Glance

| Concept | Purpose | Proposed FHIR Representation |
|---|---|---|
| B4SC service definition | Defines the reusable B4SC service | `PlanDefinition` |
| Eligible children | Identifies children approaching or due for B4SC | `Group` |
| Child-specific B4SC event | Represents the B4SC for an individual child | `CarePlan` |
| Required activity | Tracks work required to complete B4SC | `Task` |
| Assessment definition | Defines a structured assessment | `Questionnaire` |
| Completed assessment | Records assessment responses | `QuestionnaireResponse` |
| Participation | Represents consent or participation | `Consent` |
| Overall responsibility | Identifies the responsible provider or team | `CareTeam` |
| Activity responsibility | Identifies who is responsible for an activity | `Task.owner` |

---

### B4SC Workflow

| Step | Activity | Potential FHIR Representation |
|---|---|---|
| 1 | Identify a child approaching B4SC eligibility | `Patient`, `Group` |
| 2 | Establish the B4SC health event | `CarePlan` |
| 3 | Record consent or participation | `Consent`, `Task` |
| 4 | Identify required B4SC activities | `Task` |
| 5 | Complete structured assessments | `Questionnaire`, `QuestionnaireResponse` |
| 6 | Update individual activity status | `Task.status` |
| 7 | Determine overall B4SC completion | `CarePlan.status` |

The exact interaction between these resources remains subject to confirmation as the detailed WCTO service design is developed.

---

### Eligibility and Cohort

Current working requirements indicate that:

- B4SC eligibility is primarily based on the child approaching or turning four years old;
- children are included regardless of citizenship or health eligibility status; and
- cohort generation may need to occur approximately two to three months before the child's fourth birthday to support service preparation.

`Group` is the current candidate for representing the population of children who are eligible or due for B4SC.

The detailed rules for cohort creation, ownership, refresh and maintenance remain to be confirmed.

---

### B4SC Health Event

`CarePlan` is the current candidate for representing the B4SC health event for an individual child.

The CarePlan may provide the overall context for:

- the child;
- the B4SC service;
- required activities;
- assigned providers;
- activity progress; and
- overall B4SC status.

The detailed relationship between the reusable `PlanDefinition` and the child-specific `CarePlan` remains to be confirmed.

---

### B4SC Activities

The current working B4SC model includes the following activities:

| Activity | Purpose |
|---|---|
| Consent | Record participation or consent before the remaining assessments proceed |
| Nursing Assessment | Capture the B4SC nursing assessment |
| Whānau Assessment | Capture relevant whānau or caregiver information |
| Early Childhood Education Assessment | Capture information relevant to the ECE component |
| Vision and Hearing | Capture the vision and hearing component |

`Task` may be used to represent each required activity and its progress.

A Task may record:

- activity status;
- activity owner;
- relationship to the B4SC CarePlan;
- associated assessment; and
- completion information.

---

### Consent and Participation

Consent is expected to occur before the remaining B4SC assessment activities.

Once consent requirements have been satisfied, the remaining assessments should generally be able to proceed independently and in any appropriate order.

Potential representation includes:

- `Consent`;
- a consent-related `Task`; and
- Questionnaire-based consent capture where required.

The final representation of consent and participation remains to be confirmed.

---

### Structured Assessments

FHIR Forms are expected to support structured B4SC assessments.

`Questionnaire` defines the assessment structure.

`QuestionnaireResponse` records the completed assessment for an individual child.

The general pattern is:

| Activity | Relationship |
|---|---|
| Required assessment | Represented by a `Task` |
| Assessment definition | Referenced `Questionnaire` |
| Completed assessment | `QuestionnaireResponse` |
| Activity completion | Associated `Task` status updated |

The detailed launch, pre-population, submission and extraction patterns will be defined as the FHIR Forms capability is confirmed.

---

### Assessment Ordering

Consent is expected to occur first.

After consent, the following activities should generally be able to occur in any order:

- Nursing Assessment;
- Whānau Assessment;
- Early Childhood Education Assessment; and
- Vision and Hearing.

The Implementation Guide should not introduce sequencing between these activities unless there is a confirmed clinical or business requirement.

---

### Assignment and Responsibility

B4SC activities may be delivered by different providers or workforces.

Two levels of responsibility may therefore be required.

#### Overall Responsibility

`CareTeam` may represent the provider or team responsible for the overall B4SC health event.

#### Activity Responsibility

`Task.owner` may identify the provider or workforce responsible for an individual activity.

For example:

| B4SC Activity | Example Responsibility |
|---|---|
| Nursing Assessment | Nursing provider |
| Whānau Assessment | Relevant WCTO provider |
| ECE Assessment | ECE contributor or responsible service |
| Vision and Hearing | Vision and hearing workforce |

The relationship between `CareTeam`, `Task.owner` and NES provider nomination remains to be confirmed.

---

### National Digital Services

#### NHI

NHI may provide authoritative child identity and demographic information.

#### NES

NES may support enrolment and WCTO provider nomination information.

#### AIR

The Aotearoa Immunisation Register may provide national immunisation information relevant to the B4SC interaction.

Existing national capabilities should be reused where appropriate rather than duplicated within the WCTO solution.

---

### Status and Progress

B4SC status may need to be represented at multiple levels.

| Level | Potential FHIR Representation |
|---|---|
| Overall B4SC health event | `CarePlan.status` |
| Individual activity | `Task.status` |
| Assessment | `QuestionnaireResponse.status` |
| Participation | `Consent.status` |

The provider experience should make it easy to understand:

- what has been completed;
- what is currently in progress;
- what remains outstanding; and
- who is responsible for the next activity.

---

### Completion

The detailed business rules for determining B4SC completion remain to be confirmed.

Potential considerations include:

- consent requirements have been satisfied;
- all mandatory Tasks are complete;
- required assessments are complete;
- optional activities do not prevent overall completion;
- declined activities are handled according to agreed programme rules; and
- activities that cannot be completed are represented appropriately.

The overall B4SC event should only be marked complete once the agreed completion rules have been met.

---

### Provider View

The Provider View should give authorised users a clear view of the child's current B4SC position.

It should support:

- visibility of the overall B4SC status;
- completed and outstanding activities;
- activity ownership;
- relevant assessment information;
- consent or participation status;
- relevant information from national services; and
- clear indication of what needs to happen next.

The Provider View is a capability rather than a single FHIR resource and may draw information from `Patient`, `CarePlan`, `Task`, `CareTeam`, `Consent`, `Questionnaire` and `QuestionnaireResponse`.

---

### Out of Scope

The following capabilities are outside the current B4SC scope of this Implementation Guide:

- appointment and booking management; and
- referral workflow management.

These capabilities may continue to be managed within provider systems or other existing services.

---

### Areas to Confirm

The following B4SC requirements remain to be confirmed:

- who creates and owns the eligible cohort;
- what triggers creation of the B4SC CarePlan;
- how `PlanDefinition` drives the child-specific health event;
- which Tasks are mandatory;
- the required Task status lifecycle;
- what happens when consent is declined;
- what constitutes completion of each assessment;
- what constitutes overall B4SC completion;
- how partially completed checks are represented;
- how overall provider responsibility is represented;
- how NES provider nomination relates to assignment;
- which B4SC Questionnaires are nationally approved; and
- which existing New Zealand and Health New Zealand FHIR artefacts can be reused.