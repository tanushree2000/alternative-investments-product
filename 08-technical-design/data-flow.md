# Data Flow

1. Approved thesis metric receives immutable baseline version.
2. Metric definition maps to a governed source field.
3. New actual observation arrives by API/file.
4. Validation checks type, period, source, freshness and duplicates.
5. Variance engine calculates absolute/percentage variance.
6. Threshold rule evaluates severity.
7. Material breach creates/updates exception.
8. User reviews context and assigns action.
9. Resolution and rationale are retained in audit history.
