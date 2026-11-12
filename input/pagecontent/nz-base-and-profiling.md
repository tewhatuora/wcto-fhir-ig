<link rel="stylesheet" href="assets/css/wcto.css">

# NZ Base Reuse and Profiling

The IG declares `fhir.org.nz.ig.base: 2.0.0` as a dependency. **This alone does not prove that every applicable profile is NZ Base compliant.**

Use published NZ Base profiles (such as NzPatient, NzOrganization, NzLocation, NzCondition) wherever those resource types are profiled or constrained. Do not create competing base-Patient or base-Condition profiles or remove NZ Base requirements. The current WCTO-specific profiles focus on CarePlan, Task, QuestionnaireResponse, RelatedPerson and PlanDefinition; their parents must be reviewed against available NZ Base definitions before release.

The example Patient is a generic FHIR example, not evidence of NzPatient conformance. National identifiers must use their published NZ identifier systems. Review extensions, terminology binding and element constraints against HISO 10110; never encode business data in narrative, metadata or inappropriate references to bypass validation.
