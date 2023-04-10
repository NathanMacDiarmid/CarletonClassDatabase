BEGIN TRANSACTION;

DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Classes;
DROP TABLE IF EXISTS Professors;

CREATE TABLE Students (
    name text, -- the name of the student
    student_number text NOT NULL, -- the unique number assigned to student
    email text, -- the email assigned to student
    program text, -- the program the student is taking
    cgpa text, -- the current Carleton Grade Point Average of the student
    current_classes text, -- the classes the student is currently taking
    required_classes text, -- the remaining classes the student is required to pass
    previous_classes text -- the classes the student has already taken

    /* primary key is student_number */
);

CREATE TABLE Classes (
    title text, -- the title of the class
    id text NOT NULL, -- the identification number of the class (COMP3005)
    grade text, -- the grades of the students in the class
    prerequisites text, -- the classes a student needs to pass before taking the class
    student_number text -- the student number of the student

    /* primary key is id */
);

CREATE TABLE Professors (
    name text, -- the name of the professor
    prof_id text NOT NULL, -- the unique number assigned to professor
    email text NOT NULL, -- the email assigned to professor
    background text, -- the background of the professor (Databases, Software Architecture, Embedded Systems)
    class_id text -- class id the professor is teaching

    /* primary key is prof_id */
);

/* Students */
INSERT INTO Students (name, student_number, email, program, cgpa, current_classes, required_classes, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'COMP3005', 'SYSC4001', 'SYSC3310');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'SYSC3101', 'SYSC3120');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'SYSC3303', 'SYSC3110');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'SYSC4106', 'ECOR2050');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'SYSC4120', 'CCDP2100');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'SYSC4101', 'COMP2804');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'SYSC4906', 'SYSC2320');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'SYSC4810', 'SYSC2100');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'SYSC4907', 'SYSC2004');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'SYSC4995', 'COMP1805');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'ELEC2501');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'SYSC2310');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'SYSC2006');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'MATH1005');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'PHYS1004');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'MATH1104');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'ECOR1052');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'ECOR1051');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'CHEM1101');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'MATH1004');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'ECOR1054');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Nathan', '101098993', 'nathan@carleton.ca', 'Software Engineering', '9.0', 'ECOR1053');

INSERT INTO Students VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'ELEC2507', 'SYSC3600', 'MATH3705');
INSERT INTO Students VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'SYSC2004', 'ELEC3500', 'MATH2004');
INSERT INTO Students VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'PHYS2202', 'ELEC3015', 'MATH1005');
INSERT INTO Students VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'PHYS3701', 'ELEC3908', 'ELEC2501');
INSERT INTO Students VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'CCDP2100', 'ELEC3909', 'ELEC2607');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'ECOR2050', 'SYSC2006');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'ECOR3800', 'PHYS2604');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'PHYS3606', 'ECOR1048');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'PHYS3807', 'ECOR1046');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'PHYS4707', 'ECOR1044');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'ELEC3509', 'ECOR1042');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'ELEC4908', 'PHYS1002');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'ECOR4995', 'MATH1104');
INSERT INTO Students (name, student_number, email, program, cgpa, required_classes, previous_classes) VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'PHYS4007', 'MATH1004');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'PHYS1001');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'CHEM1101');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'ECOR1041');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'ECOR1043');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'ECOR1045');
INSERT INTO Students (name, student_number, email, program, cgpa, previous_classes) VALUES ('Ben', '111222333', 'ben@carleton.ca', 'Engineering Physics', '10.0', 'ECOR1047');

/* Classes */

