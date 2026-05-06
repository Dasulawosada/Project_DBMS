CREATE USER IF NOT EXISTS 'lms_admin'@'localhost' IDENTIFIED BY 'Admin@1234!';
GRANT ALL PRIVILEGES ON university_db.* TO 'lms_admin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;