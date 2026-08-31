# Rollback Plan

1. Disable new write actions through feature flag.
2. Pause ingestion workers.
3. Restore prior application version.
4. Preserve new records for reconciliation; do not silently delete.
5. Validate baseline and actual-data integrity.
6. Communicate incident/status to business owners.
7. Resume only after root cause and reconciliation sign-off.
