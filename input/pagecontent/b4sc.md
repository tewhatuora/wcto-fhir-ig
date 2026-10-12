## Overview

The B4 School Check (B4SC) is the initial Well Child Tamariki Ora use case supported by this Implementation Guide.

B4SC is the final universal WCTO contact and is generally delivered around the age of four.

## B4SC Service Model

```text
B4 School Check Service
PlanDefinition
        ↓
Eligible B4SC Cohort
Group
        ↓
Child-specific B4SC Event
CarePlan
        ↓
Required Activities
Task
        ↓
Structured Assessment
Questionnaire
        ↓
QuestionnaireResponse
        ↓
Task status updated
        ↓
Overall B4SC status updated