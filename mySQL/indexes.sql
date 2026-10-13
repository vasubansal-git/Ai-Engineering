USE startersql;
# indexes - it is used to speed up data retrieval.

SHOW INDEXES FROM users;
SELECT * FROM users WHERE email = "rohan.mehta@gmail.com" AND gender = "Male";

CREATE INDEX idx_email ON users(gender);

SELECT * FROM users WHERE gender = "Male";

DROP INDEX idx_email on users;