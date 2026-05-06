CREATE TABLE Mark (
    mark_id     INT AUTO_INCREMENT PRIMARY KEY,
    reg_no      VARCHAR(20)  NOT NULL,
    c_code      VARCHAR(20)  NOT NULL,
    quiz        DECIMAL(5,2) DEFAULT 0,
    assessment  DECIMAL(5,2) DEFAULT 0,
    mid_theory  DECIMAL(5,2) DEFAULT 0,
    mid_practical DECIMAL(5,2) DEFAULT 0,
    final_theory  DECIMAL(5,2) DEFAULT 0,
    final_practical DECIMAL(5,2) DEFAULT 0,
    ca_total    DECIMAL(5,2) GENERATED ALWAYS AS
                  (quiz + assessment + mid_theory + mid_practical) STORED,
    has_medical_ca   TINYINT(1) DEFAULT 0,
    has_medical_mid  TINYINT(1) DEFAULT 0,
    has_medical_final TINYINT(1) DEFAULT 0,
    FOREIGN KEY (reg_no)  REFERENCES Student(reg_no)
    on delete cascade on update cascade,
    FOREIGN KEY (c_code)  REFERENCES Course(c_code)
    on delete cascade on update cascade,
    UNIQUE KEY uq_student_course (reg_no, c_code)
);

-- ============================================================
-- MARK DATA
-- ============================================================

INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical, has_medical_ca, has_medical_mid, has_medical_final) VALUES
('TG/2024/2001','ICT1201', 0.00,  0.00,  0.00,  15.00, 0.00,  85.00, 0,0,0), -- DBMS Practicum (Practical)
('TG/2024/2001','ICT1202', 12.00, 18.00, 14.00, 13.00, 72.00, 68.00, 0,0,0), -- System Programming (Both)
('TG/2024/2001','ICT1203', 10.00, 16.00, 12.00, 0.00,  65.00, 0.00,  0,0,0), -- Web Development (Theory)
('TG/2024/2001','ICT1204', 0.00,  0.00,  0.00,  14.00, 0.00,  80.00, 0,0,0), -- Web Dev Practicum (Practical)
('TG/2024/2001','ICT1205', 13.00, 17.00, 15.00, 0.00,  78.00, 0.00,  0,0,0), -- DBMS (Theory)
('TG/2024/2001','ICT1206', 14.00, 19.00, 16.00, 0.00,  88.00, 0.00,  0,0,0), -- OS Concepts (Theory)
('TG/2024/2001','MAT1201', 11.00, 15.00, 13.00, 0.00,  55.00, 0.00,  0,0,0), -- Discrete Maths (Theory)
('TG/2024/2001','MGT1201', 10.00, 14.00, 12.00, 0.00,  60.00, 0.00,  0,0,0), -- Management (Theory)
('TG/2024/2001','ENG1201', 15.00, 20.00, 18.00, 0.00,  80.00, 0.00,  0,0,0); -- English II (Theory)


INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical) VALUES
('TG/2024/2002','ICT1201', 0, 0, 0, 12, 0, 65),
('TG/2024/2002','ICT1202', 10, 15, 12, 11, 60, 58),
('TG/2024/2002','ICT1203', 8, 13, 10, 0, 50, 0),
('TG/2024/2002','ICT1204', 0, 0, 0, 11, 0, 60),
('TG/2024/2002','ICT1205', 9, 14, 11, 0, 55, 0),
('TG/2024/2002','ICT1206', 11, 16, 13, 0, 70, 0),
('TG/2024/2002','MAT1201', 9, 14, 11, 0, 48, 0),
('TG/2024/2002','MGT1201', 8, 12, 10, 0, 52, 0),
('TG/2024/2002','ENG1201', 12, 18, 14, 0, 75, 0);

INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical, has_medical_ca, has_medical_mid, has_medical_final) VALUES
('TG/2024/2003','ICT1201',0,0,0,16,0,88,0,0,0),
('TG/2024/2003','ICT1202',14,19,16,15,85,82,0,0,0),
('TG/2024/2003','ICT1203',15,20,18,0,90,0,0,0,0),
('TG/2024/2003','ICT1204',0,0,0,17,0,90,0,0,0),
('TG/2024/2003','ICT1205',13,18,15,0,80,0,0,0,0),
('TG/2024/2003','ICT1206',15,20,17,0,92,0,0,0,0),
('TG/2024/2003','MAT1201',12,17,14,0,72,0,0,0,0),
('TG/2024/2003','MGT1201',14,18,16,0,85,0,0,0,0),
('TG/2024/2003','ENG1201',15,20,19,0,92,0,0,0,0),


INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical, has_medical_ca, has_medical_mid, has_medical_final) VALUES
('TG/2024/2004','ICT1201',0.00, 0.00, 0.00, 9.00, 0.00, 40.00, 0, 0, 0), 
('TG/2024/2004','ICT1202',7.00, 11.00, 8.00, 7.00, 38.00, 35.00, 0, 0, 0), 
('TG/2024/2004','ICT1203',8.00, 12.00, 9.00, 0.00, 42.00, 0.00, 0, 0, 0),  
('TG/2024/2004','ICT1204',0.00, 0.00, 0.00, 10.00, 0.00, 45.00, 0, 0, 0), 
('TG/2024/2004','ICT1205',9.00, 13.00, 10.00, 0.00, 45.00, 0.00, 0, 0, 0), 
('TG/2024/2004','ICT1206',10.00, 14.00, 11.00, 0.00, 52.00, 0.00, 0, 0, 0), 
('TG/2024/2004','MAT1201',8.00, 12.00, 9.00, 0.00, 44.00, 0.00, 0, 0, 0), 
('TG/2024/2004','MGT1201',7.00, 11.00, 9.00, 0.00, 40.00, 0.00, 0, 0, 0), 
('TG/2024/2004','ENG1201',9.00, 13.00, 10.00, 0.00, 50.00, 0.00, 0, 0, 0); 

INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical, has_medical_ca, has_medical_mid, has_medical_final) VALUES
('TG/2024/2005','ICT1201', 0.00,  0.00,  0.00,  13.00, 0.00,  70.00, 0, 0, 0), 
('TG/2024/2005','ICT1202', 12.00, 17.00, 14.00, 13.00, 68.00, 65.00, 0, 0, 0), 
('TG/2024/2005','ICT1203', 11.00, 16.00, 13.00, 0.00,  66.00, 0.00,  0, 0, 0), -- Web Development
('TG/2024/2005','ICT1204', 0.00,  0.00,  0.00,  12.00, 0.00,  68.00, 0, 0, 0), -- Web Dev Practicum
('TG/2024/2005','ICT1205', 10.00, 15.00, 12.00, 0.00,  60.00, 0.00,  0, 0, 0), -- DBMS Theory
('TG/2024/2005','ICT1206', 13.00, 17.00, 14.00, 0.00,  74.00, 0.00,  0, 0, 0), -- OS Concepts
('TG/2024/2005','MAT1201', 11.00, 16.00, 13.00, 0.00,  62.00, 0.00,  0, 0, 0), -- Discrete Maths
('TG/2024/2005','MGT1201', 9.00,  14.00, 11.00, 0.00,  58.00, 0.00,  0, 0, 0), -- Management
('TG/2024/2005','ENG1201', 13.00, 18.00, 15.00, 0.00,  72.00, 0.00,  0, 0, 0); -- English II

INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical, has_medical_ca, has_medical_mid, has_medical_final) VALUES
('TG/2024/2006','ICT1201', 0.00,  0.00,  0.00,  15.00, 0.00,  78.00, 0, 0, 0), 
('TG/2024/2006','ICT1202', 12.00, 17.00, 14.00, 13.00, 71.00, 68.00, 0, 0, 0),
('TG/2024/2006','ICT1203', 13.00, 18.00, 15.00, 14.00, 76.00, 73.00, 0, 0, 0), 
('TG/2024/2006','ICT1204', 0.00,  0.00,  0.00,  16.00, 0.00,  80.00, 0, 0, 0),
('TG/2024/2006','ICT1205', 14.00, 18.00, 16.00, 0.00,  82.00, 0.00,  0, 0, 0), 
('TG/2024/2006','ICT1206', 14.00, 19.00, 16.00, 15.00, 84.00, 81.00, 0, 0, 0),
('TG/2024/2006','MAT1201', 13.00, 17.00, 15.00, 0.00,  70.00, 0.00,  0, 0, 0), 
('TG/2024/2006','MGT1201', 12.00, 16.00, 13.00, 0.00,  68.00, 0.00,  0, 0, 0), 
('TG/2024/2006','ENG1201', 14.00, 18.00, 16.00, 0.00,  78.00, 0.00,  0, 0, 0); 

INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical, has_medical_ca, has_medical_mid, has_medical_final) VALUES
('TG/2024/2007','ICT1201', 0.00,  0.00,  0.00,  7.00,  0.00,  32.00, 0, 0, 0), -- DBMS Practicum
('TG/2024/2007','ICT1202', 5.00,  9.00,  6.00,  5.00,  30.00, 28.00, 0, 0, 0), -- System Programming
('TG/2024/2007','ICT1203', 6.00,  10.00, 7.00,  6.00,  35.00, 30.00, 0, 0, 0), -- Web Development
('TG/2024/2007','ICT1204', 0.00,  0.00,  0.00,  8.00,  0.00,  35.00, 0, 0, 0), -- Web Dev Practicum
('TG/2024/2007','ICT1205', 7.00,  11.00, 8.00,  0.00,  38.00, 0.00,  0, 0, 0), -- DBMS Theory
('TG/2024/2007','ICT1206', 8.00,  12.00, 9.00,  8.00,  42.00, 38.00, 0, 0, 0), -- OS Concepts
('TG/2024/2007','MAT1201', 6.00,  10.00, 7.00,  0.00,  36.00, 0.00,  0, 0, 0), -- Discrete Maths
('TG/2024/2007','MGT1201', 5.00,  9.00,  7.00,  0.00,  34.00, 0.00,  0, 0, 0), -- Management
('TG/2024/2007','ENG1201', 7.00,  11.00, 8.00,  0.00,  40.00, 0.00,  0, 0, 0); -- English II

INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical, has_medical_ca, has_medical_mid, has_medical_final) VALUES
('TG/2024/2008','ICT1201', 0.00,  0.00,  0.00,  16.00, 0.00,  84.00, 0, 0, 0),
('TG/2024/2008','ICT1202', 13.00, 18.00, 15.00, 14.00, 78.00, 75.00, 0, 0, 0),
('TG/2024/2008','ICT1203', 14.00, 19.00, 16.00, 15.00, 82.00, 79.00, 0, 0, 0),
('TG/2024/2008','ICT1204', 0.00,  0.00,  0.00,  15.00, 0.00,  85.00, 0, 0, 0),
('TG/2024/2008','ICT1205', 15.00, 19.00, 17.00, 0.00,  86.00, 0.00,  0, 0, 0),
('TG/2024/2008','ICT1206', 15.00, 20.00, 17.00, 16.00, 88.00, 86.00, 0, 0, 0),
('TG/2024/2008','MAT1201', 14.00, 18.00, 16.00, 0.00,  80.00, 0.00,  0, 0, 0),
('TG/2024/2008','MGT1201', 13.00, 17.00, 15.00, 0.00,  78.00, 0.00,  0, 0, 0),
('TG/2024/2008','ENG1201', 15.00, 20.00, 19.00, 0.00,  88.00, 0.00,  0, 0, 0);

INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical, has_medical_ca, has_medical_mid, has_medical_final) VALUES
('TG/2024/2009','ICT1201', 0.00,  0.00,  0.00,  12.00, 0.00,  66.00, 0, 0, 0),
('TG/2024/2009','ICT1202', 9.00,  14.00, 11.00, 10.00, 56.00, 53.00, 0, 0, 0),
('TG/2024/2009','ICT1203', 10.00, 15.00, 12.00, 11.00, 60.00, 57.00, 0, 0, 0),
('TG/2024/2009','ICT1204', 0.00,  0.00,  0.00,  13.00, 0.00,  62.00, 0, 0, 0),
('TG/2024/2009','ICT1205', 11.00, 15.00, 13.00, 0.00,  64.00, 0.00,  0, 0, 0),
('TG/2024/2009','ICT1206', 12.00, 16.00, 13.00, 12.00, 68.00, 65.00, 0, 0, 0),
('TG/2024/2009','MAT1201', 10.00, 15.00, 12.00, 0.00,  58.00, 0.00,  0, 0, 0),
('TG/2024/2009','MGT1201', 9.00,  14.00, 11.00, 0.00,  54.00, 0.00,  0, 0, 0),
('TG/2024/2009','ENG1201', 11.00, 16.00, 14.00, 0.00,  68.00, 0.00,  0, 0, 0);

INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical, has_medical_ca, has_medical_mid, has_medical_final) VALUES
('TG/2024/2010','ICT1201', 0.00,  0.00,  0.00,  14.00, 0.00,  74.00, 0, 0, 0),
('TG/2024/2010','ICT1202', 11.00, 16.00, 13.00, 12.00, 66.00, 63.00, 0, 0, 0),
('TG/2024/2010','ICT1203', 12.00, 17.00, 14.00, 13.00, 70.00, 67.00, 0, 0, 0),
('TG/2024/2010','ICT1204', 0.00,  0.00,  0.00,  13.00, 0.00,  70.00, 0, 0, 0),
('TG/2024/2010','ICT1205', 12.00, 16.00, 14.00, 0.00,  72.00, 0.00,  0, 0, 0),
('TG/2024/2010','ICT1206', 13.00, 17.00, 15.00, 14.00, 76.00, 73.00, 0, 0, 0),
('TG/2024/2010','MAT1201', 11.00, 16.00, 13.00, 0.00,  64.00, 0.00,  0, 0, 0),
('TG/2024/2010','MGT1201', 10.00, 15.00, 12.00, 0.00,  62.00, 0.00,  0, 0, 0),
('TG/2024/2010','ENG1201', 13.00, 18.00, 16.00, 0.00,  75.00, 0.00,  0, 0, 0);

INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical, has_medical_ca, has_medical_mid, has_medical_final) VALUES
('TG/2023/2011','ICT1203', 8.00, 13.00, 10.00, 9.00, 55.00, 52.00, 0, 0, 0),
('TG/2023/2011','ICT1205', 9.00, 14.00, 11.00, 0.00, 58.00, 0.00, 0, 0, 0);

INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical, has_medical_ca, has_medical_mid, has_medical_final) VALUES
('TG/2023/2012','ICT1202', 7.00, 12.00, 9.00, 8.00, 50.00, 48.00, 0, 0, 0),
('TG/2023/2012','ICT1201', 0.00, 0.00, 0.00, 10.00, 0.00, 54.00, 0, 0, 0);

INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical, has_medical_ca, has_medical_mid, has_medical_final) VALUES
('TG/2023/2013','MAT1201', 6.00, 11.00, 8.00, 0.00, 52.00, 0.00, 0, 0, 0),
('TG/2023/2013','ICT1206', 8.00, 13.00, 10.00, 9.00, 56.00, 53.00, 0, 0, 0);

INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical, has_medical_ca, has_medical_mid, has_medical_final) VALUES
('TG/2023/2014','ICT1203', 7.00, 12.00, 9.00, 8.00, 48.00, 45.00, 0, 0, 0),
('TG/2023/2014','ICT1202', 6.00, 11.00, 8.00, 7.00, 46.00, 43.00, 0, 0, 0);

INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical, has_medical_ca, has_medical_mid, has_medical_final) VALUES
('TG/2023/2015','ICT1205', 9.00, 14.00, 11.00, 0.00, 60.00, 0.00, 0, 0, 0),
('TG/2023/2015','ICT1201', 0.00, 0.00, 0.00, 12.00, 0.00, 62.00, 0, 0, 0);

INSERT INTO Mark (reg_no, c_code, quiz, assessment, mid_theory, mid_practical, final_theory, final_practical, has_medical_ca, has_medical_mid, has_medical_final) VALUES

