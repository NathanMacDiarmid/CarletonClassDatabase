BEGIN TRANSACTION;

DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS dept_locations;
DROP TABLE IF EXISTS works_on;
DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS dependent;

CREATE TABLE employee (
    Fname text NOT NULL, --first name of the employee
    Minit text NOT NULL, --middle initial of the employee
    Lname text NOT NULL, --last name of the employee
    Ssn text primary key NOT NULL, --social security number of employee
    Bdate text NOT NULL, --birthday of employee
    Address text NOT NULL, --address of employee
    Sex text NOT NULL, --sex of employee
    Salary integer NOT NULL, --salary of employee
    Super_ssn integer, --ssn of manager
    Dno integer NOT NULL --the department number of the employee
);

CREATE TABLE department (
    Dname text NOT NULL, --the name of the department
    Dnumber integer primary key NOT NULL, --the department number
    Mgr_ssn text NOT NULL, --the social security number of the manager
    Mgr_start_date text NOT NULL --start date of the manager
);

CREATE TABLE dept_locations (
    Dnumber integer NOT NULL, --department number
    Dlocation text NOT NULL, --department location

    CONSTRAINT location primary key (Dnumber, Dlocation) --primary compunded key
);

CREATE TABLE works_on (
    Essn text NOT NULL, --employee social security number
    Pno integer NOT NULL, --product number
    Hours real, --hours for the product

    CONSTRAINT Epo primary key (Essn, Pno) --primary key for employees work
);

CREATE TABLE project (
    Pname text NOT NULL, --product name
    Pnumber integer primary key NOT NULL, --product number
    Plocation text NOT NULL, --the product location
    Dnum integer NOT NULL --department location
);

CREATE TABLE dependent (
    Essn text NOT NULL, --employee social security number
    Dependent_name text NOT NULL, --name of dependent
    Sex text NOT NULL, --sex of dependent
    Bdate text NOT NULL, --birthday of dependent
    Relationship text NOT NULL, --relationship to employee

    CONSTRAINT Edependent primary key (Essn, Dependent_name) --primary key for the employee dependent
);

/* Employee */
INSERT INTO employee VALUES ("John", "B", "Smith", "123456789", "1965-01-09", "731 Fondren, Houston, TX", "M", 30000, "333445555", 5);
INSERT INTO employee VALUES ("Franklin", "T", "Wong", "333445555", "1955-12-08", "638 Voss, Houston, TX", "M", 40000, "888665555", 5);
INSERT INTO employee VALUES ("Alicia", "J", "Zelaya", "999887777", "1968-01-19", "3321 Castle, Spring, TX", "F", 25000, "987654321", 4);
INSERT INTO employee VALUES ("Jennifer", "S", "Wallace", "987654321", "1941-06-20", "291 Berry, Bellaire, TX", "F", 43000, "888665555", 4);
INSERT INTO employee VALUES ("Ramesh", "K", "Narayan", "666884444", "1962-09-15", "975 Fire Oak, Humble, TX", "M", 38000, "333445555", 5);
INSERT INTO employee VALUES ("Joyce", "A", "English", "453453453", "1972-07-31", "5631 Rice, Houston, TX", "F", 25000, "333445555", 5);
INSERT INTO employee VALUES ("Amhed", "V", "Jabbar", "987987987", "1969-03-29", "980 Dallas, Houston, TX", "M", 25000, "987654321", 4);
INSERT INTO employee VALUES ("James", "E", "Brog", "888665555", "1937-11-10", "450 Stone, Houston, TX", "M", 55000, NULL, 1);

/* Department */
INSERT INTO department VALUES ("Research", 5, "333445555", "1988-05-22");
INSERT INTO department VALUES ("Administration", 4, "987654321", "1995-01-01");
INSERT INTO department VALUES ("Headquarters", 1, "888665555", "1981-06-19");

/* Department Location */
INSERT INTO dept_locations VALUES (1, "Houston");
INSERT INTO dept_locations VALUES (4, "Stafford");
INSERT INTO dept_locations VALUES (5, "Bellaire");
INSERT INTO dept_locations VALUES (5, "Sugarland");
INSERT INTO dept_locations VALUES (5, "Houston");

/* Works On */
INSERT INTO works_on VALUES ("123456789", 1, 32.5);
INSERT INTO works_on VALUES ("123456789", 2, 7.5);
INSERT INTO works_on VALUES ("666884444", 3, 40.0);
INSERT INTO works_on VALUES ("453453453", 1, 20.0);
INSERT INTO works_on VALUES ("453453453", 2, 20.0);
INSERT INTO works_on VALUES ("333445555", 2, 10.0);
INSERT INTO works_on VALUES ("333445555", 3, 10.0);
INSERT INTO works_on VALUES ("333445555", 10, 10.0);
INSERT INTO works_on VALUES ("333445555", 20, 10.0);
INSERT INTO works_on VALUES ("999887777", 30, 30.0);
INSERT INTO works_on VALUES ("999887777", 10, 10.0);
INSERT INTO works_on VALUES ("987987987", 10, 35.0);
INSERT INTO works_on VALUES ("987987987", 30, 5.0);
INSERT INTO works_on VALUES ("987654321", 30, 20.0);
INSERT INTO works_on VALUES ("987654321", 20, 15.0);
INSERT INTO works_on VALUES ("888665555", 20, NULL);

/* Project */
INSERT INTO project VALUES ("ProductX", 1, "Bellaire", 5);
INSERT INTO project VALUES ("ProductY", 2, "Sugarland", 5);
INSERT INTO project VALUES ("ProductZ", 3, "Houston", 5);
INSERT INTO project VALUES ("Computerization", 10, "Stafford", 4);
INSERT INTO project VALUES ("Reorganization", 20, "Houston", 1);
INSERT INTO project VALUES ("Newbenefits", 30, "Stafford", 4);

/* Dependent */
INSERT INTO dependent VALUES ("333445555", "Alice", "F", "1986-04-05", "Daughter");
INSERT INTO dependent VALUES ("333445555", "Theodore", "M", "1983-10-25", "Son");
INSERT INTO dependent VALUES ("333445555", "Joy", "F", "1958-05-03", "Spouse");
INSERT INTO dependent VALUES ("987654321", "Abner", "M", "1942-02-28", "Spouse");
INSERT INTO dependent VALUES ("123456789", "Michael", "M", "1988-01-04", "Son");
INSERT INTO dependent VALUES ("123456789", "Alice", "F", "1988-12-30", "Daughter");
INSERT INTO dependent VALUES ("123456789", "Elizabeth", "F", "1967-05-05", "Spouse");

COMMIT;