# Integration Requirements

| Integration | Direction | Minimum requirement |
|---|---|---|
| Deal/CRM | inbound | deal ID, company, owner, stage |
| Financial model | inbound | approved scenario assumptions |
| Portfolio KPI source | inbound | metric, period, actual, unit |
| Market-data vendor | inbound | benchmark/reference data |
| SSO | inbound | identity, groups |
| Notifications | outbound | exception assignment/status |

## Controls
Idempotent ingestion, schema validation, source lineage, retry queue, reconciliation report, least-privilege access.
