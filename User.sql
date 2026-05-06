CREATE TABLE User (
    user_id     INT AUTO_INCREMENT PRIMARY KEY,
    user_role   ENUM('Admin','Dean','Lecturer','Technical_Officer','Student') NOT NULL,
    user_pwd    VARCHAR(255) NOT NULL,   -- store hashed password
    ref_id      VARCHAR(20)  NOT NULL    -- links to relevant role table
);
-- ============================================================
-- INSERT INTO USER TABLE
-- ============================================================
-- Note: Passwords are hashed using SHA2 or MD5 (for demo)
-- In production, use proper hashing like bcrypt or SHA2 with salt
-- ============================================================

INSERT INTO User (user_role, user_pwd, ref_id) VALUES

-- ============================================================
-- ADMIN (1 user)
-- ============================================================
('Admin', SHA2('Admin@123', 256), '1'),        -- ref_id = admin_id = 1

-- ============================================================
-- DEAN (1 user)
-- ============================================================
('Dean', SHA2('Dean@123', 256), '1'),          -- ref_id = dean_id = 1

-- ============================================================
-- LECTURERS (7 users)
-- ============================================================
('Lecturer', SHA2('Lecturer@123', 256), '1'),  -- Dr. Dinithi (lecture_id = 1)
('Lecturer', SHA2('Lecturer@123', 256), '2'),  -- Prof. Subash (lecture_id = 2)
('Lecturer', SHA2('Lecturer@123', 256), '3'),  -- Ms. Chanduni (lecture_id = 3)
('Lecturer', SHA2('Lecturer@123', 256), '4'),  -- Ms. Rumeshika (lecture_id = 4)
('Lecturer', SHA2('Lecturer@123', 256), '5'),  -- Ms. Piyumi (lecture_id = 5)
('Lecturer', SHA2('Lecturer@123', 256), '6'),  -- Ms. Rashmi (lecture_id = 6)
('Lecturer', SHA2('Lecturer@123', 256), '7'),  -- English Lecturer (lecture_id = 7)

-- ============================================================
-- TECHNICAL OFFICERS (5 users)
-- ============================================================
('Technical_Officer', SHA2('TechOff@123', 256), '1'),  -- Saman Bandara (tec_id = 1)
('Technical_Officer', SHA2('TechOff@123', 256), '2'),  -- Dilani Senanayake (tec_id = 2)
('Technical_Officer', SHA2('TechOff@123', 256), '3'),  -- Nuwan Jayawickrama (tec_id = 3)
('Technical_Officer', SHA2('TechOff@123', 256), '4'),  -- Ishara Madushanka (tec_id = 4)
('Technical_Officer', SHA2('TechOff@123', 256), '5'),  -- Tharaka Dissanayake (tec_id = 5)

-- ============================================================
-- STUDENTS (20 users)
-- ============================================================
-- Proper Students (10) - TG/2024/2001 to TG/2024/2010
('Student', SHA2('Student@123', 256), 'TG/2024/2001'),
('Student', SHA2('Student@123', 256), 'TG/2024/2002'),
('Student', SHA2('Student@123', 256), 'TG/2024/2003'),
('Student', SHA2('Student@123', 256), 'TG/2024/2004'),
('Student', SHA2('Student@123', 256), 'TG/2024/2005'),
('Student', SHA2('Student@123', 256), 'TG/2024/2006'),
('Student', SHA2('Student@123', 256), 'TG/2024/2007'),
('Student', SHA2('Student@123', 256), 'TG/2024/2008'),
('Student', SHA2('Student@123', 256), 'TG/2024/2009'),
('Student', SHA2('Student@123', 256), 'TG/2024/2010'),

-- Repeat Students (5) - TG/2023/2011 to TG/2023/2015
('Student', SHA2('Student@123', 256), 'TG/2023/2011'),
('Student', SHA2('Student@123', 256), 'TG/2023/2012'),
('Student', SHA2('Student@123', 256), 'TG/2023/2013'),
('Student', SHA2('Student@123', 256), 'TG/2023/2014'),
('Student', SHA2('Student@123', 256), 'TG/2023/2015'),

-- Suspended Students (5) - TG/2022/2016 to TG/2022/2020
('Student', SHA2('Student@123', 256), 'TG/2022/2016'),
('Student', SHA2('Student@123', 256), 'TG/2022/2017'),
('Student', SHA2('Student@123', 256), 'TG/2022/2018'),
('Student', SHA2('Student@123', 256), 'TG/2022/2019'),
('Student', SHA2('Student@123', 256), 'TG/2022/2020');