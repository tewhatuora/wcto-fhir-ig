---
title: Workflows
---

# Draft workflows

These workflows provide a logical view for stakeholder review. They do not define the final sequence, security controls, error handling, infrastructure, or FHIR interaction details.

## Overall workflow

1. A national eligibility or scheduling process identifies that a child may be due for a WCTO contact.
2. The WCTO Schedule API exposes or records the due and assignment context.
3. A provider is assigned or reassigned where required.
4. A PMS, EMR, portal, or approved invitation workflow requests a form through the Magic Link API.
5. The Magic Link API determines whether the request has an authenticated or unauthenticated launch context.
6. For an authenticated and authorised launch, permitted information may be obtained from NHI, NES, AIR, HPI, the launching system, the WCTO Schedule API, or an existing form response.
7. For an unauthenticated launch, a blank form is presented without protected source-system population.
8. The applicable whānau member, nurse, Vision and Hearing Technician, or educator completes the relevant section or form.
9. The system creates or updates the `QuestionnaireResponse`.
10. Approved mapping may create or update associated clinical or administrative resources.
11. The applicable component or overall workflow status is updated.
12. Completed individual forms and approved summaries become available through the WCTO Summary API.
13. Authorised clinical or consumer channels retrieve the information appropriate to their audience and access rights.

## Multi-author form workflow

This pattern is expected to apply particularly to the Consent, Health History and Nursing Assessment, and PEDS-R forms.

1. Whānau opens the applicable form.
2. Whānau completes the relevant sections.
3. The response is saved or submitted with its status and authorship context.
4. An authorised nurse retrieves the existing response.
5. The nurse reviews the whānau-provided information.
6. The nurse records permitted review outcomes, clinical findings, scoring, advice, referrals, or follow-up.
7. The nurse finalises the applicable form or stage.
8. The WCTO Schedule API is updated with the applicable component status.
9. The completed form becomes available through the WCTO Summary API.

The final design must distinguish information entered by whānau from information entered, corrected, confirmed, or interpreted by a professional.

## Vision and hearing workflow

1. The child is assigned for vision and hearing assessment.
2. The Vision and Hearing Technician launches the combined assessment form from an authenticated context.
3. The Magic Link API retrieves the correct form and version.
4. Permitted child information from NHI and practitioner information from HPI or the authenticated clinical context may populate the form.
5. The technician records the vision and hearing findings, outcome, advice, retest requirements, and referrals.
6. The combined form is submitted.
7. The applicable schedule component is updated.
8. The completed form becomes available through the WCTO Summary API.

## Summary-generation workflow

Potential inputs include:

- Consent Form;
- Health History and Nursing Assessment Form;
- PEDS-R Form;
- SDQ Parent Form;
- SDQ Teacher/ECE Form;
- Vision and Hearing Assessment Form;
- approved National Data Service information; and
- WCTO Schedule status.

The WCTO Summary API applies approved inclusion, transformation, and access rules to produce:

- completed individual forms;
- the Clinical B4SC Summary; and
- the Whānau B4SC Summary.

## Exception flows requiring definition

Detailed design must address:

- source service unavailable or returning incomplete data;
- invalid, expired, revoked, or previously used form links;
- incorrect child, invitation, or workflow context;
- partially completed or abandoned forms;
- reassignment while a form is in progress;
- duplicate submissions;
- conflicting multi-author updates;
- consent declined or withdrawn;
- licensed assessment incomplete or unable to be scored;
- returned forms and corrections;
- referrals recorded but not accepted or completed; and
- summary regeneration following amendment of source information.

