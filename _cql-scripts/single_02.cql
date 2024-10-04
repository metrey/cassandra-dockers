-- Create a keyspace
CREATE KEYSPACE test_keyspace WITH REPLICATION = { 
 'class' : 'SimpleStrategy', 
 'replication_factor' : 1 
};

-- Use the keyspace
USE test_keyspace;

-- Create a table
CREATE TABLE users (
 user_id UUID PRIMARY KEY,
 name text,
 age int
);

-- Insert data
INSERT INTO users (user_id, name, age) VALUES (uuid(), 'Alice', 30);
INSERT INTO users (user_id, name, age) VALUES (uuid(), 'Bob', 25);

-- Query data
SELECT * FROM users;
