-- Transactions & Auto Commit
USE startersql;

-- SET autocommit = 0;
SET autocommit = 1;
SELECT * FROM users;
COMMIT;

DELETE FROM users WHERE id=4;
ROLLBACK;