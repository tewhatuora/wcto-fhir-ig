## Overview

This page describes the current working FHIR information model for digital Well Child Tamariki Ora services.

B4SC is the initial use case.

### High-Level Model

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
Assessment
Questionnaire
      ↓
QuestionnaireResponse
      ↓
Activity completion
      ↓
Overall health event status