CREATE OR REPLACE VIEW vw_final_results AS
SELECT
    m.reg_no,
    CONCAT(s.f_name,' ',s.l_name) AS student_name,
    s.student_type,
    m.c_code,
    c.credit,
    m.final_theory,
    m.final_practical,
    CASE
        WHEN s.student_type = 'Suspended'   THEN 'WH'
        WHEN m.has_medical_final = 1         THEN 'MC'
        WHEN s.student_type = 'Repeat' AND
             (m.final_theory + m.final_practical)/2 > 50 THEN 50   -- max C for repeat
        ELSE ROUND((m.final_theory + m.final_practical)/2, 2)
    END AS final_mark,
    CASE
        WHEN s.student_type = 'Suspended'   THEN 'WH'
        WHEN m.has_medical_final = 1         THEN 'MC'
        WHEN s.student_type = 'Repeat'      THEN 'C'
        WHEN (m.final_theory+m.final_practical)/2 >= 85 THEN 'A+'
        WHEN (m.final_theory+m.final_practical)/2 >= 75 THEN 'A'
        WHEN (m.final_theory+m.final_practical)/2 >= 65 THEN 'B+'
        WHEN (m.final_theory+m.final_practical)/2 >= 55 THEN 'B'
        WHEN (m.final_theory+m.final_practical)/2 >= 50 THEN 'C+'
        WHEN (m.final_theory+m.final_practical)/2 >= 45 THEN 'C'
        WHEN (m.final_theory+m.final_practical)/2 >= 35 THEN 'D'
        ELSE 'F'
    END AS grade
FROM Mark m
JOIN Student s ON s.reg_no = m.reg_no
JOIN Course  c ON c.c_code  = m.c_code;

/*SELECT * FROM vw_final_results;*/