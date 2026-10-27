{% include wcto-style.html %}


### WCTO Schedule API

The WCTO Schedule API identifies children due for a WCTO contact and manages provider assignment, reassignment, component status and overall completion.

| Attribute | Draft definition |
|---|---|
| Purpose | Due-list management, provider assignment, component tracking and completion |
| Data domains | Eligibility, due status, assignment, reassignment, component status and overall workflow status |
| Relevant FHIR resource | `Task` or another suitable workflow resource — to be confirmed |
| Read interactions | Retrieve due children, assignment and component status |
| Update interactions | Assign/reassign provider and update component or overall status |
| Form interaction | Relevant form submission may generate the corresponding status update |

### Initial Status Concepts

- Child due
- Unassigned to a provider
- Assigned
- In progress
- Returned
- Closed
- Assessment component not started / in progress / completed
- Overall B4SC completed

### Provider Assignment

Provider nomination may interact with NES subject to the NES specification and agreed business rules.

> **To be confirmed:** Final resource model, status vocabulary, transition rules and provider self-nomination behaviour.
