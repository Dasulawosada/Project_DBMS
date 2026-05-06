use university_db;

CREATE TABLE Lecturer (
    lecture_id  INT AUTO_INCREMENT PRIMARY KEY,
    f_name      VARCHAR(50)  NOT NULL,
    l_name      VARCHAR(50)  NOT NULL,
    email       VARCHAR(100) UNIQUE NOT NULL,
    dob         DATE,
    address     VARCHAR(255),
    position    VARCHAR(100),
    dep_id      INT,
    FOREIGN KEY (dep_id) REFERENCES Department(dep_id)
    on delete cascade
    on update cascade
);
INSERT INTO Lecturer (f_name, l_name, email, dob, address, position, dep_id) 
VALUES 
('Dr.', 'Dinithi', 'dinithi@ruh.ac.lk', '1985-05-10', 'Matara', 'Lecturer', 1),
('Prof.', 'Subash', 'subash@ruh.ac.lk', '1975-10-12', 'Galle', 'Professor', 1),
('Ms.', 'Chanduni', 'chanduni@ruh.ac.lk', '1992-02-15', 'Matara', 'Assistant Lecturer', 1),
('Ms.', 'Rumeshika', 'rumeshika@ruh.ac.lk', '1993-08-20', 'Hambantota', 'Assistant Lecturer', 1),
('Ms.', 'Piyumi', 'piyumi@ruh.ac.lk', '1991-11-05', 'Galle', 'Lecturer', 1),
('Ms.', 'Rashmi', 'rashmi@ruh.ac.lk', '1994-04-12', 'Matara', 'Probationary Lecturer', 1),
('English', 'Lecturer', 'english@ruh.ac.lk', '1988-01-01', 'University', 'Visiting Lecturer', 1);


      