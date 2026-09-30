use startersql;
SELECT * FROM users;

-- update salary
UPDATE users SET salary = 45000 WHERE id=4;
SELECT * FROM users;

-- email update
UPDATE users SET email = "ananya.pande@gmail.com" WHERE id=4;
SELECT * FROM users;

-- practice
UPDATE users SET salary = 70000 WHERE id=5;
SELECT * FROM users;

UPDATE users SET name="Rahul Sharma" WHERE id=13;
SELECT * FROM users;

-- salary increment by 10000 which have less than 60000
UPDATE users SET salary=salary + 10000 WHERE salary<60000 AND id IS NOT NULL;
SELECT * FROM users;