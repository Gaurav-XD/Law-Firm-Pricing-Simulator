# Law Firm Pricing & Profitability Simulator

## Business Problem
Law firms often struggle to understand how pricing decisions, client discounts, and rising costs affect profitability. 
Revenue alone does not reflect true financial performance because discounts reduce collected revenue while costs remain fixed.

## Solution Overview
This project is a pricing and profitability simulator designed to help law firms evaluate pricing decisions before implementing them.
The model calculates revenue, cost, and profit at a granular time-entry level and allows management to test different pricing, cost, and realization scenarios.

## Pricing Concepts Used
- Hourly billing
- Cost per hour
- Realization rate
- Discount leakage
- Profitability analysis
- Scenario (what-if) analysis

## Data Model
The project uses a normalized data structure similar to real enterprise systems:
- Lawyers: stores lawyer level, hourly rate, and cost per hour
- Clients: stores client type and realization behavior
- Cases: links legal work to clients
- Time Entries: fact table capturing billable hours worked by lawyers

This design allows the model to scale efficiently as data volume increases.

## Scenario Simulation
The simulator allows management to adjust:
- Hourly rate increases
- Cost increases
- Realization rate changes

These scenarios update revenue, cost, and profit automatically, enabling comparison between base performance and simulated outcomes.

## Key Insights
- Higher revenue does not always mean higher profit
- Discounts reduce profit more severely than revenue because costs remain unchanged
- Improving realization can increase profitability more effectively than increasing hourly rates
- Scenario testing helps prevent unprofitable pricing decisions

## Scalability
The model is built around a fact table for time entries and dimension tables for descriptive data.
This structure can be directly implemented in SQL to handle millions or billions of records.

## Tools Used
- Microsoft Excel (pricing logic and simulation)
- Relational data modeling concepts
- Scenario analysis techniques

## How to Use
1. Review the base data in the lawyers, clients, cases, and time_entries sheets
2. Adjust scenario inputs in the scenarios sheet
3. Review the summary sheet to compare base and scenario profitability
