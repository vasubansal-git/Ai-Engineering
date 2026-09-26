use startersql;

-- Insert data
INSERT INTO users VALUES
(1, 'vasu', 'Male', 'vasubansal0000@vasu.com', '2000-08-16', DEFAULT);

INSERT INTO users (name, gender, email, date_of_birth) VALUES
('ujjwal', 'Male', 'ujjwal890@ujjwal.com', '2006-08-16'),
('sarv', 'Male', 'sarv890@sarv.com', '2006-08-18'),
('ankit', 'Male', 'ankit890@ankit.com', '2006-08-20');

SELECT * FROM users;

DROP DATABASE startersql;