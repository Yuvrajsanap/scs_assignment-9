CREATE DATABASE IF NOT EXISTS Assignment9_db;

USE Assignment9_db;

CREATE TABLE IF NOT EXISTS cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO cars (name) VALUES 
('macedi maybatch'),
('odii cd10'),
('bugati'),
('porche');
select * from cars;