-- LMS System-- 

SHOW DATABASES;

-- CREATE NEW DATABASE (College)-- 
CREATE DATABASE College;
SHOW DATABASES;

-- SELECT THE College DATA-- 
USE College;

-- Create Students Table--
CREATE TABLE Students(
    Student_id INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100)UNIQUE ,
    Age INT,
    Created_date DATETIME DEFAULT CURRENT_TIMESTAMP
    
); 

-- Create Courses Table--
CREATE TABLE Courses(
    Course_id INT PRIMARY KEY,
    Course_Name VARCHAR(50) NOT NULL,
    Duration INT
); 

SELECT* FROM Courses;

-- Create Students Table--
CREATE TABLE Students(
    Student_id INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100)UNIQUE ,
    Age INT,
    Created_date DATETIME DEFAULT CURRENT_TIMESTAMP
    
); 

-- Create Courses Table--
CREATE TABLE Courses(
    Course_id INT PRIMARY KEY,
    Course_Name VARCHAR(50) NOT NULL,
    Duration INT
); 