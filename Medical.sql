CREATE TABLE Medical (
    med_id      INT AUTO_INCREMENT PRIMARY KEY,
    reg_no      VARCHAR(20) NOT NULL,
    c_code      VARCHAR(20),
    med_date    DATE        NOT NULL,
    reason      VARCHAR(255),
    exam_type   ENUM('Attendance','CA','Mid','Final') DEFAULT 'Attendance',
    FOREIGN KEY (reg_no)  REFERENCES Student(reg_no)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (c_code)  REFERENCES Course(c_code)
    ON DELETE CASCADE ON UPDATE CASCADE
);
 
-- Medical handled by lecturer
CREATE TABLE Medical_Handles (
    lec_id      INT,
    med_id      INT,
    PRIMARY KEY (lec_id, med_id),
    FOREIGN KEY (lec_id)  REFERENCES Lecturer(lecture_id)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (med_id)  REFERENCES Medical(med_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);
-- ============================================================
-- MEDICAL RECORDS (Insert this FIRST)
-- ============================================================

INSERT INTO Medical (reg_no, c_code, med_date, reason, exam_type) VALUES

-- MGT1201 Medical Records
('TG/2024/2003', 'MGT1201', '2026-01-12', 'Fever and flu - Medical certificate submitted', 'Attendance'),
('TG/2024/2003', 'MGT1201', '2026-01-19', 'Follow-up doctor visit', 'Attendance'),
('TG/2024/2004', 'MGT1201', '2026-01-19', 'Viral fever - Medical certificate provided', 'Attendance'),
('TG/2024/2004', 'MGT1201', '2026-03-23', 'Migraine attack - Doctor certified', 'Attendance'),
('TG/2023/2012', 'MGT1201', '2026-02-16', 'Dengue fever - Hospitalized', 'Attendance'),
('TG/2023/2012', 'MGT1201', '2026-03-30', 'Post-dengue recovery - Weakness', 'Attendance'),
('TG/2023/2014', 'MGT1201', '2026-03-02', 'Food poisoning', 'Attendance'),

-- ICT1202 Medical Records
('TG/2024/2003', 'ICT1202', '2026-01-19', 'Respiratory infection - Medical leave', 'Attendance'),
('TG/2024/2003', 'ICT1202', '2026-01-26', 'Chest infection - Doctor advised rest', 'Attendance'),
('TG/2024/2003', 'ICT1202', '2026-03-30', 'Allergic reaction - Medical certificate', 'Attendance'),
('TG/2024/2004', 'ICT1202', '2026-02-02', 'Gastroenteritis - Medical leave', 'Attendance'),
('TG/2024/2004', 'ICT1202', '2026-03-16', 'Severe back pain', 'Attendance'),
('TG/2023/2012', 'ICT1202', '2026-02-16', 'Fever and body aches', 'Attendance'),
('TG/2023/2014', 'ICT1202', '2026-03-02', 'Family emergency with medical certificate', 'Attendance'),

-- ICT1201 Medical Records
('TG/2024/2003', 'ICT1201', '2026-01-20', 'High fever - Medical certificate', 'Attendance'),
('TG/2024/2003', 'ICT1201', '2026-02-24', 'Sinusitis - Doctor prescribed rest', 'Attendance'),
('TG/2024/2004', 'ICT1201', '2026-01-27', 'Asthma attack - Medical certificate', 'Attendance'),
('TG/2024/2004', 'ICT1201', '2026-03-03', 'Severe cold and cough', 'Attendance'),
('TG/2023/2012', 'ICT1201', '2026-02-17', 'Fever with rash - Medical leave', 'Attendance'),
('TG/2023/2012', 'ICT1201', '2026-03-31', 'Migraine with aura', 'Attendance'),
('TG/2023/2014', 'ICT1201', '2026-03-03', 'Nausea and vomiting', 'Attendance'),

-- ICT1203 Medical Records
('TG/2024/2003', 'ICT1203', '2026-01-27', 'Urinary tract infection', 'Attendance'),
('TG/2024/2003', 'ICT1203', '2026-03-17', 'Back pain - Doctor consulted', 'Attendance'),
('TG/2024/2004', 'ICT1203', '2026-01-27', 'Throat infection - Medical leave', 'Attendance'),
('TG/2024/2004', 'ICT1203', '2026-03-03', 'Ear infection - Doctor advised rest', 'Attendance'),
('TG/2023/2012', 'ICT1203', '2026-02-17', 'Chicken pox - 1 week isolation', 'Attendance'),
('TG/2023/2012', 'ICT1203', '2026-03-31', 'Post-chicken pox recovery', 'Attendance'),
('TG/2023/2014', 'ICT1203', '2026-03-03', 'Heartburn and acidity', 'Attendance'),

-- ICT1204 Medical Records
('TG/2024/2003', 'ICT1204', '2026-01-20', 'Stomach pain - Medical certificate', 'Attendance'),
('TG/2024/2003', 'ICT1204', '2026-03-17', 'Skin allergy - Doctor advised', 'Attendance'),
('TG/2024/2003', 'ICT1204', '2026-04-02', 'Conjunctivitis - Medical leave', 'Attendance'),
('TG/2024/2004', 'ICT1204', '2026-01-27', 'Food poisoning - Medical certificate', 'Attendance'),
('TG/2024/2004', 'ICT1204', '2026-03-03', 'Severe headache', 'Attendance'),
('TG/2023/2012', 'ICT1204', '2026-02-17', 'Typhoid - Medical leave', 'Attendance'),
('TG/2023/2012', 'ICT1204', '2026-03-31', 'Post-typhoid weakness', 'Attendance'),
('TG/2023/2014', 'ICT1204', '2026-03-03', 'Anxiety and panic attack', 'Attendance'),
('TG/2023/2014', 'ICT1204', '2026-01-29', 'Common cold - Medical certificate', 'Attendance'),
('TG/2023/2014', 'ICT1204', '2026-03-05', 'Sore throat', 'Attendance'),

-- MAT1201 Medical Records
('TG/2024/2003', 'MAT1201', '2026-01-14', 'Joint pain - Doctor consulted', 'Attendance'),
('TG/2024/2003', 'MAT1201', '2026-02-25', 'Flu with high fever', 'Attendance'),
('TG/2024/2004', 'MAT1201', '2026-01-21', 'Respiratory distress', 'Attendance'),
('TG/2024/2004', 'MAT1201', '2026-03-04', 'Laryngitis - Doctor advised', 'Attendance'),
('TG/2023/2012', 'MAT1201', '2026-02-18', 'Fever - Medical certificate', 'Attendance'),
('TG/2023/2012', 'MAT1201', '2026-04-01', 'Persistent cough', 'Attendance'),
('TG/2023/2014', 'MAT1201', '2026-03-04', 'Eye infection - Conjunctivitis', 'Attendance'),

-- ENG1201 Medical Records
('TG/2024/2003', 'ENG1201', '2026-01-08', 'Severe cold - Medical certificate', 'Attendance'),
('TG/2024/2003', 'ENG1201', '2026-03-05', 'Dental infection - Doctor visit', 'Attendance'),
('TG/2024/2004', 'ENG1201', '2026-01-22', 'Allergic reaction - Medical leave', 'Attendance'),
('TG/2024/2004', 'ENG1201', '2026-02-26', 'Sprained ankle movement', 'Attendance'),
('TG/2023/2012', 'ENG1201', '2026-02-19', 'Fever - Doctor advised rest', 'Attendance'),
('TG/2023/2012', 'ENG1201', '2026-04-02', 'Back sprain', 'Attendance'),
('TG/2023/2014', 'ENG1201', '2026-03-05', 'Nausea and dizziness', 'Attendance'),

-- ICT1205 Medical Records
('TG/2024/2003', 'ICT1205', '2026-01-22', 'Viral fever - Medical certificate', 'Attendance'),
('TG/2024/2003', 'ICT1205', '2026-02-19', 'Tonsillitis - Doctor consulted', 'Attendance'),
('TG/2024/2004', 'ICT1205', '2026-01-29', 'Gastric ulcer - Medical leave', 'Attendance'),
('TG/2024/2004', 'ICT1205', '2026-03-05', 'Vertigo - Doctor advised rest', 'Attendance'),
('TG/2023/2012', 'ICT1205', '2026-04-02', 'Fever and chills', 'Attendance'),
('TG/2023/2014', 'ICT1205', '2026-03-05', 'Stress-related headache', 'Attendance'),

-- ICT1206 Medical Records
('TG/2024/2003', 'ICT1206', '2026-01-23', 'Bronchitis - Medical certificate', 'Attendance'),
('TG/2024/2003', 'ICT1206', '2026-03-13', 'Sinus infection - Doctor visit', 'Attendance'),
('TG/2024/2004', 'ICT1206', '2026-01-23', 'Chest congestion - Medical leave', 'Attendance'),
('TG/2024/2004', 'ICT1206', '2026-03-13', 'Severe headache with nausea', 'Attendance'),
('TG/2023/2012', 'ICT1206', '2026-02-20', 'Fever - Medical certificate', 'Attendance'),
('TG/2023/2012', 'ICT1206', '2026-04-03', 'Recovery phase from fever', 'Attendance'),
('TG/2023/2014', 'ICT1206', '2026-03-06', 'Family emergency - Medical certificate', 'Attendance');

-- ============================================================
-- MEDICAL_HANDLES (Insert this AFTER Medical table)
-- ============================================================

INSERT INTO Medical_Handles (lec_id, med_id) VALUES
-- MGT1201 (lec_id = 1 - Dr. Dinithi) → med_id 1 to 7
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7),

