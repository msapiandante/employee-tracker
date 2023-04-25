const inquirer = require('inquirer');
const mysql = require('mysql2');
const consoleTable = require('console.table');

// create the connection to the database
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Pancakes',
  database: 'littlespoon_db'
});

// Start the application
function startEMS() {
  console.log('Welcome to the Employee Management System!');
  selectAction();
}

// Prompt user to choose an action
function selectAction() {
  inquirer.prompt({
    name: 'action',
    type: 'list',
    message: 'What would you like to do?',
    choices: [
      'View all departments',
      'View all roles',
      'View all employees',
      'Add a department',
      'Add a role',
      'Add an employee',
      'Update an employee role',
      'Exit'
    ]
  }).then(answer => {
    switch (answer.action) {
      case 'View all departments':
        viewAllDepartments();
        break;
      case 'View all roles':
        viewAllRoles();
        break;
      case 'View all employees':
        viewAllEmployees();
        break;
      case 'Add a department':
        addDepartment();
        break;
      case 'Add a role':
        addRole();
        break;
      case 'Add an employee':
        addEmployee();
        break;
      case 'Update an employee role':
        updateEmployeeRole();
        break;
      case 'Exit':
        console.log('Goodbye!');
        connection.end();
        break;
      default:
        console.log(`Invalid action: ${answer.action}`);
        selectAction();
    }
  });
}

// View all departments
function viewAllDepartments() {
  console.log('Viewing all departments...\n');
  connection.query(
    'SELECT * FROM department',
    function(err, res) {
      if (err) throw err;
      console.table(res);
      selectAction();
    }
  );
}

// View all roles
function viewAllRoles() {
  console.log('Viewing all roles...\n');
  connection.query(
    'SELECT role.id, role.title, department.name AS department, role.salary FROM role LEFT JOIN department ON role.department_id = department.id',
    function(err, res) {
      if (err) throw err;
      console.table(res);
      selectAction();
    }
  );
}

// View all employees
function viewAllEmployees() {
  console.log('Viewing all employees...\n');
  connection.query(
    'SELECT employee.id, employee.first_name, employee.last_name, role.title AS job_title, department.name AS department, role.salary, CONCAT(manager.first_name, " ", manager.last_name) AS manager FROM employee LEFT JOIN role ON employee.role_id = role.id LEFT JOIN department ON role.department_id = department.id LEFT JOIN employee manager ON employee.manager_id = manager.id',
    function(err, res) {
      if (err) throw err;
      console.table(res);
      selectAction();
    }
  );
}

// Add a department
function addDepartment() {
  inquirer.prompt({
    name: 'name',
    type: 'input',
    message: 'What is the name of the department?'
  }).then(answer => {
    connection.query(
      'INSERT INTO department SET ?',
      { name: answer.name },
      function(err, res) {
        if (err) throw err;
        console.log(`${answer.name} department added!\n`);
        selectAction();
      }
    );
  });
}

// Add a role
function addRole() {
  connection.query(
    'SELECT * FROM role',
    function(err, departments) {
      if (err) throw err;
      console.log(`${answer.name} role added!\n`);
        selectAction();
      }
    );
  };
  startEMS();