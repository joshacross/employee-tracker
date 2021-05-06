const mysql = require('mysql2');
const inquirer = require('inquirer');
const cTable = require('console.table');
const express = require('express');
const app = express();

// middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const employeeTracker = () => {
    return inquirer
        .prompt([
            {
                name: 'action',
                type: 'list',
                message: "What would you like to do?",
                choices: [
                    'View All Departments', 
                    'View All Roles', 
                    'View All Employees', 
                    'Add a Department', 
                    'Add a Role', 
                    'Add an Employee', 
                    'Update an Employee Role'
                ],
            }
        ])
        .then((answer) => {
            switch (answer.action) {
                case 'View All Departments':
                    viewDepartments();
                    break;
                
                case 'View All Roles':
                    viewRoles();
                    break;
                
                case 'View All Employees':
                    viewEmployees();
                    break;

                case 'Add a Department':
                    addDepartment();
                    break;

                case 'Add an Employee':
                    addEmployee();
                    break;
                
                case 'Update an Employee Role':
                    updateEmployee();
                    break;
            }
        });
};

const viewDepartments = () => {
    const sql = 'SELECT * FROM departments';
    db.query(sql, (err, rows) => {
        if(err) {
            console.log(err);
            return;
        }
        console.table(rows);
        employeeTracker();
        return;
    });
};

const viewRoles = () => {
    const sql = 'SELECT * FROM roles';
    db.query(sql, (err, rows) => {
        if(err) {
            console.log(err);
            return;
        }
        console.table(rows);
        employeeTracker();
        return;
    });
};

const viewEmployees = () => {
    const sql = `SELECT * FROM employees`;
    db.query(sql, (err, rows) => {
        if(err) {
            console.log(err);
            return;
        }
        console.table(rows);
        employeeTracker();
        return;
    });
};

// add Department function prompts user What department they would like to add
// validates that a value was entered
// Then inserts data into departments table under department name and then shows department table to confirm


const addDepartment = () => {
    inquirer
        .prompt([
            {
                name: 'addDepartment',
                type: 'input',
                message: 'What department would you like to add?',
                validate: nameInput => {
                    if (nameInput) {
                        return true;
                    } else {
                        console.log('Please enter a valid department name');
                        return false;
                    }
                }
            }
        ])
        .then(body => {
            const sql = `INSERT INTO departments (department_name) VALUES ?`;
            const param = [body.addDepartment];
            db.query(sql, param, (err, res) => {
                if (err) {
                    res.status(400).json({ error: err.message });
                    return;
                }
                viewDepartments();
            });
        });
};

const addEmployee = () => {
    inquirer
        .prompt([
            {
                name: 'employeeName',
                type: 'input',
                message: 'What is the employees first name?'
                // validate: nameInput =>
                // validate: nameInput => {
                //     if (nameInput) {
                //         return true;
                //     } else {
                //         console.log('Please enter a valid department name');
                //         return false;
                //     }
                // }
            }
        ])
        .then()
    console.log('Add Employee Script');
    employeeTracker();
    return;
};

const updateEmployee = () => {
    console.log('Update Employee Script');
    employeeTracker();
    return;
};

employeeTracker();
module.exports = employeeTracker;



// Inquirer - selected >>

// Run SQL Script to show table information based upon request

// 

// USER STORY
// AS A business owner
// I WANT to be able to view and manage the departments, roles, and employees in my company
// SO THAT I can organize and plan my business

// GIVEN a command-line application that accepts user input
// WHEN I start the application
// THEN I am presented with the following options: view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an employee role
// WHEN I choose to view all departments
// THEN I am presented with a formatted table showing department names and department ids
// WHEN I choose to view all roles
// THEN I am presented with the job title, role id, the department that role belongs to, and the salary for that role
// WHEN I choose to view all employees
// THEN I am presented with a formatted table showing employee data, including employee ids, first names, last names, job titles, departments, salaries, and managers that the employees report to
// WHEN I choose to add a department
// THEN I am prompted to enter the name of the department and that department is added to the database
// WHEN I choose to add a role
// THEN I am prompted to enter the name, salary, and department for the role and that role is added to the database
// WHEN I choose to add an employee
// THEN I am prompted to enter the employee’s first name, last name, role, and manager and that employee is added to the database
// WHEN I choose to update an employee role
// THEN I am prompted to select an employee to update and their new role and this information is updated in the database 
