CREATE USER IF NOT EXISTS 'lms_dean'@'localhost' IDENTIFIED BY 'Dean@1234!';
GRANT ALL PRIVILEGES ON university_db.* TO 'lms_dean'@'localhost';
FLUSH PRIVILEGES;
