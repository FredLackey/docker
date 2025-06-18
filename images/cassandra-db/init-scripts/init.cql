-- Create keyspace
CREATE KEYSPACE IF NOT EXISTS sample WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

-- Use the keyspace
USE sample;

-- Create table for SampleItems
CREATE TABLE IF NOT EXISTS sample_items (
    id UUID PRIMARY KEY,
    item_key TEXT,
    item_value TEXT
); 