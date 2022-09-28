-- Creating tables for PH-EmployeeDB
create table employees (
 emp_no int not NULL,
 birth_date date not null,
 first_name varchar(30) not null,
 last_name varchar(30) not null,
 gender varchar(3) not null,
 hire_date date not null,
	primary key (emp_no)
);
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);

CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

create table dept_emp(
	dept_no varchar(30) not null,
	emp_no int not null,
	from_date date not null,
	to_date date not null,
	primary key (dept_no,emp_no),
	foreign key (dept_no) REFERENCES departments(dept_no),
	foreign key (emp_no) references employees (emp_no)
);

create table titles(
	emp_no int not null,
	title varchar(30) not null,
	from_date date not null,
	to_date date not null,
	primary key (emp_no,title,from_date),
	foreign key (emp_no) references employees(emp_no)
);

select * from departments