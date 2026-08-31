# Non-Functional Requirements

- Availability target: 99.9% monthly for core read workflows.
- Audit: immutable history for baseline approval and material edits.
- Security: SSO, RBAC, encryption in transit/at rest.
- Performance: portfolio overview p95 <3 seconds for standard portfolios.
- Data: configurable freshness SLA by source.
- Resilience: failed integrations retry without duplicate records.
- Accessibility: WCAG-aligned core workflows.
- Observability: ingestion failures, latency, exception-engine errors and source freshness monitored.
