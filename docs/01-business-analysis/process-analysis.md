# Process Analysis

## AS-IS Process

The current process is highly manual.

```mermaid
flowchart TD
    A[Customer submits request] --> B[Support receives request]
    B --> C[Agent checks email or form]
    C --> D[Information entered into spreadsheet]
    D --> E[Team Leader assigns request]
    E --> F[Agent works on request]
    F --> G[Agent sends response]
    G --> H[Spreadsheet updated]
