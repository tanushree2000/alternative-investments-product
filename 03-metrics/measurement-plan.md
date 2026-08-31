# Measurement Plan

| Event | Trigger | Key properties |
|---|---|---|
| thesis_baseline_approved | IC baseline frozen | investment_id, approver, metric_count |
| kpi_mapped | source connected | investment_id, metric_id, source |
| actual_loaded | new observation | metric_id, period, value, freshness |
| exception_created | threshold breached | severity, variance, rule |
| exception_acknowledged | owner accepts | owner_role, elapsed_hours |
| exception_resolved | closed | root_cause, action, elapsed_days |

Weekly: data quality and system health.  
Monthly: adoption and exception workflow.  
Quarterly: portfolio-review efficiency and user feedback.