-- TG/2022/2016 (Suspended - All 9 Courses)
('TG/2022/2016','ICT1201',0,0,0,0,0,0,0,0,0),
('TG/2022/2016','ICT1202',0,0,0,0,0,0,0,0,0),
('TG/2022/2016','ICT1203',0,0,0,0,0,0,0,0,0),
('TG/2022/2016','ICT1204',0,0,0,0,0,0,0,0,0),
('TG/2022/2016','ICT1205',0,0,0,0,0,0,0,0,0),
('TG/2022/2016','ICT1206',0,0,0,0,0,0,0,0,0),
('TG/2022/2016','MAT1201',0,0,0,0,0,0,0,0,0),
('TG/2022/2016','MGT1201',0,0,0,0,0,0,0,0,0),
('TG/2022/2016','ENG1201',0,0,0,0,0,0,0,0,0),

-- TG/2022/2017 (Suspended - All 9 Courses)
('TG/2022/2017','ICT1201',0,0,0,0,0,0,0,0,0),
('TG/2022/2017','ICT1202',0,0,0,0,0,0,0,0,0),
('TG/2022/2017','ICT1203',0,0,0,0,0,0,0,0,0),
('TG/2022/2017','ICT1204',0,0,0,0,0,0,0,0,0),
('TG/2022/2017','ICT1205',0,0,0,0,0,0,0,0,0),
('TG/2022/2017','ICT1206',0,0,0,0,0,0,0,0,0),
('TG/2022/2017','MAT1201',0,0,0,0,0,0,0,0,0),
('TG/2022/2017','MGT1201',0,0,0,0,0,0,0,0,0),
('TG/2022/2017','ENG1201',0,0,0,0,0,0,0,0,0),

-- TG/2022/2018 (Suspended - All 9 Courses)
('TG/2022/2018','ICT1201',0,0,0,0,0,0,0,0,0),
('TG/2022/2018','ICT1202',0,0,0,0,0,0,0,0,0),
('TG/2022/2018','ICT1203',0,0,0,0,0,0,0,0,0),
('TG/2022/2018','ICT1204',0,0,0,0,0,0,0,0,0),
('TG/2022/2018','ICT1205',0,0,0,0,0,0,0,0,0),
('TG/2022/2018','ICT1206',0,0,0,0,0,0,0,0,0),
('TG/2022/2018','MAT1201',0,0,0,0,0,0,0,0,0),
('TG/2022/2018','MGT1201',0,0,0,0,0,0,0,0,0),
('TG/2022/2018','ENG1201',0,0,0,0,0,0,0,0,0),

-- TG/2022/2019 (Suspended - All 9 Courses)
('TG/2022/2019','ICT1201',0,0,0,0,0,0,0,0,0),
('TG/2022/2019','ICT1202',0,0,0,0,0,0,0,0,0),
('TG/2022/2019','ICT1203',0,0,0,0,0,0,0,0,0),
('TG/2022/2019','ICT1204',0,0,0,0,0,0,0,0,0),
('TG/2022/2019','ICT1205',0,0,0,0,0,0,0,0,0),
('TG/2022/2019','ICT1206',0,0,0,0,0,0,0,0,0),
('TG/2022/2019','MAT1201',0,0,0,0,0,0,0,0,0),
('TG/2022/2019','MGT1201',0,0,0,0,0,0,0,0,0),
('TG/2022/2019','ENG1201',0,0,0,0,0,0,0,0,0),

-- TG/2022/2020 (Suspended - All 9 Courses)
('TG/2022/2020','ICT1201',0,0,0,0,0,0,0,0,0),
('TG/2022/2020','ICT1202',0,0,0,0,0,0,0,0,0),
('TG/2022/2020','ICT1203',0,0,0,0,0,0,0,0,0),
('TG/2022/2020','ICT1204',0,0,0,0,0,0,0,0,0),
('TG/2022/2020','ICT1205',0,0,0,0,0,0,0,0,0),
('TG/2022/2020','ICT1206',0,0,0,0,0,0,0,0,0),
('TG/2022/2020','MAT1201',0,0,0,0,0,0,0,0,0),
('TG/2022/2020','MGT1201',0,0,0,0,0,0,0,0,0),
('TG/2022/2020','ENG1201',0,0,0,0,0,0,0,0,0);
