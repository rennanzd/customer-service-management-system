# System Architecture

## Proposed Architecture

The proposed solution follows a simplified layered architecture.

```mermaid
flowchart TD
    A[Customer / Employee] --> B[Web Application]
    B --> C[REST API]
    C --> D[Business Logic]
    D --> E[Relational Database]
