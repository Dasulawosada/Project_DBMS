DELIMITER $$


CREATE PROCEDURE sp_attendance_by_course(IN p_c_code VARCHAR(20))
BEGIN
    SELECT * FROM vm_attendance_summary 
    WHERE c_code = p_c_code 
    ORDER BY reg_no;
END$$


CREATE PROCEDURE sp_attendance_by_student(IN p_reg_no VARCHAR(20))
BEGIN
    SELECT * FROM vm_attendance_summary 
    WHERE reg_no = p_reg_no
    ORDER BY c_code;
END$$


CREATE PROCEDURE sp_attendance_student_course(IN p_reg_no VARCHAR(20), IN p_c_code VARCHAR(20))
BEGIN
    SELECT 
        att_id,
        reg_no,
        c_code,
        att_date,
        week_no,
        session_type,
        status,
        tec_id
    FROM Attendance 
    WHERE reg_no = p_reg_no AND c_code = p_c_code 
    ORDER BY att_date;
END$$


CREATE PROCEDURE sp_batch_attendance()
BEGIN
    SELECT * FROM vm_attendance_summary 
    ORDER BY c_code, reg_no;
END$$


CREATE PROCEDURE sp_ca_by_course(IN p_c_code VARCHAR(20))
BEGIN
    SELECT * FROM vw_ca_marks 
    WHERE c_code = p_c_code 
    ORDER BY reg_no;
END$$


CREATE PROCEDURE sp_ca_by_student(IN p_reg_no VARCHAR(20))
BEGIN
    SELECT * FROM vw_ca_marks 
    WHERE reg_no = p_reg_no;
END$$


CREATE PROCEDURE sp_final_results_batch()
BEGIN
    SELECT * FROM vw_final_results 
    ORDER BY c_code, reg_no;
END$$

CREATE PROCEDURE sp_final_result_student(IN p_reg_no VARCHAR(20))
BEGIN
    SELECT * FROM vw_final_results 
    WHERE reg_no = p_reg_no
    ORDER BY c_code;
END$$


CREATE PROCEDURE sp_sgpa_all()
BEGIN
    SELECT * FROM vw_sgpa 
    ORDER BY SGPA DESC;
END$$


CREATE PROCEDURE sp_eligibility_batch()
BEGIN
    SELECT * FROM vw_eligibility 
    ORDER BY c_code, reg_no;
END$$

DELIMITER ;

DELIMITER $$


CREATE PROCEDURE sp_student_grade_final()
BEGIN
    SELECT 
        ROW_NUMBER() OVER (ORDER BY s.reg_no) AS `no`,
        s.reg_no AS `indexnumber`,
        CONCAT(s.f_name, ' ', s.l_name) AS `student name`,
        MAX(CASE WHEN fr.c_code = 'ENG1201' THEN fr.grade END) AS `ENG1201`,
        MAX(CASE WHEN fr.c_code = 'ICT1201' THEN fr.grade END) AS `ICT1201`,
        MAX(CASE WHEN fr.c_code = 'ICT1202' THEN fr.grade END) AS `ICT1202`,
        MAX(CASE WHEN fr.c_code = 'ICT1203' THEN fr.grade END) AS `ICT1203`,
        MAX(CASE WHEN fr.c_code = 'ICT1204' THEN fr.grade END) AS `ICT1204`,
        MAX(CASE WHEN fr.c_code = 'ICT1205' THEN fr.grade END) AS `ICT1205`,
        MAX(CASE WHEN fr.c_code = 'ICT1206' THEN fr.grade END) AS `ICT1206`,
        MAX(CASE WHEN fr.c_code = 'MAT1201' THEN fr.grade END) AS `MAT1201`,
        MAX(CASE WHEN fr.c_code = 'MGT1201' THEN fr.grade END) AS `MGT1201`,
        ROUND(COALESCE(sg.SGPA, 0.00), 2) AS `sgpa`,
        ROUND((COALESCE(s.cgpa, 0) + COALESCE(sg.SGPA, 0)) / 2, 2) AS `cgpa`
    FROM Student s
    LEFT JOIN vw_final_results fr ON fr.reg_no = s.reg_no
    LEFT JOIN vw_sgpa sg ON sg.reg_no = s.reg_no
    GROUP BY s.reg_no, s.f_name, s.l_name, s.cgpa, sg.SGPA
    ORDER BY s.reg_no;
END$$

DELIMITER ;

