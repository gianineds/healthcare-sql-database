-- Healthcare Database: Table Creation Script

-- Patients
CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    sex CHAR(1),
    address VARCHAR(255),
    phone VARCHAR(20),
    email VARCHAR(100)
);

-- Doctors
CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100)
);

-- Consultations
CREATE TABLE consultations (
    id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES patients(id),
    doctor_id INT REFERENCES doctors(id),
    consultation_date DATE,
    reason VARCHAR(255)
);

-- Exams
CREATE TABLE exams (
    id SERIAL PRIMARY KEY,
    consultation_id INT REFERENCES consultations(id),
    exam_type VARCHAR(100),
    result VARCHAR(255),
    exam_date DATE
);
