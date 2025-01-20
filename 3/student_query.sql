-- Create database
CREATE DATABASE IF NOT EXISTS student;
USE student;

-- Create tables
CREATE TABLE IF NOT EXISTS score (
    name VARCHAR(50),
    score INT,
    PRIMARY KEY (name)
);

CREATE TABLE IF NOT EXISTS class (
    name VARCHAR(50),
    class VARCHAR(1),
    PRIMARY KEY (name)
);

-- Insert sample data
INSERT INTO score (name, score) VALUES
    ('John', 97),
    ('Mary', 100),
    ('David', 83),
    ('Sara', 89);

INSERT INTO class (name, class) VALUES
    ('John', 'A'),
    ('David', 'C'),
    ('Sara', 'B'),
    ('Mary', 'A');

-- Query to find the class of the student with second highest score
SELECT c.class
FROM class c
JOIN score s ON c.name = s.name
WHERE s.score = (
    SELECT DISTINCT score
    FROM score
    ORDER BY score DESC
    LIMIT 1 OFFSET 1
);
