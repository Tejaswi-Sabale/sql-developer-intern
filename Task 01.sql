CREATE DATABASE inten_training_db;
drop database inten_training_db;

CREATE DATABASE intern_training_db;
USE intern_training_db;

CREATE TABLE student(
	id int PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR (100),
    age INT NOT NULL
);

INSERT INTO student 
(id ,name , email, age)
VALUES
(1,"Tejaswi","tejaswisabale@gmail.com",24),
(2,"sakshi","sakshisonawane@gmail.com",23),
(3,"tanuja","tanujagite@gmail.com",22),
(4,"priya","priyadivekar@gmail.com",23),
(5,"rita","ritajoseph@gmail.com",25);

SELECT*FROM student;

SELECT id,name FROM student;

select DISTINCT age FROM student; 

select* FROM student WHERE age>24;

CREATE TABLE intern_info(
	id INT PRIMARY KEY,
    city VARCHAR(20)
);

INSERT INTO intern_info VALUES (25,"pune");
INSERT INTO intern_info VALUES (23,"Mumbai");

SELECT*FROM intern_info;

select* from student WHERE id=3;

DROP TABLE intern_info;