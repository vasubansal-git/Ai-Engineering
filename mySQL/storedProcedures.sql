USE startersql;

DELIMITER $$
CREATE PROCEDURE select_users()
BEGIN
	SELECT * FROM users;
END $$
DELIMITER ;

CALL select_users();

DELIMITER $$
CREATE PROCEDURE add_users(
	IN p_name VARCHAR(100),
	IN P_email VARCHAR(100),
	IN p_gender ENUM('Male','Female', 'Other'),
	IN p_dob DATE,
	IN p_salary INT
)
BEGIN
	INSERT INTO users(name, email, gender, date_of_birth, salary)
    VALUES (p_name, p_email, p_gender, p_dob, p_salary);
    SELECT * FROM users;
END $$
DELIMITER ;

CALL add_users('john', 'john@harry.com', 'Male', '1990-07-21', 74000);
CALL add_users('john2', 'john2@harry.com', 'Male', '2000-07-21', 70000);

SHOW PROCEDURE STATUS WHERE DB = 'startersql';
DROP PROCEDURE IF EXISTS add_users;