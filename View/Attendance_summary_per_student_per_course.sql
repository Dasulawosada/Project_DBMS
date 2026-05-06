-- Recreate vm_attendance_summary with session_type
CREATE OR REPLACE VIEW vm_attendance_summary AS
SELECT
    a.reg_no,
    CONCAT(s.f_name, ' ', s.l_name) AS student_name,
    a.c_code,
    c.c_name,
    a.session_type,  -- ADD THIS LINE
    COUNT(*) AS total_sessions,
    SUM(CASE WHEN a.status IN ('Present', 'Medical') THEN 1 ELSE 0 END) AS attended_sessions,
    SUM(CASE WHEN a.status = 'Medical' THEN 1 ELSE 0 END) AS medical_sessions,
    ROUND((SUM(CASE WHEN a.status IN ('Present', 'Medical') THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS attendance_pct,
    CASE 
        WHEN ROUND((SUM(CASE WHEN a.status IN ('Present', 'Medical') THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) >= 80 
        THEN 'Eligible' 
        ELSE 'Not Eligible' 
    END AS eligibility
FROM Attendance a
JOIN Student s ON s.reg_no = a.reg_no
JOIN Course c ON c.c_code = a.c_code
GROUP BY a.reg_no, a.c_code, a.session_type;