INSERT INTO Classes VALUES ('Database Management Systems', 'COMP3005', 'B+', 'SYSC2100', '101098993');
INSERT INTO Classes VALUES ('Database Management Systems', 'COMP3005', 'B+', 'SYSC2004', '101098993');
INSERT INTO Classes VALUES ('Database Management Systems', 'COMP3005', 'B+', 'COMP1805', '101098993');
INSERT INTO Classes VALUES ('Software Design Project', 'SYSC3110', 'B', 'SYSC2100', '101098993');
INSERT INTO Classes VALUES ('Requirements Engineering', 'SYSC3120', 'A+', 'SYSC2004', '101098993');
INSERT INTO Classes VALUES ('Introduction to Real-Time Systems', 'SYSC3310', 'C', 'SYSC2320', '101098993');
INSERT INTO Classes VALUES ('Computer Organization and Architecture', 'SYSC2320', 'A-', 'SYSC2310', '101098993');
INSERT INTO Classes VALUES ('Algorithms and Data Structures', 'SYSC2100', 'B-', 'SYSC2006', '101098993');
INSERT INTO Classes VALUES ('Object Oriented Software Development', 'SYSC2004', 'A-', 'SYSC2006', '101098993');
INSERT INTO Classes VALUES ('Differential Equations and Infinite Series for Engineering Students', 'MATH1005', 'B-', 'PHYS1004', '101098993');
INSERT INTO Classes VALUES ('Differential Equations and Infinite Series for Engineering Students', 'MATH1005', 'B-', 'MATH1004', '101098993');
INSERT INTO Classes VALUES ('Circuits and Signals', 'ELEC2051', 'B-', 'PHYS1004', '101098993');
INSERT INTO Classes VALUES ('Discrete Structures II', 'COMP2804', 'C', 'COMP1805', '101098993');
INSERT INTO Classes VALUES ('Electronics I', 'ELEC2507', 'B', 'ELEC2501', '111222333');
INSERT INTO Classes VALUES ('Electronics I', 'ELEC2507', 'B', 'MATH1005', '111222333');
INSERT INTO Classes VALUES ('Object Oriented Software Development', 'SYSC2004', 'A', 'SYSC2006', '111222333');
INSERT INTO Classes VALUES ('Wave Motion Physics', 'PHYS2202', 'A-', 'ELEC2501', '111222333');
INSERT INTO Classes VALUES ('Wave Motion Physics', 'PHYS2202', 'A-', 'MATH1005', '111222333');
INSERT INTO Classes VALUES ('Wave Motion Physics', 'PHYS2202', 'A-', 'MATH1004', '111222333');
INSERT INTO Classes VALUES ('Elements of Quantum Mechanics', 'PHYS3701', 'B', 'MATH2004', '111222333');
INSERT INTO Classes VALUES ('Modern Physics I', 'PHYS2604', 'B-', 'PHYS1002', '111222333');
INSERT INTO Classes VALUES ('Modern Physics I', 'PHYS2604', 'B-', 'MATH1104', '111222333');
INSERT INTO Classes VALUES ('Modern Physics I', 'PHYS2604', 'B-', 'MATH1004', '111222333');
INSERT INTO Classes VALUES ('Mathematical Methods I', 'MATH3705', 'B', 'MATH1005', '111222333');
INSERT INTO Classes VALUES ('Differential Equations and Infinite Series for Engineering Students', 'MATH1005', 'B-', 'MATH1004', '111222333');
INSERT INTO Classes VALUES ('Differential Equations and Infinite Series for Engineering Students', 'MATH1005', 'B-', 'MATH1004', '111222333');
INSERT INTO Classes VALUES ('Multivariable Calculus for Engineering Students', 'MATH2004', 'B', 'MATH1005', '111222333');
INSERT INTO Classes VALUES ('Multivariable Calculus for Engineering Students', 'MATH2004', 'B', 'MATH1104', '111222333');
INSERT INTO Classes VALUES ('Foundations of Physics II', 'PHYS1002', 'B', 'PHYS1001', '111222333');
INSERT INTO Classes VALUES ('Data Management', 'ECORE1042', 'B', 'ECOR1041', '111222333');
INSERT INTO Classes VALUES ('Mechatronics', 'ECORE1044', 'A+', 'ECOR1041', '111222333');
INSERT INTO Classes VALUES ('Mechatronics', 'ECORE1044', 'A+', 'ECOR1043', '111222333');
INSERT INTO Classes VALUES ('Mechanics', 'ECORE1046', 'A-', 'ECOR1045', '111222333');
INSERT INTO Classes VALUES ('Dynamics', 'ECORE1048', 'C', 'ECOR1045', '111222333');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Circuits and Signals', 'ELEC2501', 'C+', '111222333');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Switching Circuits', 'ELEC2607', 'A-', '111222333');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Foundation of Imperative Programming', 'SYSC2006', 'C-', '111222333');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Linear Algebra from Engineering Students', 'MATH1104', 'C', '111222333');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Calculus for Engineering Students', 'MATH1004', 'B+', '111222333');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Foundation of Physics I', 'PHYS1001', 'B', '111222333');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Computation and Programming', 'ECOR1041', 'B+', '111222333');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Circuits', 'ECOR1043', 'B+', '111222333');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Statics', 'ECOR1045', 'B+', '111222333');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Visual Communication', 'ECOR1047', 'A-', '111222333');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Discrete Structures I', 'COMP1805', 'A', '101098993');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Foundation of Imperative Programming', 'SYSC2006', 'A-', '101098993');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Introduction to Digital Systems', 'SYSC2310', 'A+', '101098993');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Design and Analysis of Engineering Experiments', 'ECOR2050', 'A', '101098993');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Communication Skills for Engineering Students', 'CCDP2100', 'B+', '101098993');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Communication Skills for Engineering Students', 'CCDP2100', 'A+', '111222333');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Fundamentals of Engineering III', 'ECOR1053', 'C+', '101098993');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Fundamentals of Engineering IV', 'ECOR1054', 'C', '101098993');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Fundamentals of Engineering I', 'ECOR1051', 'A-', '101098993');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Fundamentals of Engineering II', 'ECOR1052', 'B+', '101098993');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Calculus for Engineering Students', 'MATH1004', 'A', '101098993');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Linear Algebra from Engineering Students', 'MATH1104', 'B-', '101098993');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Chemistry for Engineering Students', 'CHEM1101', 'C', '101098993');
INSERT INTO Classes (title, id, grade, student_number) VALUES ('Introductory Electromagnetism and Wave Motion', 'PHYS1004', 'A+', '101098993');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Operating Systems', 'SYSC4001', 'SYSC2006', '101098993');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Software Architecture and Design', 'SYSC4120', 'SYSC3120', '101098993');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Software Product Management', 'SYSC4106', 'SYSC3120', '101098993');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Real-Time Concurrent Systems', 'SYSC3303', 'SYSC3310', '101098993');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Programming Languages', 'SYSC3101', 'SYSC2004', '101098993');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Engineering Project', 'SYSC4907', 'ECOR4995', '101098993');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Software Validation', 'SYSC4101', 'SYSC3120', '101098993');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Software Engineering Lab', 'SYSC4906', 'SYSC4120', '101098993');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Systems and Simulation', 'SYSC3600', 'MATH1005', '111222333');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Digital Electronics', 'ELEC3500', 'ELEC2607', '111222333');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Basic EM and Power Engineering', 'ELEC3105', 'MATH2004', '111222333');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Physical Electronics', 'ELEC3908', 'ELEC2507', '111222333');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Electromagnetic Waves', 'ELEC3909', 'ELEC3105', '111222333');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Modern Physics II', 'PHYS3606', 'PHYS3701', '111222333');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Modern Physics II', 'PHYS3606', 'PHYS2604', '111222333');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Mathematical Physics', 'PHYS3807', 'PHYS2202', '111222333');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Mathematical Physics', 'PHYS3807', 'MATH2004', '111222333');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Mathematical Physics', 'PHYS3807', 'MATH3705', '111222333');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Electronics II', 'ELEC3509', 'ELEC2507', '111222333');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Engineering Physics Project', 'ELEC4908', 'ECOR3800', '111222333');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Introduction to Quantum Mechanics I', 'PHYS4707', 'PHYS3701', '111222333');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Introduction to Quantum Mechanics I', 'PHYS4707', 'PHYS3807', '111222333');
INSERT INTO Classes (title, id, prerequisites, student_number) VALUES ('Engineering Physics Lab', 'PHYS4007', 'PHYS3606', '111222333');
INSERT INTO Classes (title, id, student_number) VALUES ('Professional Practice', 'ECOR4995', '111222333');
INSERT INTO Classes (title, id, student_number) VALUES ('Design and Analysis of Engineering Experiments', 'ECOR2050', '111222333');
INSERT INTO Classes (title, id, student_number) VALUES ('Engineering Economics', 'ECOR3800', '111222333');
INSERT INTO Classes (title, id, student_number) VALUES ('Introduction to Network and Software Security', 'SYSC4810', '101098993');

