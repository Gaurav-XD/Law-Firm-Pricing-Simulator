# Assumptions

This document lists the key assumptions used in the Law Firm Pricing & Profitability Simulator.
These assumptions are made to simulate realistic law firm pricing behavior in the absence of confidential real-world data.

---

## 1. Pricing Model
- The firm primarily uses hourly billing for legal services.
- Hourly rates vary by lawyer level (Junior, Senior, Partner).
- Hourly rates are assumed to be market-based and not directly tied to lawyer salary.

## 2. Cost Structure
- Lawyer costs are converted into a cost-per-hour metric.
- Cost per hour includes salary and allocated overhead expenses.
- Costs are assumed to increase proportionally with cost increase scenarios.

## 3. Client Behavior
- Client negotiation behavior is captured using realization rates.
- Realization rates vary by client type (Startup, SME, Enterprise).
- Lower realization rates represent higher discounts or write-offs.

## 4. Revenue Recognition
- Revenue is calculated based on billable hours recorded in time entries.
- Collected revenue is calculated by applying realization rates to billed revenue.

## 5. Scenario Analysis
- Pricing, cost, and realization changes are applied uniformly across all time entries.
- Scenario adjustments are designed to test directional impact rather than predict exact outcomes.

## 6. Data Scope
- The dataset represents a simplified version of law firm operations.
- The data model is designed to scale to large datasets when implemented in SQL or Python.

