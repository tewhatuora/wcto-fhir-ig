## Welcome

This Implementation Guide defines the emerging FHIR-based integration model for digital Well Child Tamariki Ora (WCTO) services.

The B4 School Check (B4SC), also referred to as WCTO Core Contact 8, is the initial use case.

The purpose of the guide is to establish reusable patterns that can support B4SC now and other WCTO contacts in the future.

The guide describes:

- the WCTO business context;
- actors and participating systems;
- business rules;
- common workflow;
- B4SC use cases;
- the proposed FHIR information model;
- guidance for API implementers.

### Current Scope

The current implementation model focuses on:

- WCTO health service definition;
- identification of eligible children;
- scheduled child-specific health events;
- required and outstanding activity tracking;
- structured assessments;
- participation and consent;
- provider and activity assignment;
- WCTO status tracking;
- integration with relevant national digital services.

The following capabilities are outside the current scope:

- appointment and booking management;
- referral workflow management.

These capabilities may continue to be managed within provider systems or other existing services.

### Initial FHIR Model

The current working model is:

```text
Health Service
PlanDefinition
      ↓
Eligible Cohort
Group
      ↓
Scheduled Health Event
CarePlan
      ↓
Required / Outstanding Activities
Task
      ↓
Structured Assessment
Questionnaire
      ↓
QuestionnaireResponse
      ↓
Activity status updated
      ↓
Overall health event status updated
```

Supporting concepts include:

```text
CareTeam / Task.owner
        ↓
Assignment and responsibility
```

and:

```text
Consent
   ↓
Participation
```

The model is still being refined and should not be treated as a final API specification.

### Guide Content

1. [Business Context](business-context.html)
2. [Business Rules](business-rules.html)
3. [Actors and Systems](actors.html)
4. [Common Workflow](workflow.html)
5. [Use Cases](use-cases.html)
6. [B4 School Check](b4sc.html)
7. [FHIR Information Model](fhir-model.html)
8. [API Development Guide](api-development-guide.html)

### Implementation Status

This Implementation Guide is under active development.

FHIR resource mappings, profiles, terminology, API interactions and business rules will continue to be refined as programme, clinical and technical requirements are confirmed.

Where this guide identifies a resource as proposed or to be confirmed, implementers should not assume that the design is final.