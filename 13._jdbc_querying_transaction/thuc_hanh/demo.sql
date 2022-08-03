CREATE DATABASE demo;
USE demo;

CREATE TABLE users (
    id INT(3) NOT NULL AUTO_INCREMENT,
    name VARCHAR(120) NOT NULL,
    email VARCHAR(220) NOT NULL,
    country VARCHAR(120) NOT NULL,
    PRIMARY KEY (id)
);

insert into users(name, email, country) 
values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) 
values('Kante','kante@che.uk','Kenia');

DELIMITER $$

CREATE PROCEDURE get_user_by_id(IN user_id INT)

BEGIN

    SELECT users.name, users.email, users.country

    FROM users

    where users.id = user_id;

    END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE insert_user(

IN user_name varchar(50),

IN user_email varchar(50),

IN user_country varchar(50)

)

BEGIN

    INSERT INTO users(name, email, country) VALUES(user_name, user_email, user_country);

    END$$

DELIMITER ;

SELECT 
    *
FROM
    users
WHERE
    country LIKE CONCAT('%', CONVERT( 'ệ' , BINARY), '%');


CREATE TABLE Permision (
    id INT(11) PRIMARY KEY,
    name VARCHAR(50)
);



CREATE TABLE User_Permision (
    permision_id INT(11),
    user_id INT(11)
);


insert into Permision(id, name) values(1, 'add');

insert into Permision(id, name) values(2, 'edit');

insert into Permision(id, name) values(3, 'delete');

insert into Permision(id, name) values(4, 'view');

DELIMITER //

CREATE PROCEDURE display_all_user()
BEGIN
SELECT 
	*
FROM users;    
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE edit_user
		(IN id INT, 
		 IN name VARCHAR(120),
		 IN email VARCHAR(220),
		 IN country VARCHAR(120))
BEGIN
UPDATE users
	SET name = name,
		email = email,
		country = country
WHERE users.id = id;    
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE remove_user(IN id INT)
BEGIN
DELETE 
FROM users
WHERE 
	users.id = id;
END //

DELIMITER ;

call display_all_user();

DELIMITER //

CREATE PROCEDURE sort_by_name()
BEGIN 
SELECT 
	*
FROM users u
ORDER BY u.name;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE sort_by_country()
BEGIN
SELECT
	*
FROM users u
ORDER BY u.country;
END //

DELIMITER ;



