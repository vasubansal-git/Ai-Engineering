USE startersql;

-- unique constraint
CREATE TABLE users (
	id INT auto_increment PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	gender ENUM('Male', 'Female', 'Other'),
	date_of_birth DATE,
	salary DECIMAL(10, 2),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
('Aarav Sharma', 'aarav.sharma@gmail.com', 'Male', '2001-05-14', 45000),
('Priya Verma', 'priya.verma@gmail.com', 'Female', '2002-08-21', 52000),
('Rohan Mehta', 'rohan.mehta@gmail.com', 'Male', '1999-11-03', 68000),
('Ananya Singh', 'ananya.singh@gmail.com', 'Female', '2003-02-17', 38000),
('Vivek Kumar', 'vivek.kumar@gmail.com', 'Male', '1998-07-29', 75000),
('Neha Gupta', 'neha.gupta@gmail.com', 'Female', '2000-12-11', 48000),
('Arjun Malhotra', 'arjun.malhotra@gmail.com', 'Male', '2001-03-25', 56000),
('Simran Kaur', 'simran.kaur@gmail.com', 'Female', '2002-06-08', 61000),
('Karan Joshi', 'karan.joshi@gmail.com', 'Male', '1997-09-19', 82000),
('Isha Kapoor', 'isha.kapoor@gmail.com', 'Female', '2001-01-30', 47000),
('Aditya Bansal', 'aditya.bansal@gmail.com', 'Male', '1999-04-12', 72000),
('Mehak Arora', 'mehak.arora@gmail.com', 'Female', '2003-10-05', 41000),
('Rahul Saini', 'rahul.saini@gmail.com', 'Male', '1998-02-23', 65000),
('Kritika Sharma', 'kritika.sharma@gmail.com', 'Female', '2000-07-16', 55000),
('Yash Thakur', 'yash.thakur@gmail.com', 'Male', '2002-11-27', 43000),
('Pooja Chawla', 'pooja.chawla@gmail.com', 'Female', '1999-05-09', 69000),
('Manish Yadav', 'manish.yadav@gmail.com', 'Male', '1997-12-18', 88000),
('Riya Aggarwal', 'riya.aggarwal@gmail.com', 'Female', '2001-09-07', 59000),
('Nikhil Sharma', 'nikhil.sharma@gmail.com', 'Male', '2000-03-14', 51000),
('Sakshi Jain', 'sakshi.jain@gmail.com', 'Female', '2002-01-22', 46000),
('Mohit Verma', 'mohit.verma@gmail.com', 'Male', '1998-06-30', 77000),
('Tanya Mehra', 'tanya.mehra@gmail.com', 'Female', '2003-04-19', 39000),
('Harsh Vohra', 'harsh.vohra@gmail.com', 'Male', '1999-10-28', 63000),
('Muskan Sharma', 'muskan.sharma@gmail.com', 'Female', '2000-08-13', 57000),
('Dev Rajput', 'dev.rajput@gmail.com', 'Male', '2001-12-06', 49000);

SELECT * FROM users;

INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
('Aarav Sharma', 'aarav.sharma@gmail.com', 'Male', '2001-05-14', 45000); # duplicate entry of email is not allowed due to UNIQUE constraint

-- add unique constraint in a column by alter query
ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (email);

-- example of NOT NULL
INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
(NULL, 'aarav.sharma@gmail.com', 'Male', '2001-05-14', 45000); # name column cannot be null

-- check constraint
ALTER TABLE users ADD CONSTRAINT chk_dob CHECK (date_of_birth > '1920-01-01');

INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
('Aarav Sharma', 'aarav.sharma@gmail.com', 'Male', '1905-05-14', 45000);

-- default constraint
# it use in created_at column

-- auto increment: use in id column.alter

-- practice

SHOW COLUMNS FROM users;

ALTER TABLE users
ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

SELECT * FROM users;

ALTER TABLE users
ALTER COLUMN is_active SET DEFAULT TRUE;