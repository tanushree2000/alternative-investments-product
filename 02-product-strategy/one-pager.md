# One Pager: Northstar Thesis Monitor

**Author:** Tanushree Poojary  
**Role:** Product Manager  
**Project:** Independent Product Management Case Study  
**Product:** Northstar Alternative Investments - Thesis Monitor  
**Status:** MVP Definition

> Northstar is a fictional product. All investment and company data used in this project is synthetic. This project does not represent the internal systems, data, or processes of any financial institution.

## Overview

Northstar Thesis Monitor is a decision-support capability for alternative investment teams.

The product connects the assumptions used to approve an investment with the financial and operational data used to monitor that investment after capital deployment.

Approved investment assumptions become governed monitoring benchmarks. As actual portfolio performance becomes available, Northstar compares actual results against the investment case and surfaces material deviations requiring review.

Northstar supports investment decisions. It does not make investment decisions.

---

## Problem

Investment teams evaluate opportunities using financial models, due diligence findings, risks, strategic milestones, and an investment thesis.

After an investment is approved, ongoing portfolio monitoring may occur through a separate reporting process.

This can create a gap between:

**What we expected when we invested**

and

**What is actually happening now**

### Product Hypothesis

When the original investment context and ongoing performance are not explicitly connected, portfolio teams may spend additional time reconstructing why an investment was approved and determining which deviations require attention.

### How Might We?

**How might we preserve the assumptions behind an investment decision and convert them into measurable monitoring benchmarks so portfolio teams can identify and investigate material deviations earlier?**

---

## Objectives

1. Connect approved investment assumptions with post-investment performance.

2. Surface material portfolio deviations rather than requiring Portfolio Managers to manually review every metric.

3. Create an accountable workflow for investigating and resolving exceptions.

4. Maintain traceability between the original investment case, subsequent revisions, and portfolio actions.

5. Integrate with existing deal, financial-model, portfolio-data, and third-party systems rather than replacing them.

---

## Key Persona

### Portfolio Manager / Investment Lead

**Goal:** Quickly identify which portfolio investments require attention and understand why.

**Needs:**
- Actual vs expected performance
- Material deviations
- Original investment assumptions
- Portfolio trends
- Risk visibility
- Clear ownership of follow-up actions

---

## Supporting Personas

### Investment Associate

Responsible for:
- Deal screening
- Due diligence
- Financial analysis
- Investment thesis development
- Investment Committee preparation

### Investment Committee

Responsible for:
- Reviewing investment opportunities
- Challenging assumptions
- Assessing risk
- Approving or rejecting capital deployment

### Investment Operations / Data

Responsible for:
- Investment data
- Data quality
- System integrations
- Reporting
- Data governance

---

## Use Case 1: Approve Investment Thesis

An Investment Associate prepares an investment recommendation.

Example approved assumptions:

Revenue Growth Target: 15%

EBITDA Margin Target: 25%

Customer Churn Target: <5%

International Expansion: Q3 2027

The Investment Committee approves the investment.

Northstar stores these assumptions as a versioned investment-thesis baseline.

---

## Use Case 2: Detect Material Deviation

Twelve months later:

Revenue Growth Target: 15%

Actual Revenue Growth: 8%

Variance: -7 percentage points

Northstar evaluates the configured threshold and identifies the deviation as material.

A portfolio exception is created.

---

## Use Case 3: Investigate Exception

The Portfolio Manager opens the exception and sees:

- Original investment assumption
- Actual performance
- Variance
- Historical trend
- Data source
- Severity
- Investment-thesis context

The Portfolio Manager can then:

- Assign an owner
- Add an explanation
- Create an action
- Resolve the exception
- Re-underwrite the assumption when appropriate

---

## Constraints

1. Investment strategies may use different KPIs and investment assumptions.

2. Portfolio-company data may arrive at different frequencies.

3. Data may be incomplete, delayed, or inconsistent.

4. Northstar depends on upstream systems and third-party data providers.

5. Investment decisions must remain human-controlled.

6. Changes to approved investment assumptions require version control and audit history.

---

## Success Targets

These are modeled product targets, not achieved production results.

- 70% of active investments linked to governed thesis metrics within 90 days.
- 90% of required thesis KPIs mapped to validated data sources.
- 90% of material variances surfaced within one reporting cycle.
- 80% of P0/P1 exceptions assigned within two business days.
- Less than 2% false escalation rate.
- Target 25% reduction in recurring portfolio-review preparation time.

---

## Proposed MVP

The MVP focuses on five capabilities:

1. Thesis Baseline
2. KPI Mapping
3. Variance Detection
4. Exception Management
5. Portfolio Exception View

---

## Product Principle

**Decision before dashboard.**

Northstar should not simply show more investment data.

It should help Portfolio Managers answer:

> Where has reality materially diverged from the assumptions behind our investment decision?
