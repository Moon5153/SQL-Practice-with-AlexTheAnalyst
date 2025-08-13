-- Joins
SELECT *
FROM employee_demographics;

SELECT * 
FROM employee_salary;

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id=sal.employee_id;

-- LEFT Join
SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
ON dem.employee_id=sal.employee_id;

-- Self join
SELECT *
FROM employee_demographics AS emp1
INNER JOIN employee_demographics AS emp2
ON emp1.employee_id=emp2.employee_id;

-- multiple tables join
SELECT *
FROM employee_demographics AS emp
	INNER JOIN employee_salary AS sal
ON emp.employee_id=sal.employee_id
	INNER JOIN parks_departments AS parks
ON parks.department_id=sal.dept_id;
