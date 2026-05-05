CREATE TABLE Department (
    dep_id      INT AUTO_INCREMENT PRIMARY KEY,
    dep_name    VARCHAR(100) NOT NULL
);

INSERT INTO Department (dep_name)
 VALUES 
    ('Information and Communication Technology'), 
    ('Engineering Technology'), ('Bio Science Technology');