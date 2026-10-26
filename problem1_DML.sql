USE company;

INSERT INTO DEPARTMENT (Dnumber, Dname) VALUES
 (5,'Finance'),
 (6,'Logistics'),
 (7,'Design');

INSERT INTO EMPLOYEE (ssn,fname,lname,bdate,address,gender,salary,Dno) VALUES
 ('290110201','Mohamed','Teama','2004-02-15','Alexandria','M',7000.00,5),
 ('305220312','Ahmed','Yousef','2003-06-10','Sidi Gaber','M',7600.00,6),
 ('318330423','Hassan','Ali','2002-09-25','Montaza','M',8200.00,7);

UPDATE DEPARTMENT SET mgr_ssn='290110201', mgr_start_date='2024-01-10' WHERE Dnumber=5;
UPDATE DEPARTMENT SET mgr_ssn='305220312', mgr_start_date='2024-03-15' WHERE Dnumber=6;
UPDATE DEPARTMENT SET mgr_ssn='318330423', mgr_start_date='2024-06-01' WHERE Dnumber=7;

INSERT INTO PROJECT (Pnumber,Pname,Plocation,Dno) VALUES
 (201,'Budget Tracker','Alexandria',5),
 (202,'Route Planner','Cairo',6),
 (203,'Brand Kit','Alexandria',7);