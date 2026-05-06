CREATE USER IF NOT EXISTS 'lms_student'@'localhost' IDENTIFIED BY 'Student@1234!';
GRANT SELECT ON university_db.vw_final_results TO 'lms_student'@'localhost';
GRANT SELECT ON university_db.vw_attendance_summary TO 'lms_student'@'localhost';
GRANT SELECT ON university_db.vw_sgpa TO 'lms_student'@'localhost';
FLUSH PRIVILEGES;