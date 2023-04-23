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
    title   VARCHAR(30),
    salary  DECIMAL,
    department_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE SET NULL --follow up and check if this is needed-- 
);

CREATE TABLE Employeee (
    id  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name      VARCHAR(30),
    last_name       VARCHAR(30),
    role_id         INT,
    manager_id      INT,
    FOREIGN KEY (role_id)
    REFERENCES role(id),
    FOREIGN KEY (manager_id)
    REFERENCES employee(id)

    ON DELETE SET NULL-- not sure if this is needed, follow up--
);