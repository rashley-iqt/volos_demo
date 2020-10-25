CREATE DATABASE IF NOT EXISTS fake_db;
CREATE USER 'goat'@'%' IDENTIFIED BY 'GoatStuff#123';
GRANT ALL PRIVILEGES ON * . * TO 'goat'@'%';
USE fake_db;
CREATE TABLE IF NOT EXISTS fake_table (
	id INT AUTO_INCREMENT PRIMARY KEY, 
	you VARCHAR(255) NOT NULL,
	got VARCHAR(255) NOT NULL,
	conned VARCHAR(255) NOT NULL
);

INSERT INTO fake_table (you, got, conned)
VALUES ('let', 'me', 'out');
INSERT INTO fake_table (you, got, conned)
VALUES ('this', 'is not', 'a dance');
INSERT INTO fake_table (you, got, conned)
VALUES ('i''m', 'begging', 'for help');
INSERT INTO fake_table (you, got, conned)
VALUES ('this is', 'worhless', 'data');