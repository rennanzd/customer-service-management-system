# User Stories

## US-001 — Create Service Request

**As a customer,**

I want to create a service request,

so that I can receive support from the company.

### Acceptance Criteria

- Customer must provide a request title.
- Customer must provide a request description.
- The system must generate a unique request ID.
- The new request must receive an initial status.

---

## US-002 — View Assigned Requests

**As a Support Agent,**

I want to view my assigned requests,

so that I can organize my workload.

### Acceptance Criteria

- The agent can view assigned requests.
- Requests display priority.
- Requests display current status.
- Requests can be sorted by priority.

---

## US-003 — Assign Request

**As a Team Leader,**

I want to assign requests to Support Agents,

so that work can be distributed across the team.

### Acceptance Criteria

- Team Leader can select a Support Agent.
- Assignment must be recorded.
- The assigned agent can view the request.

---

## US-004 — Monitor SLA

**As a Manager,**

I want to monitor SLA performance,

so that I can identify operational problems.

### Acceptance Criteria

- Manager can view SLA-related metrics.
- Late requests can be identified.
- Reports can be filtered by period.

---

## US-005 — Update Request Status

**As a Support Agent,**

I want to update request status,

so that the current state of the request is visible.

### Acceptance Criteria

- Agent can update status.
- Status changes are stored.
- Previous status remains available in history.
