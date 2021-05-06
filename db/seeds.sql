
-- Data for departments 

INSERT INTO departments (id, department_name)
VALUES
-- 1
    ('Marketing'),
-- 2
    ('Sales'),
-- 3
    ('Admin/Ops'),
-- 4
    ('Human Resources'),
-- 5
    ('Customer Service'),
-- 6
    ('IT'),
-- 7
    ('Accounting'),
-- 8 
    ('Executives')

-- Data for Roles
INSERT INTO roles (title, salary, department_id)
VALUES
    -- Marketing Roles (1)
-- 1
    ('Marketing Specialist', 65000, 1),
-- 2
    ('Copywriter', 100000, 1),
-- 3
    ('Media Buyer', 12000, 1),
-- 4
    ('Product Manager', 80000, 1),
-- 5
    ('Profit Manager', 150000, 1),
-- 6
    ('Marketing Director',250000, 1),

    -- Sales Roles (2)
-- 7
    ('Sales Specialist', 60000, 2),
-- 8
    ('Sales Advisor', 100000, 2),
-- 9
    ('Sales Manager', 150000, 2),
-- 10
    ('VP of Sales', 250000, 2),

    -- Administrative/Operations Roles (3)
-- 11
    ('Administrative Assistant', 50000, 3),
-- 12
    ('Administrative Executive', 60000, 3),
-- 13
    ('Operations Manager', 80000, 3),
-- 14
    ('Operations Director', 100000, 3),

    -- HR Roles (4)
-- 15
    ('Human Resources Specialist', 60000, 4),
-- 16
    ('Human Resources Manager', 80000, 4),
-- 17
    ('Human Resources Director', 100000, 4),

    -- Customer Service Roles (5)
-- 18
    ('Customer Service', 45000, 5),
-- 19
    ('Customer Service Supervisor', 60000, 5),
-- 20
    ('Customer Service Manager', 70000, 5),
-- 21
    ('Customer Service Director', 100000, 5),

    -- IT Roles (6)
-- 22
    ('IT Support and Help Desk', 60000, 6),
-- 23
    ('UX/UI Designer/Developer', 80000, 6),
-- 24
    ('Front-End Web Developer', 80000, 6),
-- 25
    ('Back-End Web Developer', 100000, 6),
-- 26
    ('QC/Systems Engineer', 80000, 6),

    -- Accounting Roles (7)
-- 27
    ('Accountant', 80000, 7),
-- 28
    ('Accounting Director', 150000, 7),
-- 29
    ('Finance Director', 200000, 7),

    -- Executive Roles (8)
-- 30
    ('CEO', 500000, 8),
-- 31
    ('COO', 400000, 8),
-- 32
    ('CFO', 400000, 8),
-- 33
    ('CIO', 400000, 8),
-- 34
    ('CTO', 400000, 8),
-- 35
    ('CMO', 400000, 8);

-- Data for Employees

INSERT INTO employees (first_name, last_name, role_id, managers_id)
VALUES
    -- Marketing Roles (0)
    ('Emilija', 'Huerta', 1, 5),
    ('Katrina', 'Khan', 2, 5),
    ('Katelyn', 'Kirk', 3, 5),
    ('Padraig', 'Strong', 4, 5),
    ('Uzair', 'Massey', 5, 6),

    -- Sales Roles (1)
    ('Drake', 'Downs', 7, 9),
    ('Diyah', 'Snyder', 8, 9),
    ('Dean', 'Hardy', 9, 10),
    ('Hussain', 'Orr', 10, 31),

    -- Administrative/Operations Roles (2)
    ('Elaine', 'Garrison', 11, 13),
    ('Alena', 'Wardle', 12, 13),
    ('Farzana', 'Lugo', 13, 14),

    -- HR Roles (3)
    ('Addie', 'Rosales', 15, 16),
    ('Daisie', 'Kim', 16, 17),
    ('Finnian', 'Mullen', 17, 31),

    -- Customer Service Roles (4)
    ('Cassie', 'Firth', 18, 19),
    ('Carter', 'Bautista', 19, 20),
    ('Alice', 'Nava', 20, 21),

    -- IT Roles (5)

    ('Lucy', 'Boyd', 22, 34),
    ('Brielle', 'Campbell', 23, 34),
    ('Agata', 'Flowers', 24, 34),
    ('Umaima', 'Bernard', 25, 34),
    ('Neave', 'Adkins', 26, 34),

    -- Accounting Roles (6)
    ('Noa', 'Logan', 27, 28),
    ('Kelis', 'Rosas', 28, 29),
    ('Elaina', 'Peterson', 29, 32),

    -- Executive Roles (7)
    ('Cody', 'Dunlap', 30, NULL),
    ('Nathaniel', 'Norris', 31, 30),
    ('Kacie', 'Wallis', 32, 30),
    ('Mea', 'Noel', 33, 30),
    ('Miruna', 'Sharpless', 34, 30),
    ('Owain', 'Nieves', 35, 30);