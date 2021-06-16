--to insert data into a table.

--Method 1
INSERT INTO Employee VALUES(104,'Kohli',25000,23)
--or without INTO because INTO is optional
INSERT Employee VALUES(104,'Kohli',25000,23)
select * from Employee

--Method 2

--insert into Employee Values(105, 'Sam',30000)   --error if we don't send all the values 
insert into Employee(EmpID,EmpName,Age) values(105,'Sam',29)
--or without INTO because INTO is optional
insert Employee(EmpID,EmpName,Age) values(105,'Sam',29)
select * from Employee

--to update existing data within a table.
UPDATE Employee SET EmpName = 'Krishna', Salary = 30000 WHERE EmpID=104
select * from Employee

-- IS keyword in update is used to update the null values
update Employee SET Salary=20000 where Salary IS NULL
select * from Employee

--to update all records with the same value then don't use where clause
update Employee SET Salary=20000
select * from Employee

--to delete records from a table.

--to delete specific record from a table.
DELETE FROM Employee WHERE EmpID=105
select * from Employee

-- IS keyword in delete is used to delete the null values records
DELETE FROM Employee WHERE AGE IS NULL
select * from Employee

--to delete all records from a table then don't use where clause
DELETE FROM Employee
select * from Employee