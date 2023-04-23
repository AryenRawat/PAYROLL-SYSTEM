CREATE TABLE employees (
  id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  phone VARCHAR(15),
  hire_date DATE,
  salary DECIMAL(10,2)
);
CREATE TABLE timecards (
  id INT PRIMARY KEY,
  employee_id INT,
  clock_in DATETIME,
  clock_out DATETIME,
  FOREIGN KEY (employee_id) REFERENCES employees(id)
);
CREATE TABLE benefits (
  id INT PRIMARY KEY,
  employee_id INT,
  health_insurance BOOLEAN,
  retirement_plan BOOLEAN,
  vacation_days INT,
  sick_days INT,
  FOREIGN KEY (employee_id) REFERENCES employees(id)
);
CREATE TABLE deductions (
  id INT PRIMARY KEY,
  employee_id INT,
  type VARCHAR(50),
  amount DECIMAL(10,2),
  FOREIGN KEY (employee_id) REFERENCES employees(id)
);
CREATE TABLE time_off_requests (
  id INT PRIMARY KEY,
  employee_id INT,
  start_date DATE,
  end_date DATE,
  status VARCHAR(50),
  FOREIGN KEY (employee_id) REFERENCES employees(id)
);
-- Employees
INSERT INTO employees (id, first_name, last_name, email, phone, hire_date, salary)
VALUES
(1, 'John', 'Doe', 'johndoe@example.com', '555-1234', '2022-01-01', 50000),
(2, 'Jane', 'Smith', 'janesmith@example.com', '555-5678', '2021-06-01', 60000),
(3, 'Bob', 'Johnson', 'bobjohnson@example.com', '555-9012', '2022-03-15', 45000);

-- Timecards
INSERT INTO timecards (id, employee_id, clock_in, clock_out)
VALUES
(1, 1, '2022-04-01 08:00:00', '2022-04-01 17:00:00'),
(2, 1, '2022-04-02 08:00:00', '2022-04-02 13:00:00'),
(3, 2, '2022-04-01 08:00:00', '2022-04-01 17:00:00'),
(4, 2, '2022-04-02 08:00:00', '2022-04-02 13:00:00');

-- Benefits
INSERT INTO benefits (id, employee_id, health_insurance, retirement_plan, vacation_days, sick_days)
VALUES
(1, 1, TRUE, TRUE, 10, 5),
(2, 2, TRUE, TRUE, 15, 7);

-- Deductions
INSERT INTO deductions (id, employee_id, type, amount)
VALUES
(1, 1, 'Federal Tax', 7500),
(2, 1, 'State Tax', 2500),
(3, 1, 'Social Security Tax', 3500),
(4, 1, 'Medicare Tax', 1000),
(5, 2, 'Federal Tax', 9000),
(6, 2, 'State Tax', 3000),
(7, 2, 'Social Security Tax', 4200),
(8, 2, 'Medicare Tax', 1200),
(9, 2, '401k', 5000);

-- Time off requests
INSERT INTO time_off_requests (id, employee_id, start_date, end_date, status)
VALUES
(1, 1, '2022-05-01', '2022-05-07', 'Pending'),
(2, 1, '2022-06-15', '2022-06-22', 'Approved'),
(3, 2, '2022-07-01', '2022-07-05', 'Pending');

SELECT first_name, last_name, salary
FROM employees;

SELECT clock_in, clock_out
FROM timecards
WHERE employee_id = 1;

SELECT SUM(vacation_days)
FROM benefits
WHERE employee_id = 2;

SELECT SUM(amount)
FROM deductions
WHERE employee_id = 1;

SELECT SUM(amount)
FROM deductions
WHERE employee_id = 1;

UPDATE employees
SET salary = 55000
WHERE id = 3;

DELETE FROM time_off_requests
WHERE id = 3;
