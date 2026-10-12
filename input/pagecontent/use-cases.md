## Overview

This page describes the initial business use cases supported by the Well Child Tamariki Ora Implementation Guide.

B4SC is the initial use case.

### Use Case 1 — Identify Child Due for B4SC

#### Purpose

Identify children approaching or reaching B4SC eligibility.

#### Potential FHIR Resources

- `Patient`
- `Group`

#### Flow

```text
Child population
      ↓
Eligibility rules
      ↓
Child becomes due
      ↓
Eligible cohort
Group