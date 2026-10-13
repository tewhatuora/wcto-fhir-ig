---
title: Access and Authentication
---

# Form access and authentication

The proposed Magic Link API supports controlled form launch from authenticated and unauthenticated contexts. The launch context determines what information may be disclosed, whether a form may be populated, and which supporting services may be accessed.

## Authenticated context

An authenticated context exists when the user has been authenticated and the applicable child and workflow context can be securely established.

Authentication may be provided through:

- a PMS or EMR session;
- a Health New Zealand consumer portal;
- an approved third-party patient portal; or
- an approved identity service, including My Health Account where applicable.

My Health Account is an identity mechanism, not the form-delivery channel. The form is presented through the applicable clinical or consumer solution.

### Draft authenticated launch flow

1. The user accesses the relevant clinical or consumer-facing solution.
2. The user is authenticated and the applicable child context is established.
3. The solution calls the Magic Link API with the permitted launch and workflow context.
4. The Magic Link API provides access to the required form.
5. Permitted information may be populated from the launching system, National Data Services, the WCTO Schedule API, or an existing response.
6. The user reviews, completes, or updates the form.
7. Submission creates or updates the applicable FHIR artefacts.
8. Submission may trigger a WCTO Schedule API status update.
9. The completed form becomes available through the WCTO Summary API to authorised users and systems.

### Expected authenticated capabilities

| Capability | Draft expectation |
|---|---|
| Authenticated user identity | Yes |
| Known or validated child context | Yes |
| National Data Service access | Subject to authorisation, purpose, and service rules |
| PMS or EMR population | Where supplied and permitted |
| WCTO Schedule context | Where relevant and authorised |
| Form population | Where permitted |
| Existing multi-author response retrieval | Where authorised |
| Practitioner attribution | Using authenticated context and HPI information where applicable |

## Unauthenticated context

An unauthenticated context exists when a person opens a controlled form link received through email, SMS, or another approved channel without first signing in through an approved identity service.

### Draft unauthenticated launch flow

1. The person receives a controlled URL.
2. The person opens the URL.
3. The URL invokes the Magic Link API.
4. The applicable blank form is retrieved.
5. The form is presented without population from National Data Services, the PMS, or the EMR.
6. The person manually enters the required information.
7. Submitted information is associated with the applicable invitation or workflow through an approved secure matching mechanism.

### Expected unauthenticated limitations

| Capability | Draft expectation |
|---|---|
| Authenticated user identity | No |
| National Data Service access | No |
| PMS or EMR population | No |
| Protected clinical information returned to the user | No |
| Automatic form population | No |
| Manual information entry | Yes |

## Security matters requiring confirmation

The detailed requirements for unauthenticated links remain to be defined, including:

- token construction and storage;
- expiry, revocation, and reuse;
- protection against guessing, forwarding, and replay;
- identity or invitation matching;
- rate limits and monitoring;
- consent and privacy notices;
- handling of abandoned or partially completed responses; and
- auditing and incident response.

