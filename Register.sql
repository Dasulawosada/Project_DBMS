CREATE TABLE Register (
    reg_no      VARCHAR(20),
    c_code      VARCHAR(20),
    PRIMARY KEY (reg_no, c_code),
    FOREIGN KEY (reg_no)  REFERENCES Student(reg_no)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (c_code)  REFERENCES Course(c_code)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- Register all proper students for all courses
INSERT INTO Register (reg_no, c_code) 
SELECT s.reg_no, c.c_code 
FROM Student s, Course c 
WHERE s.student_type = 'Proper';

-- Register repeat students for selected courses
 INSERT INTO Register (reg_no, c_code) 
 VALUES 
    ('TG/2023/2011', 'ICT1201'),  
    ('TG/2023/2011', 'ICT1205'),   
    ('TG/2023/2012', 'ICT1202'),  
    ('TG/2023/2012', 'ICT1204'),  
    
    ('TG/2023/2013', 'MAT1201'),   
    ('TG/2023/2013', 'ICT1206'),   
    
    ('TG/2023/2014', 'ICT1201'),   
    ('TG/2023/2014', 'ICT1202'),  
    
    ('TG/2023/2015', 'ICT1205'),   
    ('TG/2023/2015', 'ICT1203');