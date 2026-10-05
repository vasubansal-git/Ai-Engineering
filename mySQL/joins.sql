USE startersql;

SELECT * FROM users;
SELECT * FROM addresses;

-- INNER JOIN -> only matches are return
SELECT users.name, users.gender, addresses.city, addresses.state, addresses.id AS addresses_id FROM users INNER JOIN addresses ON users.id = addresses.user_id;

-- LEFT JOIN -> all record return of left table + matches from right table
SELECT users.name, users.gender, addresses.city, addresses.state, addresses.id AS addresses_id FROM users LEFT JOIN addresses ON users.id = addresses.user_id;

-- RIGHT JOIN -> all record return of right table + matches from left table
SELECT users.name, users.gender, addresses.city, addresses.state, addresses.id AS addresses_id FROM users RIGHT JOIN addresses ON users.id = addresses.user_id;