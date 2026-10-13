USE startersql;

CREATE VIEW rich_users AS
SELECT * FROM users WHERE salary > 70000;

SELECT * FROM rich_users;

-- updation in real table views change automatically

UPDATE users SET salary = 65000 WHERE id = 5;
SELECT * FROM rich_users;

DROP VIEW rich_users;