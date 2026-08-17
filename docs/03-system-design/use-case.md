# Use Case Model

## Main Actors

- Customer
- Support Agent
- Team Leader
- Manager
- Administrator

## Main Use Cases

```mermaid
flowchart LR
    Customer --> A[Create Request]
    Customer --> B[View Request]

    SupportAgent[Support Agent] --> B
    SupportAgent --> C[Update Request]
    SupportAgent --> D[Add Comment]
    SupportAgent --> E[Resolve Request]

    TeamLeader[Team Leader] --> F[Assign Request]
    TeamLeader --> G[Change Priority]

    Manager --> H[View Reports]

    Administrator[Administrator] --> I[Manage Users]
    Administrator --> J[Manage Roles]
