-- database: mysql

-- Create index for faster searching by last name
CREATE INDEX idx_last_name ON employees(last_name);

-- Create a view to show basic employee info
CREATE VIEW employee_overview AS
SELECT 
    id,
    CONCAT(first_name, ' ', last_name) AS full_name,
    position,
    hire_date
FROM employees;

-- Create a procedure to get employees hired after a certain date
DELIMITER $$

CREATE PROCEDURE GetEmployeesHiredAfter(IN hireDate DATE)
BEGIN
    SELECT * 
    FROM employees
    WHERE hire_date > hireDate
    ORDER BY hire_date;
END $$

DELIMITER ;

-- Example call:
-- CALL GetEmployeesHiredAfter('2020-01-01');
