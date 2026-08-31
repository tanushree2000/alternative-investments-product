# Product Requirements Document
## Northstar Thesis Monitor

**Author:** Tanushree Poojary  
**Role:** Product Manager  
**Product:** Northstar Alternative Investments  
**Feature:** Thesis Monitor  
**Status:** Portfolio Case Study

> Northstar is fictional. All company, investment, financial, and operational data used in this project is synthetic.

---

# 1. Product Overview

Northstar Thesis Monitor connects investment underwriting with portfolio monitoring.

During underwriting, investment teams define an investment thesis containing financial assumptions, operational targets, strategic milestones, and risks.

After Investment Committee approval, selected measurable assumptions become a governed baseline.

Actual portfolio-company performance is subsequently compared against the approved baseline.

When performance materially deviates from the investment case, Northstar creates an exception for Portfolio Manager review.

---

# 2. Problem

Investment decisions and portfolio monitoring can operate through different workflows.

Investment assumptions may exist in:

- Financial models
- Investment Committee materials
- Presentations
- Due diligence documents
- Spreadsheets
- Deal systems

Portfolio performance may later be monitored through separate reporting processes.

This creates a potential gap between:

**Investment Decision → Portfolio Performance**

Northstar addresses this by preserving approved investment assumptions and connecting them with actual performance.

---

# 3. Product Vision

Enable alternative-investment teams to maintain a continuous line of sight from the assumptions used to deploy capital to the actual performance of the investment.

---

# 4. Primary User

## Portfolio Manager / Investment Lead

### Job to Be Done

When monitoring my portfolio, help me understand which investments are materially deviating from their approved investment case so I can determine where investigation or intervention is required.

---

# 5. Supporting Users

## Investment Associate

Creates and maintains:
- Investment thesis
- Financial assumptions
- Due diligence
- Risks
- Investment Committee materials

## Investment Committee

Reviews:
- Investment recommendation
- Expected returns
- Assumptions
- Risks
- Downside scenarios
- Due diligence findings

## Investment Operations / Data

Supports:
- Data integration
- Data validation
- KPI definitions
- Data quality
- Reporting

---

# 6. Core User Flow

Deal Underwriting

↓

Investment Thesis

↓

Due Diligence

↓

Financial Model

↓

Investment Committee

↓

Investment Approved

↓

Thesis Baseline Frozen

↓

Portfolio KPI Data

↓

Actual vs Expected Comparison

↓

Variance Detection

↓

Material Exception

↓

Portfolio Manager Investigation

↓

Action / Resolution / Re-underwriting

---

# 7. Features In

## P0 - Thesis Baseline

Users can define measurable investment assumptions including:

- Metric
- Target
- Unit
- Measurement period
- Rationale
- Owner
- Data source

Once approved, the baseline becomes immutable.

Changes require a new version.

---

## P0 - KPI Mapping

Each thesis metric can be connected to a governed portfolio-data source.

Mapping includes:

- Metric ID
- Source
- Source field
- Unit
- Reporting frequency
- Data owner
- Freshness requirement

---

## P0 - Variance Engine

Northstar automatically compares:

**Target vs Actual**

Example:

Target Revenue Growth = 15%

Actual Revenue Growth = 8%

Variance = -7 percentage points

Threshold = -5 percentage points

Result:

**P1 Exception**

---

## P0 - Exception Management

Material deviations create exceptions containing:

- Investment
- Metric
- Target
- Actual
- Variance
- Severity
- Data source
- Owner
- Due date
- Comments
- Root cause
- Action
- Resolution

---

## P0 - Portfolio Exception View

Portfolio Managers see investments prioritized by:

1. Critical exceptions
2. Material exceptions
3. Stale data
4. Outstanding actions
5. Lower-severity deviations
6. On-track investments

The product emphasizes exceptions rather than displaying every available metric.

---

## P1 - Investment Committee Snapshot

Preserves:

