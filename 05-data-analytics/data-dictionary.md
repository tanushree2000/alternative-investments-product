# Data Dictionary

All records are synthetic.

## synthetic-deals.csv
- `deal_id`: synthetic unique deal identifier
- `company`: fictional target
- `sector`, `region`, `stage`, `owner`
- `created_date`
- `deal_size_usd_mm`
- `days_in_stage`
- `screening_score`: illustrative 0–100 screening score

## portfolio-performance.csv
- `investment_id`, `company`, `sector`
- `invested_capital_usd_mm`
- target/actual revenue growth and variance
- target/actual EBITDA margin and variance
- optional target/actual churn
- `exception_severity`: synthetic rule-based P0/P1/P2/None
