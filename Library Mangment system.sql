CREATE DATABASE library_system;
USE library_system;

CREATE TABLE library (
    Book_id INT PRIMARY KEY,
    Title VARCHAR(50),
    Fields VARCHAR(50),
    Author VARCHAR(50)
);

SELECT * FROM library;
ALTER TABLE library
DROP COLUMN Fields;