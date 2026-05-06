CREATE OR REPLACE VIEW vw_eligibility AS
SELECT
    att.reg_no,
    att.student_name,
    att.c_code,
    att.attendance_pct,
    att.eligibility AS att_eligible,
    ca.ca_status,
    IF(att.eligibility = 'Eligible' AND ca.ca_status = 'CA Passed','Eligible for Final','Not Eligible for Final') AS final_eligibility
FROM vw_attendance_summary att
JOIN vw_ca_marks ca ON att.reg_no = ca.reg_no AND att.c_code = ca.c_code;