- Investment recommendation
- Approved financial scenario
- Core assumptions
- Risks
- Due diligence findings
- Investment thesis
- Approval information

---

## P1 - Notifications

Users receive notifications for:

- New P0/P1 exception
- Exception assignment
- Approaching due date
- Stale critical data
- Thesis revision requiring approval

---

# 8. Features Out

## AI Investment Recommendations

Northstar will not recommend whether an investment should be bought, sold, or held.

Investment judgment remains human-controlled.

## Full Fund Accounting

Northstar integrates with existing accounting platforms.

## CRM Replacement

Existing deal-management systems remain systems of record where appropriate.

## Transaction Execution

Northstar does not execute investments.

## Market Data Creation

External providers supply market/reference data.

## Full Financial Modeling

Analysts continue using specialized financial-modeling tools.

Northstar consumes selected approved assumptions.

---

# 9. Critical User Stories

## Story 1

**As an Investment Associate,**

I want to define measurable investment-thesis assumptions

**so that**

they can be monitored after investment approval.

---

## Story 2

**As an Investment Committee approver,**

I want the approved investment thesis to become a versioned baseline

**so that**

future monitoring reflects the assumptions used when capital was approved.

---

## Story 3

**As a Portfolio Manager,**

I want actual portfolio performance automatically compared with the approved investment case

**so that**

I can identify material deviations.

---

## Story 4

**As a Portfolio Manager,**

I want material deviations prioritized by severity

**so that**

I can focus attention on investments requiring action.

---

## Story 5

**As an Investment Operations user,**

I want each KPI mapped to a governed data source

**so that**

Portfolio Managers can trust the information used for monitoring.

---

# 10. Example Acceptance Criteria

## Approve Thesis Baseline

Given all required thesis metrics are complete,

when an authorized approver approves the investment case,

then Northstar creates an immutable baseline version.

The system records:

- Approver
- Timestamp
- Baseline version
- Approved metrics

Editing an approved baseline creates a new draft version.

---

## Create Portfolio Exception

Given:

Revenue Growth Target = 15%

Actual Revenue Growth = 8%

P1 Threshold = -5 percentage points

When the latest performance data is processed,

Northstar must:

1. Calculate -7 percentage-point variance.
2. Identify the P1 threshold breach.
3. Create a P1 exception.
4. Display target, actual, variance, period, and source.
5. Add the exception to the Portfolio Manager queue.
6. Record creation in the audit history.

---

# 11. Product Design

Five primary screens:

## Portfolio Overview

Displays:

- Active investments
- P0/P1 exceptions
- Thesis-linked coverage
- Stale data sources
- Portfolio exception table

## Deal Workspace

Tabs:

- Thesis
- Due Diligence
- Financial Case
- Risks
- Investment Committee

## Investment Committee Review

Displays:

- Recommendation
- Base/upside/downside case
- Core assumptions
- Risks
- Outstanding diligence
- Approval actions

## Thesis Monitor

Displays:

- Target
- Actual
- Variance
- Trend
- Threshold
- Status
- Data freshness

## Exception Detail

Displays:

- Severity
- Original assumption
- Actual performance
- Historical performance
- Data source
- Owner
- Explanation
- Action
- Resolution

---

# 12. Technical Architecture

Northstar follows an integration-first strategy.

Deal / CRM System
↓
Integration Layer

Financial Models
↓
Integration Layer

Portfolio Data
↓
Integration Layer

Third-Party Vendors
↓
Integration Layer

Integration Layer
↓
Validation & Mapping
↓
Investment Data Store
↓
Thesis Variance Engine
↓
Exception Service
↓
Northstar Application

Enterprise SSO provides identity and role-based access.

An audit service records material product actions.

---

# 13. Technical Requirements

- Enterprise SSO
- Role-based access
- Encryption in transit and at rest
- Immutable approval history
- Data-source lineage
- Idempotent ingestion
- Duplicate prevention
- Integration retry handling
- Source-freshness monitoring
- Audit logging

---

