CREATE TABLE Technical_Officer (
    tec_id      INT AUTO_INCREMENT PRIMARY KEY,
    f_name      VARCHAR(50)  NOT NULL,
    l_name      VARCHAR(50)  NOT NULL,
    email       VARCHAR(100) UNIQUE NOT NULL,
    dob         DATE,
    address     VARCHAR(255)
);
INSERT INTO Technical_Officer (f_name, l_name, email, dob, address) VALUES
('Saman','Bandara','saman.to@ruh.ac.lk','1988-02-14','Matara'),
('Dilani','Senanayake','dilani.to@ruh.ac.lk','1991-05-30','Galle'),
('Nuwan','Jayawickrama','nuwan.to@ruh.ac.lk','1986-08-25','Weligama'),
('Ishara','Madushanka','ishara.to@ruh.ac.lk','1993-12-01','Hambantota'),
('Tharaka','Dissanayake','tharaka.to@ruh.ac.lk','1989-03-17','Matara');