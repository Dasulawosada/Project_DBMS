CREATE TABLE Dean (
    dean_id     INT AUTO_INCREMENT PRIMARY KEY,
    f_name      VARCHAR(50)  NOT NULL,
    l_name      VARCHAR(50)  NOT NULL,
    email       VARCHAR(100) UNIQUE NOT NULL,
    dob         DATE,
    address     VARCHAR(255)
);
INSERT INTO Dean (f_name, l_name, email, dob, address) 
VALUES ('Nimal','Silva','dean@ruh.ac.lk','1972-06-15','Galle');;