# 14. North Star Metric

## Thesis-Linked Portfolio Coverage

Percentage of active investments with at least one governed thesis metric successfully connected to actual portfolio performance.

Formula:

Active Investments with Thesis Metrics Connected to Actual Data

÷

Total Active Investments

---

# 15. Success Metrics

## Adoption

- Thesis baseline adoption
- KPI mapping success
- Monthly active Portfolio Managers

## Workflow

- Material exceptions surfaced
- Exception acknowledgment time
- Exception resolution time
- P0/P1 ownership rate

## Data Quality

- Data freshness
- Reconciliation success
- Integration failure rate

## Guardrails

- False escalation rate
- Duplicate exceptions
- System availability
- Unauthorized approval attempts

---

# 16. Product Targets

These are modeled targets and are not production results.

- 70% thesis-linked portfolio coverage within 90 days
- 90% required KPI mapping
- 90% material variances surfaced within one reporting cycle
- 80% P0/P1 exceptions assigned within two business days
- Less than 2% false escalation rate
- Target 25% reduction in recurring portfolio-review preparation time

---

# 17. Build vs Buy

## Build

- Thesis baseline
- Thesis versioning
- Variance engine
- Exception workflow
- Portfolio experience

These capabilities create the product's differentiated workflow.

## Buy / Integrate

- Market data
- SSO
- Notifications
- Document storage

These are established enterprise capabilities and are not Northstar's differentiation.

---

# 18. Dependencies

- Deal / CRM system
- Financial-model assumptions
- Portfolio-company KPI data
- Third-party market-data providers
- Enterprise SSO
- Audit service
- Notification infrastructure

---

# 19. Risks

## Different Metrics Across Investment Strategies

Mitigation:

Configurable metric dictionary and limited initial pilot.

## Poor Data Quality

Mitigation:

Validation, reconciliation, freshness monitoring, and data ownership.

## Excessive Exceptions

Mitigation:

Configurable thresholds and false-escalation monitoring.

## User Adoption

Mitigation:

Pilot rollout, user training, and integration with existing workflows.

## Vendor Dependency

Mitigation:

SLAs, API monitoring, retries, and data-portability requirements.

---

# 20. Rollout Strategy

## Phase 1

Thesis Baseline

## Phase 2

KPI Mapping and Data Ingestion

## Phase 3

Variance Detection

## Phase 4

Exception Workflow

## Phase 5

Portfolio Experience

## Phase 6

Controlled Pilot

Start with:

- One investment strategy
- Limited active portfolio
- Small KPI dictionary
- One or two portfolio-data sources

Expand only after validating usability, data quality, exception precision, and operating value.

---

# 21. UAT Exit Criteria

Release requires:

- 100% critical UAT scenarios passed
- No open Sev-1 or Sev-2 defects
- KPI reconciliation completed
- SSO/RBAC verified
- Critical data feeds stable
- Monitoring enabled
- Rollback tested
- Business-owner sign-off

---

# 22. Open Issues

1. Can thesis metrics be standardized across investment strategies?
2. Who owns materiality thresholds?
3. When should an investment thesis be revised?
4. What constitutes a material deviation?
5. Which source is authoritative when systems disagree?
6. How should stale portfolio data affect exception severity?
7. What level of alerting avoids Portfolio Manager fatigue?
8. What implementation cost makes the business case viable?

---

# 23. Key Product Decisions

### Why not another dashboard?

Portfolio Managers need decision prioritization, not simply more information.

### Why no AI in MVP?

The platform first requires trustworthy baselines, data mappings, thresholds, and auditability.

### Why integration instead of replacement?

Asset managers already operate complex technology ecosystems. Replacing CRM, accounting, modeling, and market-data systems would dramatically increase scope without strengthening Northstar's core value proposition.

### What does Northstar actually do?

Northstar answers:

**Where has actual performance materially diverged from the assumptions behind our investment decision?**

It provides evidence and workflow.

The investment professional makes the decision.
