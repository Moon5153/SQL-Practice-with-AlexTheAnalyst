SELECT *
FROM employee_salary
WHERE first_name = 'Leslie';

SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM employee_demographics
WHERE gender != 'female';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';


-- AND OR NOT --Logical Operators

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'male';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male';

SELECT * 
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR
age > 55;

-- LIKE Statement
-- % and _
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'Jer%';

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a__';

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a__%';

SELECT * 
FROM employee_demographics
WHERE birth_date LIKE '1989%';

-- Group By
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
group by gender;

-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC;

-- Having vs Where
SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 70000;

-- Limit & Aliasing

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2,1;

-- Aliasing

SELECT gender, AVG(age) avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age >40;
