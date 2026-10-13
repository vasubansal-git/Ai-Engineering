USE startersql;

# subQueries: it is a query nested inside another query. SubQueries are useful for breaking down complex problems into smaller parts.

SELECT AVG(salary) FROM users;

-- sub query
SELECT * FROM users WHERE salary < (SELECT AVG(salary) FROM users);

-- sub query with IN 
SELECT id, name, referred_by_id
FROM users
WHERE referred_by_id IN (
SELECT id FROM users WHERE salary > 50000
);

SELECT name, salary,
(SELECT AVG(salary) FROM users) AS average_salary
FROM users;