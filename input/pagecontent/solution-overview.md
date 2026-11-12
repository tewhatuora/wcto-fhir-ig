<link rel="stylesheet" href="assets/css/wcto.css">

# Solution Overview

WCTO provides a reusable service layer for child health contacts. The B4SC use case combines population identification, coordination, clinical workflow, forms and summary outputs.

## Logical components

| Component | Responsibility | Design status |
|---|---|---|
| Cohorts | Identify eligible children and provide ongoing changes | Source and update model to be confirmed |
| National services | NHI, NES, HPI and AIR provide authoritative information | Existing services; access patterns to confirm |
| Coordinator application | Staff nomination, assignment, launch and follow-up activities | Proposed integration workflow |
| WCTO Scheduler | Create/reuse B4SC CarePlan and orchestrate Tasks | Proposed design |
| Schedule API | Expose due items and progress to authorised consumers | Contract to be developed |
| Magic Link API | Launch authorised form sessions on request | Contract and access controls to confirm |
| FHIR forms | Capture structured QuestionnaireResponses and clinical review | Form definitions under development |
| Clinical workflow layer | Persist CarePlan, Task and assessment evidence | Draft FHIR model |
| Summary API | Produce clinical and whānau outputs from assessment evidence | Rules and contract to confirm |

## Logical service relationships

The diagram introduces system responsibilities; it does not imply that every connection is a direct approved API call. See [Architecture and Data Model](architecture.html) for resource relationships, [B4SC Workflow](b4sc-workflow.html) for sequence and [API Contracts](apis.html) for interface detail.

![WCTO logical service relationships](wcto-logical.svg)
