# WCTO FHIR Implementation Guide

This structure is designed so that most contributors only need normal Markdown.
Styling is centralised in `wcto-template`, while FHIR artefacts are kept under
`input/fsh`.

## For content authors

Write narrative pages in `input/pagecontent/`.

Use simple Markdown:

```markdown
### Main section

Normal paragraph.

#### Subsection

- Bullet
- Bullet

| Column | Column |
|---|---|
| Value | Value |

> **To be confirmed:** Draft note.

Use `Patient`, `QuestionnaireResponse` and other FHIR names in backticks.
```

Do **not** normally add `#` or `##` headings to pagecontent files. The Publisher
generates the page title, so `###` keeps the heading hierarchy valid.

## For FHIR authors

FHIR Shorthand lives in:

- `input/fsh/profiles`
- `input/fsh/extensions`
- `input/fsh/terminology`
- `input/fsh/examples`

The current `.fsh` files are intentionally comment-only placeholders. Add real
FHIR definitions only when the associated design is confirmed.

## Styling

Shared styling lives in `wcto-template/content/assets/css/wcto.css`.
The local template extends `fhir2.base.template`, keeping HTML/CSS out of the
narrative Markdown.

## Build

```cmd
sushi .
_build.bat build
start msedge "%CD%\\output\\en\\index.html"
```

## Draft language

- **Current direction** — sufficiently agreed to describe for planning.
- **Proposed** — likely design but not final.
- **To be confirmed** — unresolved business, clinical, security or technical design.
