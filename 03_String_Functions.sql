-- String functions

-- Length()
SELECT length('abc');

SELECT first_name, LENGTH(first_name) length
FROM employee_demographics
ORDER BY 2;

-- UPPER & LOWER
SELECT upper('sky');
SELECT lower('sky');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

-- TRIM
SELECT TRIM('      sky     ');
SELECT LTRIM('      sky     ');
SELECT RTRIM('      sky     ');

-- LEFT, RIGHT, SUBSTRING
SELECT first_name,
LEFT(first_name,4),
RIGHT(first_name,3),
SUBSTRING(first_name, 4, 3),
birth_date,
substring(birth_date, 6, 2) birth_month
FROM employee_demographics;

-- REPLACE
SELECT first_name, REPLACE(first_name, 'A','Z')
FROM employee_demographics;

-- LOCATE
SELECT first_name, locate('a',first_name)
FROM employee_demographics;

-- CONCAT
SELECT first_name, last_name,
CONCAT(first_name,' ',last_name) AS full_name
FROM employee_demographics;