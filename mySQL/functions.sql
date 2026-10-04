-- functions help us to analyze, transform, or summarize data in tables.

USE startersql;
SELECT * FROM users;

SELECT COUNT(*) FROM users WHERE gender="Male";
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;

SELECT SUM(salary) AS total FROM users;

SELECT AVG(salary) AS avg_salary FROM users;
SELECT gender, AVG(salary) AS avg_salary FROM users GROUP BY gender;
SELECT gender, SUM(salary) AS avg_salary FROM users GROUP BY gender;

SELECT id, gender, LOWER(name) AS lower_name, CONCAT(LOWER(name), "5677") AS username, YEAR(date_of_birth) AS YOB,LENGTH(name) AS name_len FROM users;

-- date diff
SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days FROM users;

-- Mathematical functions
SELECT salary,
	ROUND(salary) AS rounded,
	FLOOR(salary) AS floored,
	CEIL(salary) AS ceiled
FROM users;

SELECT salary, MOD(salary, 2) AS mod_salary FROM users;

-- conditional functions

SELECT id, name, gender, 
	IF(gender="Female", "yes", "no") AS is_female
FROM users;