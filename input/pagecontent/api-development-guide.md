
## `api-development-guide.md`

```markdown
# API Development Guide

## Overview

This page provides implementation guidance for software vendors and developers integrating with Well Child Tamariki Ora digital services.

B4SC is the initial use case.

Detailed API behaviour will be added as the WCTO API architecture and supported interactions are confirmed.

## API Scope

The current WCTO integration model is expected to support:

- identification of eligible children;
- access to WCTO health events;
- access to required and outstanding activities;
- structured FHIR assessments;
- submission of completed QuestionnaireResponses;
- activity status updates;
- provider and activity assignment;
- consent and participation information;
- overall WCTO status visibility.

Appointment and booking management and referral workflow management are outside the current scope.

## FHIR Version

This Implementation Guide uses:

```text
FHIR R4
Version 4.0.1