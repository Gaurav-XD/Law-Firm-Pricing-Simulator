CREATE DATABASE IF NOT EXISTS law_firm_pricing;
USE law_firm_pricing;

CREATE TABLE lawyers (
    lawyer_id VARCHAR(10) PRIMARY KEY,
    lawyer_level VARCHAR(20),
    hourly_rate DECIMAL(10,2),
    cost_per_hour DECIMAL(10,2)
);

CREATE TABLE clients (
    client_id VARCHAR(10) PRIMARY KEY,
    client_type VARCHAR(20),
    industry VARCHAR(50),
    realization_rate DECIMAL(5,2)
);

CREATE TABLE cases (
    case_id VARCHAR(10) PRIMARY KEY,
    client_id VARCHAR(10),
    case_type VARCHAR(50),
    start_date DATE,
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE time_entries (
    time_entry_id VARCHAR(10) PRIMARY KEY,
    case_id VARCHAR(10),
    lawyer_id VARCHAR(10),
    hours DECIMAL(5,2),
    FOREIGN KEY (case_id) REFERENCES cases(case_id),
    FOREIGN KEY (lawyer_id) REFERENCES lawyers(lawyer_id)
);

