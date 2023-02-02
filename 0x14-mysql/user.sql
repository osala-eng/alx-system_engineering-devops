CREATE USER IF NOT EXISTS 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
CREATE DATABASE IF NOT EXISTS tyrell_corp;
USE tyrell_corp;
CREATE TABLE IF NOT EXISTS nexus6(
	title VARCHAR(50) NOT NULL,
	year INT NOT NULL,
	PRIMARY KEY(title));
INSERT INTO nexus6 VALUE ("test-data", 2022);
GRANT SELECT ON tyrell_corp . `nexus6` TO 'holberton_user'@'localhost';
