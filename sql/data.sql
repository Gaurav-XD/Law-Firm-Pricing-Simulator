INSERT INTO lawyers VALUES
('L1', 'Junior', 2000, 1200),
('L2', 'Senior', 5000, 2500),
('L3', 'Partner', 10000, 4000);

INSERT INTO clients VALUES
('C1', 'Startup', 'Technology', 0.95),
('C2', 'Enterprise', 'Manufacturing', 0.85),
('C3', 'SME', 'Retail', 0.90);

INSERT INTO cases VALUES
('CA1', 'C1', 'Contract Review', '2026-01-01'),
('CA2', 'C2', 'Litigation', '2026-01-05'),
('CA3', 'C3', 'Compliance', '2026-01-10');

INSERT INTO time_entries VALUES
('T1', 'CA1', 'L1', 12),
('T2', 'CA1', 'L2', 8),
('T3', 'CA2', 'L3', 15),
('T4', 'CA3', 'L1', 10),
('T5', 'CA3', 'L2', 5);

