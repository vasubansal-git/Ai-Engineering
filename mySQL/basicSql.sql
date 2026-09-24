CREATE DATABASE startersql;

USE startersql;

# create a table
CREATE TABLE users (
	id INT auto_increment PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

# fetch the table
SELECT * FROM users;

# fetch specific columns
SELECT id, email FROM users;

# drop the database - delete the entire database
# DROP DATABASE startersql;

# Renaming of table
RENAME TABLE users to programmers;
SELECT * FROM programmers;

RENAME TABLE programmers TO users;
SELECT * FROM users;
