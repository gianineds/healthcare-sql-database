-- Healthcare Database: Sample Data Insertion

-- Patients
INSERT INTO patients (name, age, gender, address, phone, email)
VALUES 
('Mary Anne', 42, 'F', '421 East Road', '3022221122', 'mary.anne@gmail.com'),
('Alex Harris', 28, 'M', '301 Park Avenue', '3041412323', 'alex_harrish@outlook.com');

-- Doctors
INSERT INTO doctors (name, specialty)
VALUES
('Dr. Charlie Robert', 'Cardiology'),
('Dr. Carol Dinnes', 'Endocrinology');

-- Consultations
INSERT INTO consultations (patient_id, doctor_id, consultation_date, reason)
VALUES
(1, 2, '10-01-2025', 'Diabetes Check-up'),
(2, 1, '20-05-2025', 'Hypertension Follow-up');

-- Exams
INSERT INTO exams (consultation_id, exam_type, result, exam_date)
VALUES
(1, 'Complete Blood Count', 'Normal', '10-01-2025'),
(1, 'Blood Glucose', '150 mg/dL', '10-01-2025'),
(2, 'Blood Pressure', '140/90 mmHg', '10-01-2025');
