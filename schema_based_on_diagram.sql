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
  CONSTRAINT patient FOREIGN KEY(patient_id) REFERENCES patient(id) ON DELETE CASCADE,
  status VARCHAR(250),
  PRIMARY KEY(id)
);
