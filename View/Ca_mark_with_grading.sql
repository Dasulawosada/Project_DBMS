CREATE OR REPLACE VIEW vw_ca_marks AS
SELECT
    m.reg_no,
    CONCAT(s.f_name,'',s.l_name)AS student_name,
    s.student_type,
    m.c_code,
    m.quiz,
    m.assessment,
    m.mid_theory,
    m.mid_practical,
    m.ca_total,
    CASE
        WHEN s.student_type = 'Suspended' THEN 'WH'
        WHEN m.has_medical_ca = 1 THEN 'MC'
        WHEN m.ca_total >= 50 THEN 'CA Passed'
        ELSE 'CA Failed'
    END AS ca_status
FROM Mark m
JOIN Student s ON s.reg_no = m.reg_no;


/*SELECT * FROM vw_ca_marks;*/