CREATE TABLE Admin (
    admin_id    INT AUTO_INCREMENT PRIMARY KEY,
    f_name      VARCHAR(50)  NOT NULL,
    l_name      VARCHAR(50)  NOT NULL,
    email       VARCHAR(100) UNIQUE NOT NULL,
    dob         DATE,
    address     VARCHAR(255)
);

INSERT INTO Admin (f_name, l_name, email, dob, address) 
VALUES 
    ('Kasun','Perera','admin@ruh.ac.lk','1985-03-10','Matara');