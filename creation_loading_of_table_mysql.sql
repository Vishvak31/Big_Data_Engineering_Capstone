CREATE TABLE `titles` (
    `title_id` VARCHAR(10) PRIMARY KEY,
    `title` VARCHAR(30)   NOT NULL
     );

CREATE TABLE `employees` (
    `emp_no` INTEGER  PRIMARY KEY,
    `emp_title_id` VARCHAR(10) ,
    `birth_date` VARCHAR(20)   NOT NULL,
    `first_name` VARCHAR(20)   NOT NULL,
    `last_name` VARCHAR(20)   NOT NULL,
    `sex` VARCHAR(10)   NOT NULL,
    `hire_date` VARCHAR(20)   NOT NULL,
    `no_of_projects` INTEGER NOT NULL,
    `last_performance_rating` VARCHAR(20) NOT NULL,
    `left_status` INT NOT NULL,
    `last_date` VARCHAR(20)
);

CREATE TABLE `salaries` (
    `emp_no` INTEGER ,
    `salary` INTEGER   NOT NULL );

CREATE TABLE `departments` (
    `dept_no` VARCHAR(10)  PRIMARY KEY,
    `dept_name` VARCHAR(30)   NOT NULL
);

CREATE TABLE `dept_manager` (
    `dept_no` VARCHAR(10),
    `emp_no` INTEGER 
);

CREATE TABLE `dept_emp` (
    `emp_no` INTEGER ,
    `dept_no` VARCHAR(10)
);

LOAD DATA LOCAL INFILE  'Capstone_Data/departments.csv'
INTO TABLE departments
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE  'Capstone_Data/dept_emp.csv'
INTO TABLE dept_emp
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE  'Capstone_Data/dept_manager.csv'
INTO TABLE dept_manager
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE  'Capstone_Data/employees.csv'
INTO TABLE employees
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE  'Capstone_Data/salaries.csv'
INTO TABLE salaries
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE  'Capstone_Data/titles.csv'
INTO TABLE titles
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



