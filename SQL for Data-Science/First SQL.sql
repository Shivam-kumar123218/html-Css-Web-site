CREATE DATABASE bestlife ;
USE bestlife;
SELECT DATABASE();

CREATE TABLE life(
     studentid INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR (50),
     age TINYINT,
     email VARCHAR(50)
     );

SELECT * FROM life;

INSERT INTO life(NAME,age,email)
VALUE ('Shivam',24,'shivamkumar@email.com'),
('sujeet',16,'sujeetkumar@email.com');
