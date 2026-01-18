USE intern_training_db;

DROP TABLE IF EXISTS student;

CREATE TABLE student(
	id INT NOT NULL ,
	name VARCHAR(50) ,
    email VARCHAR(100) UNIQUE NOT NULL,
    city CHAR(5) DEFAULT "PUNE",
    dob DATE NOT NULL,
    PRIMARY KEY(id ,name)
);

INSERT INTO student (id, name, email, city, dob) VALUES
(1, 'Amit',   'amit@gmail.com',    '2002-05-14'),
(2, 'Rohit',  'rohit@gmail.com',   '2001-11-22'),
(3, 'Sneha',  'sneha@gmail.com',   '2003-02-10'),
(4, 'Priya',  'priya@gmail.com',   '2002-08-30'),
(5, 'Kunal',  'kunal@gmail.com',   '2001-01-19');

SELECT*  FROM student;

UPDATE student
SET city ='PUNE'
WHERE id IS NOT NULL;

ALTER TABLE student
MODIFY city CHAR(5) DEFAULT "pune";

ALTER TABLE student 
ADD COLUMN age INT NOT NULL;

UPDATE student
SET age= TIMESTAMPTDIFF(YEAR,dob,CURDATE());

UPDATE student SET age=20 WHERE id = 1;
UPDATE student SET age=22 WHERE id = 2;
UPDATE student SET age=23 WHERE id = 3;
UPDATE student SET age=22 WHERE id = 4;
UPDATE student SET age=21 WHERE id = 5;
 
alter table student
DROP COLUMN age;
 
SELECT @sql_safe_updates;
SET sql_safe_updates =0;

SELECT id, name , city FROM student;




