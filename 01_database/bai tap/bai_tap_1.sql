DROP DATABASE IF EXISTS student_management;
CREATE DATABASE student_management;
USE student_management;

CREATE TABLE class (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(45)
);

INSERT INTO class (`name`) VALUES ('le hong son'),('nguyen tan tai');

SELECT 
    *
FROM
    class;
CREATE TABLE teacher (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(45),
    age INT,
    country VARCHAR(45)
);
INSERT INTO teacher (`name`,age,country) VALUES ('le hong son', 24 , 'viet nam'),('nguyen tan tai', 26, 'trung quoc');
SELECT 
    *
FROM
    teacher;
