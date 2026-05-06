CREATE OR REPLACE VIEW vm_attendance_theory AS
SELECT * FROM vm_attendance_summary 
WHERE session_type = 'Theory';