CREATE DATABASE students;
USE students;
SELECT DATABASE();

CREATE TABLE book(
      Book_ID INT,
      Title VARCHAR(100),
      Author VARCHAR(50),
      Genre VARCHAR(50),
      Published_Year INT,
      Price INT,
      Stock INT
);

LOAD DATA INFILE 'C:/Users/Shivam/Desktop/books.csv'
INTO TABLE books
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


CREATE TABLE customer(
        Customer_ID INT,
        Name VARCHAR(100),
        Email VARCHAR(100),
         Phone INT,
         City VARCHAR(50),
         Country VARCHAR(50)
);


LOAD DATA INFILE '"C:\Users\pc\Downloads\Customers.csv"'
INTO TABLE customer
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE orders(
     Order_ID INT,
	Customer_ID INT,
    Book_ID INT,
    Order_Date INT,
    Quantity INT,
    Total_Amount INT
);

LOAD DATA INFILE "C:\Users\pc\Downloads\Orders.csv"
INTO TABLE customer
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


CREATE TABLE indian(
        Student_ID INT,
	    gender VARCHAR(50),
        branch VARCHAR(50),
        cgpa INT,
        tenth_percentage INT,
        twelfth_percentage INT,
        study_hours_per_day INT,
		attendance_percentage INT,
        projects_completed INT,
        internships_completed INT,
        coding_skill_rating INT,
        communication_skill_rating INT,
        certifications_count INT,
        part_time_job VARCHAR(10),
        family_income_level VARCHAR(40),
        city_tier VARCHAR(20)
);

LOAD DATA INFILE '"C:\Users\pc\Downloads\indian_engineering_student_placement.csv"'
INTO TABLE customer
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;




SELECT * FROM students.indian;
SELECT * FROM students.order;

SELECT * FROM students.customer;

SELECT * FROM students.book;

SELECT COUNT(Customer_ID) FROM students.customer;

SELECT COUNT(Student_ID) FROM students.indian;

SELECT * FROM students.indian
WHERE branch ='IT';

SELECT COUNT(branch) FROM students.indian;

SELECT * FROM students.indian
WHERE branch ='ECE';

SELECT * FROM students.indian
ORDER BY  twelfth_percentage DESC;

SELECT * FROM students.indian
ORDER BY attendance_percentage DESC;

SELECT COUNT(Student_ID), branch FROM students.indian
GROUP BY branch;

SELECT * FROM students.indian
WHERE part_time_job ='yes';

SELECT COUNT(Student_ID),city_tier FROM students.indian
GROUP BY city_tier;

 SELECT * FROM students.indian
 ORDER BY tenth_percentage DESC
 LIMIT 50;
 
 SELECT * FROM students.indian
 ORDER BY cgpa DESC;
 
 SELECT SUM(projects_completed) FROM students.indian;
 
 SELECT AVG(cgpa) FROM students.indian;
 
 SELECT * FROM students.indian
 WHERE twelfth_percentage BETWEEN  90 AND 100;
 
 SELECT COUNT(communication_skill_rating) FROM students.indian;
 
 SELECT * FROM students.indian
 WHERE Student_ID > 4000;
 
 SELECT SUM(certifications_count) FROM students.indian;

SELECT * FROM students.indian
WHERE Student_ID = 10;

SELECT * FROM students.book
WHERE Published_Year > 1950;
 
 SELECT * FROM students.customer
 WHERE Country ='Canada';
 
 SELECT * FROM students.book
 ORDER BY Price DESC
 LIMIT 1;
 
 SELECT COUNT(stock) FROM students.book;
 
 SELECT * FROM students.customer
 WHERE  quantity>1;
 
 SELECT DISTINCT Genre FROM students.book;
 
 SELECT DISTINCT branch FROM students.indian;
 
 SELECT * FROM students.book
 ORDER BY Stock;
 
 SELECT SUM(Price) FROM students.book;
 
 SELECT * FROM students.order
 WHERE Order_Date ='2023-07-01';
 
 SELECT COUNT(Total_Amount) FROM students.order;
  SELECT SUM(Total_Amount) FROM students.order;
  
  
  
  
 