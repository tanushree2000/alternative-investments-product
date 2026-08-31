# Acceptance Criteria

## ST-102 Approve thesis baseline
- Given required thesis metrics are complete, when an authorized approver approves, then a versioned baseline is created.
- Baseline stores approver and timestamp.
- Editing an approved baseline creates a new draft version; original remains immutable.

## ST-201 Map KPI source
- Mapping requires metric ID, source, field, unit and frequency.
- Unit mismatch blocks activation.
- Test observation must reconcile before mapping becomes Active.

## ST-401 Create exception
- Breach uses the active threshold for metric/period.
- Exception includes target, actual, variance, source and severity.
- Duplicate observation does not create duplicate open exception.

## ST-403 Resolve exception
- Resolution requires root cause, action and owner.
- Closure timestamp and actor are audited.
