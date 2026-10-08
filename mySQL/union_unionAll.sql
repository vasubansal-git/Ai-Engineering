USE startersql;

CREATE TABLE admin_users (
	id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary INT
);

INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
(101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
(102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-02-20', 58000),
(103, 'Rakesh Bansal', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
(104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);

SELECT * FROM admin_users;
SELECT * FROM users;

-- union -> it removes duplicates
SELECT id, name FROM users 
UNION
SELECT id, name FROM admin_users;

-- union all -> if you want to see duplicate data
SELECT id, name FROM users 
UNION ALL
SELECT id, name FROM admin_users;

-- adding seperate roles
SELECT id, name, 'User' AS role FROM users
UNION ALL
SELECT id, name, 'Admin' AS role FROM admin_users;