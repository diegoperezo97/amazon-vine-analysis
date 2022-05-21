CREATE TABLE doctors ( 
	id INT PRIMARY KEY NOT NULL, 
	speciality TEXT, 
	taking_pationts BOOLEAN
);

CREATE TABLE patients (
	id INT NOT NULL, 
	doctorid INT NOT NULL, 
	health_status TEXT, 
	PRIMARY KEY (id, doctor_id), 
	FOREIGN KEY (doctor_id) REFERENCES doctors (id) 
);

INSERT INTO doctors(id, speciality, taking_patients) 
VALUES 
(1, 'cardiology', TRUE), 
(2, 'orthoped3cs', FALSE), 
(3, 'pediatrics', TRUE); 

INSERT INTO patients (id, doctor_id, health_status) 
VALUES 
(1, 2, 'healthy'), 
(2, 3, 'sick'), 
(3, 2, 'sick'), 
(4, 1, 'healthy'), 
(5, 1, 'sick');