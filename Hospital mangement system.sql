-- To find the all databases-- 
SHOW DATABASES;

-- Create a new database-- 
CREATE DATABASE hospital;

-- select the database-- 
USE hospital;

-- create hospital table-- 
CREATE TABLE hospital (
    hos_id INT PRIMARY KEY,
    hname VARCHAR(100),
    haddress VARCHAR(255),
    hcity VARCHAR(100)
);

-- create patient table-- 
CREATE TABLE Patient (
    pat_id INT PRIMARY KEY,
    paddress VARCHAR(2550),
     pdiagnosis VARCHAR(255),
     hos_id INT,
     FOREIGN KEY (hos_id ) REFERENCES hospital  (hos_id)
);

-- create patient table-- 
CREATE TABLE Patient (
    pat_id INT PRIMARY KEY,
    paddress VARCHAR(2550),
     pdiagnosis VARCHAR(255),
     hos_id INT,
     FOREIGN KEY (hos_id ) REFERENCES hospital  (hos_id)
);

-- create Medical report table-- 
CREATE TABLE medical_report (
    precord_id INT PRIMARY KEY,
    date_of DATE ,
     pdiagnosis VARCHAR(255),
     pat_id INT,
     FOREIGN KEY (pat_id ) REFERENCES patient  (pat_id)
);

-- SHOW THE MEDICAL report table-- 
SELECT * FROM medical_report;

-- create Doctor Table -- 
CREATE TABLE Doctor (
     doctor_id INT PRIMARY KEY,
     drname VARCHAR (200),
     draddress VARCHAR(255),
     drcity VARCHAR(255),
     hos_id INT,
     FOREIGN KEY (hos_id ) REFERENCES hospital  (hos_id)
);

-- Show the doctor table-- 
SELECT * FROM Doctor;
