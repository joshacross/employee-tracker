DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS managers;

-- Departments Table
CREATE TABLE departments (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  department_name VARCHAR(30) NOT NULL
);

-- Roles Table
CREATE TABLE roles (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  department_id INTEGER,
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES departments(id) ON DELETE SET NULL
);

-- Dependent table for managers
CREATE TABLE managers (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR (30) NOT NULL,
);

-- Employee Table
CREATE TABLE employees (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INTEGER(10),
  manager VARCHAR (30) NOT NULL,
  managers_id INTEGER(10),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE SET NULL,
  CONSTRAINT fk_managers FOREIGN KEY (managers_id) REFERENCES managers(id) ON DELETE CASCADE,
  CONSTRAINT fk_managers_name FOREIGN KEY (manager) REFERENCES managers(last_name) ON DELETE SET NULL
);


--     employee_id INTEGER(10),
--     first_name VARCHAR (30) NOT NULL,
--     last_name VARCHAR (30) NOT NULL,
--     role_id INTEGER (10) NOT NULL,
--     manager VARCHAR (30) NOT NULL,
--     CONSTRAINT fk_manager_id FOREIGN KEY (id) REFERENCES employees(manager_id) ON DELETE CASCADE,
--     CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES employees(id) ON DELETE CASCADE,
--     CONSTRAINT fk_first_name FOREIGN KEY (first_name) REFERENCES employees(first_name) ON DELETE SET NULL,
--     CONSTRAINT fk_last_name FOREIGN KEY (last_name) REFERENCES employees(last_name) ON DELETE SET NULL,
--     CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES employees(role_id) ON DELETE SET NULL,
--     CONSTRAINT fk_manager FOREIGN KEY (manager) REFERENCES employees(manager) ON DELETE SET NULL
-- );


-- CREATE TABLE votes (
--   id INTEGER AUTO_INCREMENT PRIMARY KEY,
--   voter_id INTEGER NOT NULL,
--   candidate_id INTEGER NOT NULL,
--   created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
--   CONSTRAINT uc_voter UNIQUE (voter_id),
--   CONSTRAINT fk_voter FOREIGN KEY (voter_id) REFERENCES voters(id) ON DELETE CASCADE,
--   CONSTRAINT fk_candidate FOREIGN KEY (candidate_id) REFERENCES candidates(id) ON DELETE CASCADE
-- );