{% include wcto-style.html %}


Population means presenting existing information in a form so an authorised user can review or validate it rather than entering it again.

| Information domain | Potential source | Potential use |
|---|---|---|
| Child identity and demographics | NHI | Populate or validate child details |
| Address and contact information | NHI | Populate or validate contact details |
| GP enrolment | NES | Populate GP and practice details |
| Nominated WCTO provider | NES | Populate provider and support nomination where supported |
| Immunisation history/status | AIR | Populate or validate immunisation information |
| Practitioner identity | HPI or authenticated clinical context | Attribute clinical contributions |
| Practitioner role | HPI or authenticated clinical context | Populate author role |
| Healthcare organisation | HPI or authenticated clinical context | Populate provider organisation |
| Existing clinical information | PMS / EMR | Populate relevant information where permitted |
| Assignment / workflow status | WCTO Schedule API | Establish workflow context |
| Existing form response | WCTO Summary / forms service | Continue authorised multi-author form |
| Form definition | Form service through Magic Link API | Retrieve correct form and version |

Authenticated contexts may use permitted source information. Unauthenticated launches must not automatically populate protected health information.

> **To be confirmed:** Field-level population matrices for each form.
