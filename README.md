# WCTO Digital Services Implementation Guide starter

This bundle contains a streamlined, review-ready documentation and configuration starter for the draft **WCTO Digital Services Implementation Guide**. It includes the proposed APIs, six B4SC forms, workflows, summaries, conformance planning, and open decisions without duplicating the same material across unnecessary pages.

## Included structure

```text
WCTO_Digital_Services_IG_Markdown/
├── sushi-config.yaml
├── ig.ini
├── CHANGELOG.md
├── README.md
└── input/
    ├── fsh/
    │   ├── capabilities/
    │   │   └── WCTOCapabilities.fsh
    │   ├── examples/
    │   │   └── WCTOExamples.fsh
    │   ├── extensions/
    │   │   └── WCTOExtensions.fsh
    │   ├── profiles/
    │   │   └── WCTOProfiles.fsh
    │   ├── questionnaires/
    │   │   └── WCTOQuestionnaires.fsh
    │   └── terminology/
    │       └── WCTOTerminology.fsh
    ├── examples/
    │   └── .gitkeep
    └── pagecontent/
        ├── index.md
        ├── scope.md
        ├── solution-overview.md
        ├── architecture.md
        ├── actors-access-security.md
        ├── national-data-and-population.md
        ├── cohorting-and-workflows.md
        ├── wcto-api-services.md
        ├── form-catalogue.md
        ├── summary-and-referrals.md
        ├── fhir-artifacts-and-terminology.md
        ├── conformance.md
        ├── assumptions-and-decisions.md
        ├── history.md
        └── downloads.md
```

## Source organisation

- `input/pagecontent` contains human-readable IG guidance and development specifications.
- `input/fsh/profiles` is reserved for approved resource profiles.
- `input/fsh/extensions` is reserved for approved extensions that cannot be satisfied through reuse.
- `input/fsh/terminology` is reserved for code systems, value sets, and terminology bindings.
- `input/fsh/questionnaires` is reserved for the canonical B4SC Questionnaire definitions.
- `input/fsh/capabilities` is reserved for CapabilityStatements, operations, and API conformance artefacts.
- `input/fsh/examples` is reserved for synthetic FSH Instance examples.
- `input/examples` is reserved for approved hand-authored JSON or XML examples that are not generated from FSH.

The profiles and examples groups contain experimental draft definitions for review. Terminology includes experimental work codes and business milestones; other groups retain development placeholders. Generated profile pages require a successful SUSHI/Publisher build.

## Proposed identifiers requiring confirmation

The following values in `sushi-config.yaml` are suitable draft values but must be confirmed before formal publication:

- package/ImplementationGuide id: `tewhatuora.fhir.wcto`;
- canonical base: `https://fhir-ig.digital.health.nz/wcto`;
- SUSHI name: `WCTODigitalServices`;
- current draft version: `0.1.12`; and
- publication label: `draft`.

Dependency versions should also be checked against the approved programme baseline before release.

## Build prerequisites

- a supported Java runtime;
- Node.js and npm;
- FSH SUSHI; and
- the HL7 FHIR IG Publisher.

Install or update SUSHI:

```shell
npm install -g fsh-sushi
```

## Build

From the project root, run SUSHI:

```shell
sushi .
```

Then run the IG Publisher using the included `ig.ini`:

```shell
java -jar publisher.jar -ig ig.ini
```

Health New Zealand IG repositories commonly use the standard `_updatePublisher` and `_genonce` helper scripts. If this starter is merged into an existing IG repository, retain that repository's approved scripts and CI configuration.

## Development labels

Incomplete sections use explicit lifecycle labels rather than empty placeholders:

- **In development** — confirmed component with a specification still being prepared;
- **To be developed** — planned component for which detailed work has not started;
- **Draft for review** — proposed content awaiting stakeholder agreement;
- **Decision required** — an unresolved choice that materially affects the design; and
- **Future phase** — recognised requirement outside the initial build.

The Markdown pages describe the intended scope and acceptance inputs. The grouped `.fsh` files include draft profiles and synthetic examples, with two draft PEDS-R Questionnaires, experimental terminology, and development placeholders for remaining forms, extensions and API conformance resources.

## Important

This content remains a draft for stakeholder review. Statements described as *draft*, *proposed*, *expected*, *potential*, or *to be confirmed* are not approved requirements. Detailed FHIR profiles, operations, security controls, terminology, scoring, and conformance requirements must be confirmed through the relevant design and governance processes.


## Diagrams and API specification draft

Seven SVG images in `input/images` are linked directly from narrative pages for Publisher use. Diagrams are original WCTO design views. Proposed HTTP paths are illustrative and not live endpoints. Three experimental profiles, four FSH instances and two checkpoint collection Bundles are included. CapabilityStatements, OpenAPI and operation definitions remain to be developed. Fifteen narrative pages are retained.


## 0.1.7 walkthrough update — 3 November 2026

Start at input/pagecontent/cohorting-and-workflows.md for the task catalogue and completion gates, architecture.md for identity/reference direction and diagram review, and summary-and-referrals.md for referral/summary lifecycle. Fifteen narrative pages are retained. Existing dependency versions and build setup are preserved.

The draft now separates parent capture and nurse review; includes educator input, independent screening domain states, explicit no-referral decisions, owned transmission/follow-up, and independent clinical/whānau summary generation/release/delivery. The Schedule creation trigger, final form boundaries and closure rules remain clearly labelled decisions.

Merge source files into the current Windows IG checkout after reviewing the diff. This package does not edit a file:///C:/ path, run production APIs or publish an IG. Do not copy generated HTML back into input. Run SUSHI and the IG Publisher using the repository's existing build workflow.

Local validation evidence is in VALIDATION.md. No full build or clinical approval is claimed.


## 0.1.8 trigger ownership update

See the trigger matrix in input/pagecontent/wcto-api-services.md. Summary readiness is independent of referral transmission/outcome. Keep the episode CarePlan active while required referral follow-up is unresolved. Service deployment ownership and resolution evidence remain to be confirmed.


## 0.1.12 — current package

Includes 15 styled narrative pages, seven SVG diagrams, three experimental profiles, two terminology CodeSystems, four FSH workflow instances, two checkpoint Bundles, and two PEDS-R Questionnaire definitions in matching JSON/FSH. `input/includes/wcto-style.html` supplies the shared page include. JSON Questionnaire exports are in `input/questionnaires`; build from FSH to avoid duplicate definitions. Historical walkthrough notes above describe earlier revisions.

Scheduler terminology and the provisional nursing completion gate have been aligned. The reusable platform/template model is documented; reusable base profiles, final programme codes and identifier namespaces, remaining forms and executable service contracts are still to be developed.


## 0.1.12 — current package

Includes 15 styled narrative pages, seven SVG diagrams, three experimental profiles, two terminology CodeSystems, four FSH workflow instances, two checkpoint Bundles, and two PEDS-R Questionnaire definitions in matching JSON/FSH. `input/includes/wcto-style.html` supplies the shared page include. JSON Questionnaire exports are in `input/questionnaires`; build from FSH to avoid duplicate definitions. Historical walkthrough notes above describe earlier revisions.

Scheduler terminology and the provisional nursing completion gate have been aligned. The reusable platform/template model is documented; reusable base profiles, final programme codes and identifier namespaces, remaining forms and executable service contracts are still to be developed.
