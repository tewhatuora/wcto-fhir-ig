{% include wcto-style.html %}

The Magic Link API supports authenticated and controlled unauthenticated form access. Launch context determines whether information can be populated and which external services may be accessed.

### Authenticated Context

Authentication may be provided through a PMS/EMR session, Health New Zealand consumer portal, third-party patient portal or approved identity service including My Health Account where applicable.

My Health Account is an identity mechanism rather than the form delivery channel.

| Capability | Expected availability |
|---|---|
| Authenticated user identity | Yes |
| Known / validated child context | Yes |
| National Data Service access | Subject to authorisation and service rules |
| PMS / EMR population | Where supplied by the integrating system |
| WCTO Schedule context | Where relevant and authorised |
| Existing multi-author response | Where authorised |
| Practitioner attribution | Through authenticated and HPI context where applicable |

### Unauthenticated Context

| Capability | Expected availability |
|---|---|
| Authenticated user identity | No |
| National Data Service access | No |
| PMS / EMR population | No |
| Protected clinical information returned | No |
| Automatic form population | No |
| Manual information entry | Yes |

> **To be confirmed:** Detailed security, token, expiry, matching and invitation requirements.
