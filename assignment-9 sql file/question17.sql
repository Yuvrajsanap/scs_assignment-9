CREATE DATABASE IF NOT EXISTS Assignment9_db;

USE Assignment9_db;

CREATE TABLE IF NOT EXISTS cricket (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO cricket (name) VALUES 
('rothit sharma'),
('virat kohli'),
('msd'),
('jashprit bumrah');
select * from cricket;