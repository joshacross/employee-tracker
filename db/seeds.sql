
-- Data for departments 

INSERT INTO departments (department_name)
VALUES
-- 0
    ('Marketing'),
-- 1
    ('Sales'),
-- 2
    ('Administration'),
-- 3
    ('Human Resources'),
-- 4
    ('Customer Service'),
-- 5
    ('Operations'),
-- 6
    ('IT'),
-- 7
    ('Accounting');

-- Data for Roles
INSERT INTO roles (title, salary, department_id)
VALUES
-- Marketing Roles (0)
('Marketing Specialist', 65000.00, 0),
('Copywriter', 100000.00, 0),
('Media Buyer', 12000.00, 0),
('Product Manager', 80000.00, 0),
('Profit Manager', 150000, 0),
('Marketing Director',250000.00, 0),


-- Sales Roles (1)
('Sales Specialist', 60000.00, 1)
('Sales Advisor', 100000.00, 1)
('Sales Manager', 150000.00, 1)
('VP of Sales', 250000.00, 1)

-- Administrative Roles (2)

-- HR Roles (3)

-- Customer Service Roles (4)

-- Operations Roles (5)

-- IT Roles (6)
IT Professional
UX Designer & UI Developer
Web Designer
Backend Developer
QC Engineer


-- Accounting Roles (7)

-- Executive Roles (8)
Chief Technology Officer (CTO)
Chief Information Officer (CIO)



-- Data for Employees

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES
    ('Ronald', 'Firbank', 0, 1),
    ('Virginia', 'Woolf', 0, 1),
    ('Piers', 'Gaveston', 1, 0),
    ('Charles', 'LeRoi', 1, 1),
    ('Katherine', 'Mansfield', 2, 1),
    ('Dora', 'Carrington', 2, 0),
    ('Edward', 'Bellamy', 3, 0),
    ('Montague', 'Summers', 3, 1),
    ('Octavia', 'Butler', 3, 1),
    ('Joshua', 'Cross', 0, )