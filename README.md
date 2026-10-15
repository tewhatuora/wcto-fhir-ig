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
- `input/fsh/questionnaires` is reserved for the six canonical B4SC Questionnaire definitions.
- `input/fsh/capabilities` is reserved for CapabilityStatements, operations, and API conformance artefacts.
- `input/fsh/examples` is reserved for synthetic FSH Instance examples.
- `input/examples` is reserved for approved hand-authored JSON or XML examples that are not generated from FSH.

The current `.fsh` files contain comments only. This preserves the correct project structure and development intent without generating unapproved conformance resources.

## Proposed identifiers requiring confirmation

The following values in `sushi-config.yaml` are suitable draft values but must be confirmed before formal publication:

- package/ImplementationGuide id: `tewhatuora.fhir.wcto`;
- canonical base: `https://fhir-ig.digital.health.nz/wcto`;
- SUSHI name: `WCTODigitalServices`;
- current draft version: `0.1.3`; and
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

The Markdown pages describe the intended scope and acceptance inputs. The grouped `.fsh` files show where future Questionnaire, profile, extension, terminology, CapabilityStatement, operation, and example artefacts belong. They do not pretend those artefacts already exist.

## Important

This content remains a draft for stakeholder review. Statements described as *draft*, *proposed*, *expected*, *potential*, or *to be confirmed* are not approved requirements. Detailed FHIR profiles, operations, security controls, terminology, scoring, and conformance requirements must be confirmed through the relevant design and governance processes.

