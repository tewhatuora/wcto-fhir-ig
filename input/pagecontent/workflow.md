## Overview

This page describes the high-level workflow for digital Well Child Tamariki Ora services.

B4SC is the initial use case.

## High-Level Workflow

```text
Health Service Definition
PlanDefinition
        ↓
Eligible Child Cohort
Group
        ↓
Scheduled Health Event
CarePlan
        ↓
Participation / Consent
Consent
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
Overall CarePlan status updated