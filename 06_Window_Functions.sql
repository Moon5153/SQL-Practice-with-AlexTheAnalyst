-- WINDOW Functions

-- without window function
SELECT gender,AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id=sal.employee_id
GROUP BY gender;

-- with window function

SELECT gender,AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id;

SELECT dem.first_name,dem.last_name, gender, salary,
SUM(salary) OVER(partition by gender ORDER BY dem.employee_id) AS Rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
-- Row Number& Rank & DENSE Rank
SELECT dem.employee_id,dem.first_name,dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id;