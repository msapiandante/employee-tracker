-- Creates the employee database --
DROP DATABASE IF EXISTS littlespoon_db;
CREATE DATABASE littlespoon_db;
-- Uses the littlespoon_db database --
USE littlespoon_db;

-- Selects littlespoon_db -- 
SELECT DATABASE();

CREATE TABLE Department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name  VARCHAR(30)
);

CREATE TABLE Role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id)
    REFERENCES Department(id)
);

CREATE TABLE Employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id)
    REFERENCES Role(id),
    FOREIGN KEY (manager_id)
    REFERENCES Employee(id)
);