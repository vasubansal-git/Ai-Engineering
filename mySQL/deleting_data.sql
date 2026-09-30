USE startersql;
SELECT * FROM users;

DELETE FROM users WHERE salary < 65000;
SELECT * FROM users;

DELETE FROM users WHERE id=13;
SELECT * FROM users;

DROP TABLE users;