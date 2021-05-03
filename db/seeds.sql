
-- Data for departments 

INSERT INTO departments (department_name)
VALUES
-- 0
    ('Marketing'),
-- 1
    ('Sales'),
-- 2
    ('Admin/Ops'),
-- 3
    ('Human Resources'),
-- 4
    ('Customer Service'),
-- 6
    ('IT'),
-- 7
    ('Accounting');

-- Data for Roles
INSERT INTO roles (title, salary, department_id)
VALUES
    -- Marketing Roles (0)
-- 1
    ('Marketing Specialist', 65000.00, 0),
-- 2
    ('Copywriter', 100000.00, 0),
-- 3
    ('Media Buyer', 12000.00, 0),
-- 4
    ('Product Manager', 80000.00, 0),
-- 5
    ('Profit Manager', 150000, 0),
-- 6
    ('Marketing Director',250000.00, 0),

    -- Sales Roles (1)
-- 7
    ('Sales Specialist', 60000.00, 1),
-- 8
    ('Sales Advisor', 100000.00, 1),
-- 9
    ('Sales Manager', 150000.00, 1),
-- 10
    ('VP of Sales', 250000.00, 1),

    -- Administrative/Operations Roles (2)
-- 11
    ('Administrative Assistant', 50000.00, 2),
-- 12
    ('Administrative Executive', 60000.00, 2),
-- 13
    ('Operations Manager', 80000, 2),
-- 14
    ('Operations Director', 100000, 2),

    -- HR Roles (3)
-- 15
    ('Human Resources Specialist', 60000.00, 3),
-- 16
    ('Human Resources Manager', 80000.00, 3),
-- 17
    ('Human Resources Director', 100000.00, 3),

    -- Customer Service Roles (4)
-- 18
    ('Customer Service', 45000.00, 4),
-- 19
    ('Customer Service Supervisor', 60000.00, 4),
-- 20
    ('Customer Service Manager', 70000.00, 4),
-- 21
    ('Customer Service Director', 100000.00, 4),

    -- IT Roles (6)
-- 22
    ('IT Support and Help Desk', 60000.00, 6),
-- 23
    ('UX/UI Designer/Developer', 80000.00, 6),
-- 24
    ('Front-End Web Developer', 80000.00, 6),
-- 25
    ('Back-End Web Developer', 100000.00, 6),
-- 26
    ('QC/Systems Engineer', 80000.00, 6),

    -- Accounting Roles (7)
-- 27
    ('Accountant', 80000.00, 7),
-- 28
    ('Accounting Director', 150000.00, 7),
-- 29
    ('Finance Director', 200000.00, 7),

    -- Executive Roles (8)
-- 30
    ('CEO', 500000.00, 8),
-- 31
    ('COO', 400000.00, 8),
-- 32
    ('CFO', 400000.00, 8),
-- 33
    ('CIO', 400000.00, 8),
-- 34
    ('CTO', 400000.00, 8),
-- 35
    ('CMO', 400000.00, 8);

-- Data for Employees

INSERT INTO employees (first_name, last_name, role_id, manager, manager_id)
VALUES
    -- Marketing Roles (0)
    ('Emilija', 'Huerta', 0, 'KIRK', 0),
    ('Katrina', 'Khan', 1, 'KIRK', 0),
    ('Katelyn', 'Kirk', 2, 'STRONG', 1),
    ('Padraig', 'Strong', 3, 'GIBBONS', 2);
