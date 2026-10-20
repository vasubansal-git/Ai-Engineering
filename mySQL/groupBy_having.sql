USE startersql;
SELECT * FROM addresses;

-- group by ->it is used to group rows that have the same values in specified columns
SELECT * FROM users;
SELECT gender, AVG(salary) as "avg_salary", COUNT(*) as count from users group by gender;

# note: where clouse cannot be use after group by but can use having

SELECT gender, AVG(salary) as "avg_salary", COUNT(*) AS count FROM users GROUP BY gender WITH ROLLUP;

# WHERE is used before grouping and HAVING is used after groups are formed.

# Groups more than 1 referral
SELECT referred_by_id, COUNT(*) AS total_referred
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id
HAVING COUNT(*) > 1;

SELECT * FROM users;