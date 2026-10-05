USE startersql;

DROP TABLE IF EXISTS addresses;

CREATE TABLE addresses (
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
street VARCHAR(255),
city VARCHAR(100),
state VARCHAR(100),
pincode VARCHAR(10),
CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO addresses (user_id, street, city, state, pincode) VALUES
(1, '12 MG Road', 'Ambala', 'Haryana', '134003'),
(2, '45 Model Town', 'Chandigarh', 'Chandigarh', '160019'),
(3, '78 Sector 15', 'Gurugram', 'Haryana', '122001'),
(5, '23 Green Park', 'Delhi', 'Delhi', '110016'),
(6, '56 Civil Lines', 'Jaipur', 'Rajasthan', '302006'),
(7, '89 Shastri Nagar', 'Ludhiana', 'Punjab', '141001'),
(8, '34 Park Street', 'Kolkata', 'West Bengal', '700016'),
(9, '67 Sector 22', 'Noida', 'Uttar Pradesh', '201301'),
(10, '91 Nehru Nagar', 'Ghaziabad', 'Uttar Pradesh', '201001'),
(11, '15 Patel Nagar', 'Dehradun', 'Uttarakhand', '248001'),
(12, '42 Model Town', 'Jalandhar', 'Punjab', '144001'),
(13, '73 Civil Lines', 'Amritsar', 'Punjab', '143001'),
(14, '28 Sector 17', 'Chandigarh', 'Chandigarh', '160017'),
(15, '61 Railway Road', 'Panipat', 'Haryana', '132103'),
(16, '39 Green Avenue', 'Patiala', 'Punjab', '147001'),
(17, '84 Rajendra Nagar', 'Delhi', 'Delhi', '110060'),
(18, '27 Sector 9', 'Faridabad', 'Haryana', '121006'),
(19, '53 Ashok Vihar', 'Delhi', 'Delhi', '110052'),
(20, '76 Laxmi Nagar', 'Delhi', 'Delhi', '110092'),
(21, '19 Sector 14', 'Gurugram', 'Haryana', '122001'),
(22, '64 Vaishali Nagar', 'Jaipur', 'Rajasthan', '302021'),
(23, '31 Sector 10', 'Karnal', 'Haryana', '132001'),
(24, '47 Model Town', 'Rohtak', 'Haryana', '124001'),
(25, '88 Ambala Cantt', 'Ambala', 'Haryana', '133001');

SELECT * FROM users;
SELECT * FROM addresses;

DELETE FROM users WHERE id=22; # if i delete user then its address is also delete and if i delete address of an user then user cannot be delete.

-- if foreign key was not defined during table creation then i can add it later by using alter table
-- syntax
-- ALTER TABLE addresses ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id);