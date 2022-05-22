


drop table if exists titles;
CREATE TABLE titles (  title_id VARCHAR(100) primary key  NOT NULL ,  title VARCHAR(100) NOT NULL );    
LOAD DATA LOCAL INFILE '/home/anabig114216/titles.csv' INTO TABLE titles FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES; 

drop table if exists salary;
CREATE TABLE salary (  emp_no int(20) primary key  NOT NULL AUTO_INCREMENT ,  Salary int(100) NOT NULL );  
LOAD DATA LOCAL INFILE '/home/anabig114216/salaries.csv' INTO TABLE salaries FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES; 

drop table if exists department;
CREATE TABLE department (  dept_no VARCHAR(20) primary key  NOT NULL, dept_name VARCHAR(40) NOT NULL );  
LOAD DATA LOCAL INFILE '/home/anabig114216/departments.csv' INTO TABLE departments FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES; 

drop table if exists dept_manager;
CREATE TABLE dept_manager (  dept_no VARCHAR(20) NOT NULL, emp_no INT(20) NOT NULL );  
LOAD DATA LOCAL INFILE '/home/anabig114216/dept_manager.csv' INTO TABLE dept_manager FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES; 


drop table if exists dept_emp;
CREATE TABLE dept_emp ( emp_no INT(20) NOT NULL, dept_no VARCHAR(20) NOT NULL );  
LOAD DATA LOCAL INFILE '/home/anabig114216/dept_emp.csv' INTO TABLE dept_emp FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES; 

drop table if exists employees;
CREATE TABLE employees( emp_no INT(20) primary key  NOT NULL,emp_titles_id VARCHAR(100) NOT NULL, birth_date VARCHAR(20) NOT NULL, first_name VARCHAR(40) NOT NULL, last_name VARCHAR(40) NOT NULL, sex VARCHAR(10) NOT NULL, hire_date VARCHAR(20) NOT NULL, no_of_projects INT(10) NOT NULL,Last_performance_rating VARCHAR(10) NOT NULL, Left_organization VARCHAR(10) NOT NULL, Last_date VARCHAR(20) NOT NULL );  
LOAD DATA LOCAL INFILE '/home/anabig114216/employees.csv' INTO TABLE employeee FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES; 