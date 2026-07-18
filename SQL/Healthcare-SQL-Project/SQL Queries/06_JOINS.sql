# INNER JOINS
---->The Receptionist wants to see every patient's appointment schedule.
SELECT p.first_name||' '||last_name AS patient_name,
a.appointment_date
FROM patients p
INNER JOIN appointments a
ON p.patient_id=a.patient_id;
---->The Hospital Manager wants to know which doctor each patient consulted.
SELECT p.first_name || ' ' || p.last_name AS patient_name,
       d.first_name || ' ' || d.last_name AS doctor_name,
       a.appointment_date
FROM patients p
INNER JOIN appointments a
ON p.patient_id = a.patient_id
INNER JOIN doctors d
ON a.doctor_id = d.doctor_id;
---->The Billing Department wants a report of every patient's payment details.
SELECT p.first_name || ' ' || p.last_name AS patient_name,
b.amount AS bill_amount,b.payment_method,b.payment_status
FROM patients p
INNER JOIN billing b
ON p.patient_id=b.patient_id;
---->The Medical Records Team wants to see every patient's treatment history.
SELECT
    p.first_name || ' ' || p.last_name AS patient_name,
    t.treatment_type,
    t.treatment_date
FROM patients p
INNER JOIN appointments a
    ON p.patient_id = a.patient_id
INNER JOIN treatments t
    ON a.appointment_id = t.appointment_id;
---->The Doctor Management Team wants to know each doctor's specialization along with their appointment dates.
SELECT d.first_name || ' ' || d.last_name AS doctor_name,d.specialization,a.appointment_date
FROM doctors d
INNER JOIN appointments a
ON d.doctor_id=a.doctor_id;
---->The Finance Team wants to identify patients whose bill amount is greater than ₹10,000.
SELECT p.first_name || ' ' || p.last_name AS patient_name,
b.amount AS bill_amount,b.payment_method
FROM patients p
INNER JOIN billing b
ON p.patient_id=b.patient_id
WHERE bill_amount>1000;
---->The Hospital Director wants to know which doctors handled appointments after 1 January 2025.
SELECT d.first_name || ' ' || d.last_name AS doctor_name,d.specialization,a.appointment_date
FROM doctors d
INNER JOIN appointments a
ON d.doctor_id=a.doctor_id
WHERE a.appointment_date< '2025-01-01 ';
---->The Insurance Department wants to review billing information for patients covered under Star Health insurance.
SELECT p.first_name || ' ' || p.last_name AS patient_name,p.insurance_provider,
b.amount AS bill_amount
FROM patients p
INNER JOIN billing b
ON p.patient_id=b.patient_id
WHERE insurance_provider='Star Health';
---->The Hospital Administration wants to identify doctors who handled the highest number of appointments.
SELECT d.first_name || ' ' || d.last_name AS doctor_name,COUNT(*) AS total_appointments
FROM doctors d
INNER JOIN appointments a
ON d.doctor_id=a.doctor_id
GROUP BY doctor_name
ORDER BY total_appointments DESC;
---->The Finance Department wants to analyze revenue generated through each payment method.
SELECT payment_method,COUNT(*)AS no_of_transactions,SUM(amount)AS total_revenue
FROM billing
GROUP BY payment_method
ORDER BY total_revenue DESC;
---->The CEO wants a dashboard-ready report that combines patient, appointment, doctor, treatment, and billing information.
Display:
Patient Name
Doctor Name
Doctor Specialization
Appointment Date
Appointment Status
Treatment Type
Bill Amount
Payment Method
Payment Status
SELECT
    p.first_name || ' ' || p.last_name AS patient_name,
    d.doctor_name,
    d.specialization,
    a.appointment_date,
    a.status,
    t.treatment_type,
    b.amount AS bill_amount,
    b.payment_method,
    b.payment_status
FROM patients p
INNER JOIN appointments a
    ON p.patient_id = a.patient_id
INNER JOIN doctors d
    ON a.doctor_id = d.doctor_id
INNER JOIN treatments t
    ON a.appointment_id = t.appointment_id
INNER JOIN billing b
    ON p.patient_id = b.patient_id;
---->The Hospital Director wants a report of all registered patients, even if they have never booked an appointment.
 SELECT     p.first_name || ' ' || p.last_name AS patient_name,
address,
SPLIT_PART(address, ',', 2) AS city,a.appointment_date,a.status
FROM patients p
LEFT JOIN appointments a
ON p.patient_id=a.patient_id;
---->Show every doctor, including those who have never handled appointments.
SELECT
    d.doctor_name,
    d.specialization,
    COUNT(a.appointment_id) AS total_appointments
FROM doctors d
LEFT JOIN appointments a
ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_name, d.specialization
ORDER BY total_appointments DESC;
---->Show every patient, including those without billing records.
SELECT
    p.first_name || ' ' || p.last_name AS patient_name,
    p.insurance_provider,
    b.amount,
    b.payment_status
FROM patients p
LEFT JOIN billing b
ON p.patient_id = b.patient_id;
---->Show all appointments, even if the patient record is missing.
SELECT
    a.appointment_id,
    a.appointment_date,
    p.first_name || ' ' || p.last_name AS patient_name
FROM patients p
RIGHT JOIN appointments a
ON p.patient_id = a.patient_id;
---->Show every treatment, including treatments without appointments.
SELECT
    t.treatment_type,
    t.treatment_date,
    a.appointment_date
FROM appointments a
RIGHT JOIN treatments t
ON a.appointment_id = t.appointment_id;
---->Show every appointment with doctor information.
SELECT
    a.appointment_date,
    a.status,
    d.doctor_name,
    d.specialization
FROM doctors d
RIGHT JOIN appointments a
ON d.doctor_id = a.doctor_id;
---->Compare patient registrations with appointments.
SELECT
    p.first_name || ' ' || p.last_name AS patient_name,
    a.appointment_date
FROM patients p
FULL OUTER JOIN appointments a
ON p.patient_id = a.patient_id;
---->Compare patients and billing records.
SELECT
    p.first_name || ' ' || p.last_name AS patient_name,
    b.amount,
    b.payment_method
FROM patients p
FULL OUTER JOIN billing b
ON p.patient_id = b.patient_id;
---->Compare appointments and treatments.
SELECT
    a.appointment_date,
    t.treatment_type
FROM appointments a
FULL OUTER JOIN treatments t
ON a.appointment_id = t.appointment_id;
---->Employees earning more than their managers.
SELECT
    e.employee_name,
    e.salary AS employee_salary,
    m.employee_name AS manager_name,
    m.salary AS manager_salary
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.employee_id
WHERE e.salary > m.salary
ORDER BY (e.salary - m.salary) DESC;
---->Managers with more than five direct reports.
SELECT
    m.employee_name AS manager_name,
    m.department,
    COUNT(e.employee_id) AS total_employees
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.employee_id
GROUP BY m.employee_name, m.department
HAVING COUNT(e.employee_id) > 5
ORDER BY total_employees DESC;
---->Managers whose average team salary is greater than the manager's salary.
SELECT
    m.employee_name AS manager_name,
    m.salary AS manager_salary,
    AVG(e.salary) AS average_team_salary,
    AVG(e.salary) - m.salary AS salary_difference
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.employee_id
GROUP BY
    m.employee_name,
    m.salary
HAVING AVG(e.salary) > m.salary
ORDER BY salary_difference DESC;
