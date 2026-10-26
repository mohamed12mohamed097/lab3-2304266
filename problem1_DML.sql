USE company;

INSERT INTO DEPARTMENT (Dnumber, Dname) VALUES
 (10,'Engineering'),
 (20,'Marketing'),
 (30,'Support');

INSERT INTO EMPLOYEE (ssn,fname,lname,bdate,address,gender,salary,Dno) VALUES
 ('204518837','Mohamed','Teama','2004-02-15','Alexandria','M',7500.00,10),
 ('318276459','Nour','Samir','2001-09-03','Smouha','F',8200.00,20),
 ('427190365','Karim','Fathy','1999-12-27','Miami','M',9100.00,30);

UPDATE DEPARTMENT SET mgr_ssn='204518837', mgr_start_date='2023-01-10' WHERE Dnumber=10;
UPDATE DEPARTMENT SET mgr_ssn='318276459', mgr_start_date='2023-06-01' WHERE Dnumber=20;
UPDATE DEPARTMENT SET mgr_ssn='427190365', mgr_start_date='2024-03-15' WHERE Dnumber=30;

INSERT INTO PROJECT (Pnumber,Pname,Plocation,Dno) VALUES
 (101,'Web Portal','Alexandria',10),
 (102,'Ad Campaign','Cairo',20),
 (103,'Help Desk','Alexandria',30);