CREATE DATABASE IF NOT EXISTS real_db;
CREATE USER 'goat'@'%' IDENTIFIED BY 'GoatStuff#123';
GRANT ALL PRIVILEGES ON * . * TO 'goat'@'%';
USE real_db;
CREATE TABLE IF NOT EXISTS real_table (
	id INT AUTO_INCREMENT PRIMARY KEY, 
	these VARCHAR(255) NOT NULL,
	are VARCHAR(255) NOT NULL,
	columns VARCHAR(255) NOT NULL
);

INSERT INTO real_table (these, are, columns)
VALUES ('this is', 'real', 'data');
INSERT INTO real_table (these, are, columns)
VALUES ('somebody', 'wants', 'this data');
INSERT INTO real_table (these, are, columns)
VALUES ('but', 'they can''t', 'have it');
INSERT INTO real_table (these, are, columns)
VALUES ('this is', 'our', 'data');