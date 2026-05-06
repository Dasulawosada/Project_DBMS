CREATE TABLE Course (
    c_code      VARCHAR(20)  PRIMARY KEY,
    c_name      VARCHAR(150) NOT NULL,
    credit      DECIMAL(3,1) NOT NULL,
    c_type      ENUM('Theory','Practical','Both') NOT NULL
);

INSERT INTO Course (c_code, c_name, credit, c_type) 
VALUES 
    ('ICT1201', 'Database Management Systems Practicum', 2.0, 'Practical'),
    ('ICT1202', 'System Programming Fundamentals and Linux', 3.0, 'Both'),
    ('ICT1203', 'Web Development', 3.0, 'Theory'),
    ('ICT1204', 'Web Development Practicum', 2.0, 'Practical'),
    ('ICT1205', 'Database Management System', 3.0, 'Theory'),
    ('ICT1206', 'Operating Systems Concepts and Applications', 3.0, 'Theory'),
    ('MAT1201', 'Discrete Mathematics', 3.0, 'Theory'),
    ('MGT1201', 'Fundamental of Management', 2.0, 'Theory'),
    ('ENG1201', 'English II', 2.0, 'Theory');
