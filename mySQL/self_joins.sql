USE startersql;

-- self join
SELECT * FROM users;

ALTER TABLE users 
ADD COLUMN  referred_by_id INT;

UPDATE users SET referred_by_id = 1 WHERE id IN (2, 3, 13, 14, 15, 16, 18, 20);
UPDATE users SET referred_by_id = 2 WHERE id = 6;

SELECT 
a.id,
a.name AS user_name,
b.name AS referred_by_name
FROM users a
LEFT JOIN users b ON a.referred_by_id = b.id;