-- ICT1202 (lec_id = 2 - Prof. Subash) → med_id 8 to 14
(2, 8), (2, 9), (2, 10), (2, 11), (2, 12), (2, 13), (2, 14),

-- ICT1201 (lec_id = 3 - Ms. Chanduni) → med_id 15 to 21
(3, 15), (3, 16), (3, 17), (3, 18), (3, 19), (3, 20), (3, 21),

-- ICT1203 (lec_id = 4 - Ms. Rumeshika) → med_id 22 to 28
(4, 22), (4, 23), (4, 24), (4, 25), (4, 26), (4, 27), (4, 28),

-- ICT1204 (lec_id = 5 - Ms. Piyumi) → med_id 29 to 38
(5, 29), (5, 30), (5, 31), (5, 32), (5, 33), (5, 34), (5, 35), (5, 36), (5, 37), (5, 38),

-- MAT1201 (lec_id = 3 - Ms. Chanduni) → med_id 39 to 45
(3, 39), (3, 40), (3, 41), (3, 42), (3, 43), (3, 44), (3, 45),

-- ENG1201 (lec_id = 4 - Ms. Rumeshika) → med_id 46 to 52
(4, 46), (4, 47), (4, 48), (4, 49), (4, 50), (4, 51), (4, 52),

-- ICT1205 (lec_id = 6 - Ms. Rashmi) → med_id 53 to 58
(6, 53), (6, 54), (6, 55), (6, 56), (6, 57), (6, 58),

-- ICT1206 (lec_id = 1 - Dr. Dinithi) → med_id 59 to 65
(1, 59), (1, 60), (1, 61), (1, 62), (1, 63), (1, 64), (1, 65);