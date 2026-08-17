# Data Model

## Main Entities

### Users

Stores system users and their roles.

### Customers

Stores customer information.

### Tickets

Stores service request information.

### Categories

Stores request categories.

### Ticket Comments

Stores communication related to a ticket.

### Ticket Status History

Stores historical status changes.

---

## Entity Relationships

```mermaid
erDiagram
    CUSTOMERS ||--o{ TICKETS : creates
    USERS ||--o{ TICKETS : assigned
    CATEGORIES ||--o{ TICKETS : categorizes
    TICKETS ||--o{ TICKET_COMMENTS : contains
    TICKETS ||--o{ TICKET_STATUS_HISTORY : records
    USERS ||--o{ TICKET_COMMENTS : writes
