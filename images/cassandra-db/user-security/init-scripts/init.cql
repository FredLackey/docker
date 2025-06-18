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

-- Create additional application users
CREATE USER IF NOT EXISTS app_user WITH PASSWORD 'app_password';
GRANT ALL PERMISSIONS ON KEYSPACE sample TO app_user;

CREATE USER IF NOT EXISTS readonly_user WITH PASSWORD 'readonly_password';
GRANT SELECT ON KEYSPACE sample TO readonly_user; 