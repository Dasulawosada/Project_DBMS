CREATE TABLE Student (
    reg_no          VARCHAR(20)  PRIMARY KEY,
    f_name          VARCHAR(50)  NOT NULL,
    l_name          VARCHAR(50)  NOT NULL,
    email           VARCHAR(100) UNIQUE NOT NULL,
    address         VARCHAR(255),
    dob             DATE,
    student_type    ENUM('Proper','Repeat','Suspended') NOT NULL DEFAULT 'Proper',
    dep_id          INT,
    cgpa            DECIMAL(4,2) DEFAULT NULL,
    FOREIGN KEY (dep_id) REFERENCES Department(dep_id)
);

INSERT INTO Student (reg_no, f_name, l_name, email, address, dob, student_type, dep_id, cgpa) 
VALUES 
    ('TG/2024/2001','Amal','Perera','amal@student.ruh.ac.lk','Matara','2004-01-10','Proper',1, 3.52),
    ('TG/2024/2002','Bimali','Silva','bimali@student.ruh.ac.lk','Galle','2004-03-22','Proper',1, 2.95),
    ('TG/2024/2003','Chamath','Fernando','chamath@student.ruh.ac.lk','Colombo','2003-07-15','Proper',1, 3.90),
    ('TG/2024/2004','Dilani','Kumari','dilani@student.ruh.ac.lk','Hambantota','2004-02-28','Proper',1, 2.30),
    ('TG/2024/2005','Eranda','Jayasuriya','eranda@student.ruh.ac.lk','Matara','2003-11-05','Proper',1, 3.20),
    ('TG/2024/2006','Fathima','Rizna','fathima@student.ruh.ac.lk','Matara','2004-06-12','Proper',1, 3.54),
    ('TG/2024/2007','Gayan','Madusanka','gayan@student.ruh.ac.lk','Galle','2004-08-19','Proper',1, 1.80),
    ('TG/2024/2008','Hasini','Weerasinghe','hasini@student.ruh.ac.lk','Weligama','2003-09-30','Proper',1, 3.78),
    ('TG/2024/2009','Isuru','Bandara','isuru@student.ruh.ac.lk','Matara','2004-04-07','Proper',1, 2.98),
    ('TG/2024/2010','Janani','Ratnayake','janani@student.ruh.ac.lk','Galle','2004-05-25','Proper',1, 3.32),
    
    ('TG/2023/2011','Kasun','Gunawardena','kasun@student.ruh.ac.lk','Matara','2003-01-18','Repeat',1, 2.55),
    ('TG/2023/2012','Lakmali','Dissanayake','lakmali@student.ruh.ac.lk','Hambantota','2003-03-07','Repeat',1, 2.15),
    ('TG/2023/2013','Madara','Hettige','madara@student.ruh.ac.lk','Galle','2002-12-20','Repeat',1, 2.65),
    ('TG/2023/2014','Navoda','Senanayake','navoda@student.ruh.ac.lk','Matara','2003-06-14','Repeat',1, 1.95),
    ('TG/2023/2015','Oshan','Wickramasinghe','oshan@student.ruh.ac.lk','Colombo','2003-08-03','Repeat',1, 2.45),
        
    ('TG/2022/2016','Pasan','Liyanage','pasan@student.ruh.ac.lk','Matara','2002-05-11','Suspended',1, 1.25),
    ('TG/2022/2017','Qasim','Nizar','qasim@student.ruh.ac.lk','Galle','2002-07-28','Suspended',1, 1.55),
    ('TG/2022/2018','Rashmi','Gamage','rashmi@student.ruh.ac.lk','Weligama','2002-10-15','Suspended',1, 0.85),
    ('TG/2022/2019','Shenali','Abeywickrama','shenali@student.ruh.ac.lk','Matara','2002-02-22','Suspended',1, 1.15),
    ('TG/2022/2020','Tharindi','Jayawardena','tharindi@student.ruh.ac.lk','Hambantota','2002-04-09','Suspended',1, 0.95);