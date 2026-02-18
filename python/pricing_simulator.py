import pandas as pd

# -------------------------
# Base data (same as SQL)
# -------------------------

lawyers = pd.DataFrame({
    "lawyer_id": ["L1", "L2", "L3"],
    "lawyer_level": ["Junior", "Senior", "Partner"],
    "hourly_rate": [2000, 5000, 10000],
    "cost_per_hour": [1200, 2500, 4000]
})

clients = pd.DataFrame({
    "client_id": ["C1", "C2", "C3"],
    "client_type": ["Startup", "Enterprise", "SME"],
    "realization_rate": [0.95, 0.85, 0.90]
})

cases = pd.DataFrame({
    "case_id": ["CA1", "CA2", "CA3"],
    "client_id": ["C1", "C2", "C3"]
})

time_entries = pd.DataFrame({
    "time_entry_id": ["T1", "T2", "T3", "T4", "T5"],
    "case_id": ["CA1", "CA1", "CA2", "CA3", "CA3"],
    "lawyer_id": ["L1", "L2", "L3", "L1", "L2"],
    "hours": [12, 8, 15, 10, 5]
})

# -------------------------
# Join tables (like SQL)
# -------------------------

df = (
    time_entries
    .merge(lawyers, on="lawyer_id")
    .merge(cases, on="case_id")
    .merge(clients, on="client_id")
)

# -------------------------
# Base calculations
# -------------------------

df["revenue"] = df["hours"] * df["hourly_rate"]
df["cost"] = df["hours"] * df["cost_per_hour"]
df["collected_revenue"] = df["revenue"] * df["realization_rate"]
df["profit"] = df["collected_revenue"] - df["cost"]

print("Base Profit:", df["profit"].sum())

# -------------------------
# Scenario simulation
# -------------------------

def run_scenario(rate_increase, cost_increase, realization_change):
    scenario_df = df.copy()

    scenario_df["scenario_revenue"] = (
        scenario_df["hours"]
        * scenario_df["hourly_rate"] * (1 + rate_increase)
        * scenario_df["realization_rate"] * (1 + realization_change)
    )

    scenario_df["scenario_cost"] = (
        scenario_df["hours"]
        * scenario_df["cost_per_hour"] * (1 + cost_increase)
    )

    scenario_df["scenario_profit"] = (
        scenario_df["scenario_revenue"] - scenario_df["scenario_cost"]
    )

    return scenario_df["scenario_profit"].sum()

# Example scenario
scenario_profit = run_scenario(
    rate_increase=0.10,
    cost_increase=0.05,
    realization_change=0.00
)

print("Scenario Profit:", scenario_profit)

