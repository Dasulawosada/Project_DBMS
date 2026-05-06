CREATE USER IF NOT EXISTS 'lms_lecturer'@'localhost' IDENTIFIED BY 'Lecturer@1234!';
GRANT SELECT, INSERT, UPDATE, DELETE ON university_db.* TO 'lms_lecturer'@'localhost';
FLUSH PRIVILEGES;