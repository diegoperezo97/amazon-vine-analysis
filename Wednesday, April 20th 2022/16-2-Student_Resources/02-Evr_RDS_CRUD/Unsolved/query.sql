-- Read tables:
SELECT * FROM doctors;

SELECT * FROM patients;

-- Inserting with invalid foreign key 
INSERT INTO patients(id, doctorid, health_status) 
VALUES (6, 2, 'sick');

-- Inserting with valid foreign key 
INSERT INTO patients(id, doctorid, health_status) 
VALUES (6, 1, 'sick');

-- Update rows 
UPDATE doctors 
SET taking_patients = FALSE 
WHERE id = 1;

UPDATE patients 
SET health_status = 'healthy'
WHERE id = 1;

-- Delete row 
DELETE FROM patients 
WHERE id = 1;