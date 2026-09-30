USE startersql;

SELECT * FROM users;
SELECT name, gender FROM users;

-- Use of WHERE clouse
SELECT * FROM users WHERE gender="Male";

-- not equal to <>
SELECT * FROM users WHERE gender<>"Male"; 

-- date_of_birth less than
SELECT * FROM users WHERE date_of_birth<'1999-11-03';

-- id greater than 10
SELECT * FROM users WHERE id>10;
SELECT * FROM users WHERE id<=10;

-- check null values
SELECT * FROM users WHERE date_of_birth IS NULL;
SELECT * FROM users WHERE date_of_birth IS NOT NULL;

-- date_of_birth between
SELECT * FROM users WHERE date_of_birth BETWEEN '1999-10-10' AND '2006-10-10';

-- gender
SELECT * FROM users WHERE gender in ('Male', 'Female');

-- AND or OR
SELECT * FROM users WHERE gender="Male" AND salary<70000;
SELECT * FROM users WHERE gender="Male" OR salary>55000 ORDER BY date_of_birth ASC;
SELECT * FROM users WHERE gender="Male" OR salary>55000 ORDER BY date_of_birth DESC;

-- how much rows you want to fetch?
SELECT * FROM users WHERE gender="Male" OR salary>55000 ORDER BY date_of_birth DESC LIMIT 5;

-- practice
SELECT * FROM users ORDER BY salary DESC;
SELECT * FROM users WHERE salary BETWEEN 50000 AND 70000 ORDER BY salary DESC;