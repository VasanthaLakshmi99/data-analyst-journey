--->The Medical Director wants to identify the most experienced doctors in the hospital.Sort the report so that the most experienced doctors appear first.
SELECT doctor_id,
       first_name || ' ' || last_name AS doctor_name,
       specialization,
       years_experience
FROM doctors
ORDER BY years_experience DESC;
--->The Reception Manager wants a patient list arranged alphabetically by first name.
SELECT patient_id,
       first_name || ' ' || last_name AS patient_name,
       contact_number
FROM patients
ORDER BY first_name ASC;
--->The Finance Team wants to know all unique payment methods used by patients.Display only the payment methods.
SELECT DISTINCT payment_method
FROM billing
ORDER BY payment_method ASC;
--->The Hospital Administrator wants to review the first 10 appointments in the database.Display all appointment details.
SELECT *
FROM appointments
LIMIT 10;
--->The Medical Department wants treatments arranged from the lowest cost to the highest cost.
SELECT treatment_id,
       treatment_type,
       cost
FROM treatments
ORDER BY cost ASC;
--->The Finance Director wants the Top 5 highest-value bills.
SELECT bill_id,
       patient_id,
       amount
FROM billing
ORDER BY amount DESC
LIMIT 5;
--->The HR Department wants doctors sorted by:Hospital Branch (A–Z).Within each branch, doctors with the highest experience first.
SELECT first_name || ' ' || last_name AS doctor_name,
       hospital_branch,
       years_experience
FROM doctors
ORDER BY hospital_branch ASC,
         years_experience DESC;
--->The Marketing Team wants a list of unique insurance providers, arranged alphabetically.
SELECT DISTINCT insurance_provider
FROM patients
ORDER BY insurance_provider ASC;
--->The Operations Team wants to review the latest 15 appointments.
SELECT appointment_id,
       patient_id,
       appointment_date,
       status
FROM appointments
ORDER BY appointment_date DESC
LIMIT 15;
--->The Finance Department wants pending bills, with the highest bill amount appearing first.
SELECT bill_id,
       patient_id,
       amount,
       payment_status
FROM billing
WHERE payment_status = 'Pending'
ORDER BY amount DESC;
--->The Hospital Director wants to identify the 20 oldest registered patients.
SELECT patient_id,
       first_name || ' ' || last_name AS patient_name,
       date_of_birth
FROM patients
ORDER BY date_of_birth ASC
LIMIT 20;
--->The Medical Director wants Cardiologists, ordered by experience from highest to lowest
SELECT first_name || ' ' || last_name AS doctor_name,
       years_experience,
       specialization
FROM doctors
WHERE specialization = 'Cardiologist'
ORDER BY years_experience DESC;
--->The Chief Medical Officer wants the 10 most expensive treatments.
SELECT treatment_id,
       treatment_type,
       cost
FROM treatments
ORDER BY cost DESC
LIMIT 10;
--->The Reception Manager wants all Completed appointments, arranged from the most recent appointment to the oldest.
SELECT appointment_id,
       patient_id,
       appointment_date,
       appointment_time
FROM appointments
WHERE status = 'Completed'
ORDER BY appointment_date DESC;
--->The Finance Head wants bills where:Amount is greater than ₹10,000.Arrange the report from the highest amount to the lowest amount.
SELECT bill_id,
       amount,
       payment_method
FROM billing
WHERE amount > 10000
ORDER BY amount DESC;
--->The Hospital Administrator wants the first 10 female patients, arranged alphabetically by first name.
SELECT patient_id,
       first_name || ' ' || last_name AS patient_name,
       contact_number
FROM patients
WHERE gender = 'Female'
ORDER BY first_name ASC
LIMIT 10;
--->The Finance Director wants the Top 3 pending bills with the highest amount.
SELECT bill_id,
       patient_id,
       amount
FROM billing
WHERE payment_status = 'Pending'
ORDER BY amount DESC
LIMIT 3;
--->The HR Department wants all unique hospital branches, sorted alphabetically.
SELECT DISTINCT hospital_branch
FROM doctors
ORDER BY hospital_branch ASC;
--->The Operations Team wants Cancelled appointments, sorted from the latest appointment date to the oldest.
SELECT appointment_id,
       patient_id,
       appointment_date,
       status
FROM appointments
WHERE status = 'Cancelled'
ORDER BY appointment_date DESC;
--->The CEO wants a report showing the Top 5 most experienced doctors working in the Cardiology department.
SELECT doctor_id,
       first_name || ' ' || last_name AS doctor_name,
       specialization,
       years_experience
FROM doctors
WHERE specialization = 'Cardiologist'
ORDER BY years_experience DESC
LIMIT 5;