/* Professors */
INSERT INTO Professors VALUES ('Lou Nel', '111222222', 'lounel@carleton.ca', 'Computer Science', 'COMP1805');
INSERT INTO Professors VALUES ('Lou Nel', '111222222', 'lounel@carleton.ca', 'Computer Science', 'COMP2804');
INSERT INTO Professors VALUES ('Lou Nel', '111222222', 'lounel@carleton.ca', 'Computer Science', 'COMP3005');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC4810');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC4906');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC4101');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC4907');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC3101');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC3303');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC4106');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC4120');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC4001');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC3310');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC3120');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC3110');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC2320');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC2100');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC2004');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC2006');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC2310');
INSERT INTO Professors VALUES ('Babak Esfandiari', '222333444', 'babakesfandiari@carleton.ca', 'Software Engineering', 'SYSC3600');
INSERT INTO Professors VALUES ('Conor Kupchak', '333444555', 'conorkupchak@carleton.ca', 'Electrical Engineering', 'ELEC2501');
INSERT INTO Professors VALUES ('Conor Kupchak', '333444555', 'conorkupchak@carleton.ca', 'Electrical Engineering', 'ELEC2507');
INSERT INTO Professors VALUES ('Conor Kupchak', '333444555', 'conorkupchak@carleton.ca', 'Electrical Engineering', 'ELEC2607');
INSERT INTO Professors VALUES ('Conor Kupchak', '333444555', 'conorkupchak@carleton.ca', 'Electrical Engineering', 'ELEC3500');
INSERT INTO Professors VALUES ('Conor Kupchak', '333444555', 'conorkupchak@carleton.ca', 'Electrical Engineering', 'ELEC3105');
INSERT INTO Professors VALUES ('Conor Kupchak', '333444555', 'conorkupchak@carleton.ca', 'Electrical Engineering', 'ELEC3908');
INSERT INTO Professors VALUES ('Conor Kupchak', '333444555', 'conorkupchak@carleton.ca', 'Electrical Engineering', 'ELEC3909');
INSERT INTO Professors VALUES ('Conor Kupchak', '333444555', 'conorkupchak@carleton.ca', 'Electrical Engineering', 'ELEC3509');
INSERT INTO Professors VALUES ('Conor Kupchak', '333444555', 'conorkupchak@carleton.ca', 'Electrical Engineering', 'ELEC4908');
INSERT INTO Professors VALUES ('Jesse Heilman', '999999999', 'jesseheilman@carleton.ca', 'Engineering Physics', 'PHYS1001');
INSERT INTO Professors VALUES ('Jesse Heilman', '999999999', 'jesseheilman@carleton.ca', 'Engineering Physics', 'PHYS1002');
INSERT INTO Professors VALUES ('Jesse Heilman', '999999999', 'jesseheilman@carleton.ca', 'Engineering Physics', 'PHYS1004');
INSERT INTO Professors VALUES ('Jesse Heilman', '999999999', 'jesseheilman@carleton.ca', 'Engineering Physics', 'PHYS2604');
INSERT INTO Professors VALUES ('Jesse Heilman', '999999999', 'jesseheilman@carleton.ca', 'Engineering Physics', 'PHYS2202');
INSERT INTO Professors VALUES ('Jesse Heilman', '999999999', 'jesseheilman@carleton.ca', 'Engineering Physics', 'PHYS3701');
INSERT INTO Professors VALUES ('Jesse Heilman', '999999999', 'jesseheilman@carleton.ca', 'Engineering Physics', 'PHYS3606');
INSERT INTO Professors VALUES ('Jesse Heilman', '999999999', 'jesseheilman@carleton.ca', 'Engineering Physics', 'PHYS3807');
INSERT INTO Professors VALUES ('Jesse Heilman', '999999999', 'jesseheilman@carleton.ca', 'Engineering Physics', 'PHYS4707');
INSERT INTO Professors VALUES ('Jesse Heilman', '999999999', 'jesseheilman@carleton.ca', 'Engineering Physics', 'PHYS4007');
INSERT INTO Professors VALUES ('Matthieu Lemire', '888888888', 'matthieulemire@carleton.ca', 'Mathematics', 'MATH1004');
INSERT INTO Professors VALUES ('Matthieu Lemire', '888888888', 'matthieulemire@carleton.ca', 'Mathematics', 'MATH1104');
INSERT INTO Professors VALUES ('Matthieu Lemire', '888888888', 'matthieulemire@carleton.ca', 'Mathematics', 'MATH1005');
INSERT INTO Professors VALUES ('Matthieu Lemire', '888888888', 'matthieulemire@carleton.ca', 'Mathematics', 'MATH2004');
INSERT INTO Professors VALUES ('Matthieu Lemire', '888888888', 'matthieulemire@carleton.ca', 'Mathematics', 'MATH3705');
INSERT INTO Professors VALUES ('Cheryl Schramm', '777777777', 'cherylschramm@carleton.ca', 'Software Engineering', 'CHEM1101');
INSERT INTO Professors VALUES ('Cheryl Schramm', '777777777', 'cherylschramm@carleton.ca', 'Software Engineering', 'ECOR1051');
INSERT INTO Professors VALUES ('Cheryl Schramm', '777777777', 'cherylschramm@carleton.ca', 'Software Engineering', 'ECOR1052');
INSERT INTO Professors VALUES ('Cheryl Schramm', '777777777', 'cherylschramm@carleton.ca', 'Software Engineering', 'ECOR1053');
INSERT INTO Professors VALUES ('Cheryl Schramm', '777777777', 'cherylschramm@carleton.ca', 'Software Engineering', 'ECOR1054');
INSERT INTO Professors VALUES ('Cheryl Schramm', '777777777', 'cherylschramm@carleton.ca', 'Software Engineering', 'ECOR1041');
INSERT INTO Professors VALUES ('Cheryl Schramm', '777777777', 'cherylschramm@carleton.ca', 'Software Engineering', 'ECOR1042');
INSERT INTO Professors VALUES ('Cheryl Schramm', '777777777', 'cherylschramm@carleton.ca', 'Software Engineering', 'ECOR1043');
INSERT INTO Professors VALUES ('Cheryl Schramm', '777777777', 'cherylschramm@carleton.ca', 'Software Engineering', 'ECOR1044');
INSERT INTO Professors VALUES ('Cheryl Schramm', '777777777', 'cherylschramm@carleton.ca', 'Software Engineering', 'ECOR1045');
INSERT INTO Professors VALUES ('Cheryl Schramm', '777777777', 'cherylschramm@carleton.ca', 'Software Engineering', 'ECOR1046');
INSERT INTO Professors VALUES ('Cheryl Schramm', '777777777', 'cherylschramm@carleton.ca', 'Software Engineering', 'ECOR1047');
INSERT INTO Professors VALUES ('Cheryl Schramm', '777777777', 'cherylschramm@carleton.ca', 'Software Engineering', 'ECOR1048');
INSERT INTO Professors VALUES ('Kimberly Davis', '444555888', 'kimberlydavis@carleton.ca', 'Communications', 'CCDP2100');
INSERT INTO Professors VALUES ('Kimberly Davis', '444555888', 'kimberlydavis@carleton.ca', 'Communications', 'ECOR2050');
INSERT INTO Professors VALUES ('Kimberly Davis', '444555888', 'kimberlydavis@carleton.ca', 'Communications', 'ECOR3800');
INSERT INTO Professors VALUES ('Kimberly Davis', '444555888', 'kimberlydavis@carleton.ca', 'Communications', 'ECOR4995');

COMMIT;