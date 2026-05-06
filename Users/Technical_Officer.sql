CREATE USER IF NOT EXISTS 'lms_to'@'localhost' IDENTIFIED BY 'TechOff@1234!';
GRANT SELECT, INSERT, UPDATE ON university_db.Attendance TO 'lms_to'@'localhost';
GRANT SELECT ON university_db.vw_attendance_summary TO 'lms_to'@'localhost';
FLUSH PRIVILEGES;