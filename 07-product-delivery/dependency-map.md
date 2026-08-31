# Dependency Map

```mermaid
flowchart TD
A[SSO/RBAC] --> B[Deal & Investment Records]
B --> C[Thesis Baseline]
C --> D[KPI Mapping]
D --> E[Actual Data Ingestion]
E --> F[Variance Engine]
F --> G[Exception Workflow]
G --> H[Portfolio Experience]
I[Audit Service] --> C
I --> G
```
