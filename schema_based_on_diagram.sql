CREATE DATABASE clinic_db;

CREATE TABLE patient (
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(250),
  date_of_birth DATE,
  PRIMARY KEY(id)
);

CREATE TABLE medical_histories (
  id INT GENERATED ALWAYS AS IDENTITY,
  admitted_at TIMESTAMP,
  status VARCHAR(250),
  patient_id INT,
  PRIMARY KEY(id),
  FOREIGN KEY(patient_id) REFERENCES patient(id) ON DELETE CASCADE
);

CREATE TABLE invoices (
  id INT GENERATED ALWAYS AS IDENTITY,
  total_amount DECIMAL,
  generated_at TIMESTAMP,
  patient_id INT,
  payed_at TIMESTAMP,
  medical_history_id INT,
  PRIMARY KEY(id),
  FOREIGN KEY(medical_history_id) REFERENCES medical_histories(id) ON DELETE CASCADE
);
