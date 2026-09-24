use startersql;

-- SELECT * FROM users;

-- Add column in table
ALTER TABLE users ADD column is_active BOOLEAN DEFAULT true;
SELECT * FROM users;

-- drop a column
ALTER TABLE users DROP column is_active;
SELECT * FROM users;

-- Modify a column type
ALTER TABLE users MODIFY COLUMN name VARCHAR(50);
SELECT * FROM users;

-- Moving column 
ALTER TABLE users MODIFY COLUMN gender ENUM('Male', 'Female', 'Other') AFTER name;
SELECT * FROM users;