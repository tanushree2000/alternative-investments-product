-- SQLite/PostgreSQL-friendly illustrative schema
CREATE TABLE deals (
  deal_id TEXT PRIMARY KEY,
  company TEXT, sector TEXT, region TEXT, stage TEXT, owner TEXT,
  created_date DATE, deal_size_usd_mm DECIMAL(12,1),
  days_in_stage INTEGER, screening_score INTEGER
);

CREATE TABLE portfolio_performance (
  investment_id TEXT PRIMARY KEY,
  company TEXT, sector TEXT, invested_capital_usd_mm DECIMAL(12,1),
  target_revenue_growth DECIMAL(8,4), actual_revenue_growth DECIMAL(8,4),
  revenue_growth_variance DECIMAL(8,4),
  target_ebitda_margin DECIMAL(8,4), actual_ebitda_margin DECIMAL(8,4),
  ebitda_margin_variance DECIMAL(8,4),
  target_churn DECIMAL(8,4), actual_churn DECIMAL(8,4),
  exception_severity TEXT
);
