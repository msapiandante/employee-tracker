# employee-tracker

pseudocode: 

GIVEN a command-line application that accepts user input
WHEN I start the application - To start the application i will run index.js. 
After i run index.js I will be presented with the following options: 
THEN I am presented with the following options: view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an employee role. 

The schema will have the employee tracker database, created, saved, used and selected. 
It will then have the following tables: 
department: 
    id   INT
    Name  VARCHAR(30)
role:
    id    INT
    title   VARCHAR(30)
    salary  DECIMAL
    department_id   INT
employee:
    id      INT
    first_name      VARCHAR(30)
    last_name       VARCHAR(30)
    role_id         INT
    manager_id      INT


WHEN I choose to view all departments
THEN I am presented with a formatted table showing department names and department ids

WHEN I choose to view all roles
THEN I am presented with the job title, role id, the department that role belongs to, and the salary for that role

WHEN I choose to view all employees
THEN I am presented with a formatted table showing employee data, including employee ids, first names, last names, job titles, departments, salaries, and managers that the employees report to

WHEN I choose to add a department
THEN I am prompted to enter the name of the department and that department is added to the database

WHEN I choose to add a role
THEN I am prompted to enter the name, salary, and department for the role and that role is added to the database

WHEN I choose to add an employee
THEN I am prompted to enter the employee’s first name, last name, role, and manager, and that employee is added to the database

WHEN I choose to update an employee role
THEN I am prompted to select an employee to update and their new role and this information is updated in the database 