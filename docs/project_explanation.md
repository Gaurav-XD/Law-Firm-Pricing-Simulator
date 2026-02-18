# Interview Notes – Law Firm Pricing & Profitability Simulator

This document contains interview-ready explanations, questions, and answers based on the Law Firm Pricing & Profitability Simulator project.

---

## 1. Project Overview

### Q: Can you explain your project?
A: I built a pricing and profitability simulator for a law firm. The model calculates revenue, cost, and profit at a time-entry level and allows management to test pricing, cost, and realization scenarios before making business decisions.

---

## 2. Business Problem

### Q: What problem does this project solve?
A: Law firms often struggle to understand how pricing decisions, client discounts, and rising costs affect profitability. Revenue alone does not reflect true performance because discounts reduce collected revenue while costs remain fixed.

---

## 3. Pricing Logic

### Q: How is revenue calculated?
A: Revenue is calculated using hourly rates multiplied by billable hours recorded in time entries.

### Q: Why did you calculate cost per hour?
A: Cost per hour allows the firm to compare hourly revenue against hourly costs and accurately measure profitability.

### Q: What is realization rate?
A: Realization rate is the percentage of billed revenue that is actually collected from clients after discounts and negotiations.

---

## 4. Client Behavior & Discounts

### Q: How do you model client behavior?
A: Client behavior is modeled using realization rates that vary by client type. Lower realization rates represent higher levels of negotiation and discounting.

### Q: What is discount leakage?
A: Discount leakage is the revenue and profit lost due to discounts and write-offs that do not reduce underlying costs.

---

## 5. Profitability Analysis

### Q: Why is profit different from revenue?
A: Revenue shows how much is billed, but profit accounts for both costs and discounts. A firm can have high revenue but low profit if costs are high or realization is low.

---

## 6. Scenario Analysis

### Q: What is scenario analysis?
A: Scenario analysis is a “what-if” approach that tests how changes in pricing, costs, or realization impact profitability.

### Q: What scenarios does your model support?
A: The model supports changes to hourly rates, cost per hour, and realization rates.

---

## 7. Insights

### Q: What key insight did you gain?
A: Improving realization can often increase profitability more effectively than simply increasing hourly rates.

---

## 8. Data Model & Scalability

### Q: How is your data structured?
A: The model uses dimension tables for lawyers, clients, and cases, and a fact table for time entries.

### Q: How would this scale to millions of records?
A: The same logic can be implemented in SQL, where the fact table can handle millions or billions of time-entry records efficiently.

---

## 9. Tools & Design Choices

### Q: Why did you start with Excel?
A: Excel is effective for prototyping pricing logic and validating business assumptions before scaling to SQL or Python.

---

## 10. Limitations

### Q: What are the limitations of this model?
A: The model uses assumed data and uniform scenario adjustments. Real-world implementations would use actual billing data and more granular discount rules.
