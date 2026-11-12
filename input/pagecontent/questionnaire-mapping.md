<link rel="stylesheet" href="assets/css/wcto.css">

# Questionnaire-to-FHIR Data Mapping

**Draft — pending original clinical forms, licensing review and stakeholder approval.**

The detailed inventory is maintained in `mapping/b4sc-questionnaire-items.csv` in the source package. It includes each currently drafted `linkId`, item type, the QuestionnaireResponse answer path, and the review status. **It is not a full mapping of the original clinical forms.**

Each questionnaire must be checked for source wording, option codes, required fields, conditional logic, author/respondent identity, validation rules, language, licensing, and whether a result should also become an Observation. Do not infer a clinical Observation from an answer without a signed-off mapping.

Every QuestionnaireResponse must reference the exact version of the Questionnaire it was completed against. The `subject` identifies the child, while `author`/`source` and Provenance (where supported) distinguish the person entering answers from the person providing them.
