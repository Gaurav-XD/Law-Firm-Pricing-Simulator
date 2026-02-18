-- Base profitability query
SELECT
    te.time_entry_id,
    cl.client_type,
    te.hours,
    l.hourly_rate,
    cl.realization_rate,
    (te.hours * l.hourly_rate) AS billed_revenue,
    (te.hours * l.hourly_rate * cl.realization_rate) AS collected_revenue,
    (te.hours * l.cost_per_hour) AS cost,
    (te.hours * l.hourly_rate * cl.realization_rate)
      - (te.hours * l.cost_per_hour) AS final_profit
FROM time_entries te
JOIN lawyers l ON te.lawyer_id = l.lawyer_id
JOIN cases c ON te.case_id = c.case_id
JOIN clients cl ON c.client_id = cl.client_id;

-- Scenario variables
SET @rate_increase = 0.10;
SET @cost_increase = 0.05;
SET @realization_change = 0.00;

-- Scenario profitability query
SELECT
    SUM((te.hours * l.hourly_rate * (1 + @rate_increase)
        * cl.realization_rate * (1 + @realization_change))
      - (te.hours * l.cost_per_hour * (1 + @cost_increase))) AS scenario_profit
FROM time_entries te
JOIN lawyers l ON te.lawyer_id = l.lawyer_id
JOIN cases c ON te.case_id = c.case_id
JOIN clients cl ON c.client_id = cl.client_id;
