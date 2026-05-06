CREATE TABLE Teach (
    lecture_id  INT,
    c_code      VARCHAR(20),
    PRIMARY KEY (lecture_id, c_code),
    FOREIGN KEY (lecture_id) REFERENCES Lecturer(lecture_id)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (c_code) REFERENCES Course(c_code)
    ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Teach (lecture_id, c_code) 
VALUES 
    (1, 'MGT1201'),
    (1, 'ICT1206'),
    (2, 'ICT1202'),
    (3, 'ICT1201'),
    (3, 'MAT1201'),
    (4, 'ICT1203'),
    (4, 'ENG1201'),
    (5, 'ICT1204'),
    (6, 'ICT1205');