CREATE OR REPLACE VIEW vw_sgpa AS
SELECT
    fr.reg_no,
    fr.student_name,
    ROUND(
        SUM(
          CASE fr.grade
            WHEN 'A+' THEN 4.0 WHEN 'A' THEN 4.0 WHEN 'B+' THEN 3.5
            WHEN 'B'  THEN 3.0 WHEN 'C+' THEN 2.5 WHEN 'C' THEN 2.0
            WHEN 'D'  THEN 1.5 ELSE 0
          END * fr.credit
        ) / SUM(fr.credit), 2
    ) AS SGPA
FROM vw_final_results fr
WHERE fr.grade NOT IN ('WH','MC')
GROUP BY fr.reg_no, fr.student_name;