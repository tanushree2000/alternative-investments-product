# Synthetic Analytics Insights

> All findings below are generated from synthetic data and are for product demonstration only.

## Dataset
- 180 synthetic deal records
- 45 synthetic active investments
- 26 investments with a rule-based exception

## Product questions demonstrated
1. Where is the deal pipeline concentrated?
2. Which sectors spend longest in a stage?
3. Which investments are materially below their approved revenue-growth case?
4. Where are P0/P1 exceptions concentrated?
5. Which portfolio items should a manager review first?

## Example exception logic
P0 if revenue growth variance < -10 percentage points or EBITDA margin variance < -8 points.  
P1 if revenue growth variance < -5 points or EBITDA margin variance < -4 points.  
P2 for smaller negative deviations.

## PM implication
The dashboard should default to **exceptions requiring attention**, not a wall of portfolio metrics.
