---->The Hospital Director wants to identify insurance providers having more than 100 registered patients.
SELECT insurance_provider,COUNT(*) AS total_patients
  FROM patients
  GROUP BY insurance_provider
  HAVING COUNT(*)>100
  ORDER BY COUNT(*) DESC;
---->Finance wants to identify payment methods whose total revenue exceeds ₹5,00,000.
SELECT payment_method,SUM(amount) AS total_revenue
  FROM billing
  GROUP BY payment_method
  HAVING SUM(amount)>500000
  ORDER BY total_revenue DESC;
---->HR wants to identify specializations having more than 10 doctors.
SELECT specialization,COUNT(*) AS total_doctors
  FROM doctors
  GROUP BY specialization
  HAVING COUNT(*)>10;
---->Operations wants to identify appointment statuses having more than 200 appointments.
SELECT appointment_status,COUNT(*) AS total_appointments
  FROM appointments
  GROUP BY appointment_status
  HAVING COUNT(*)>200;
---->Medical Department wants to identify treatment types whose average treatment cost exceeds ₹25,000.
SELECT treatment_type,AVG(cost)
  FROM treatments
  GROUP BY treatment_type
  HAVING AVG(cost)>25000;
---->Finance wants to identify patients whose total bill amount exceeds ₹1,00,000.
SELECT patient_id,SUM(amount)
  FROM billing
  GROUP BY patient_id
  HAVING SUM(cost)>100000
---->Operations wants to identify doctors who completed more than 50 appointments.
  SELECT doctor_id,count(*)AS completed_appointments
  FROM appointments
  WHERE status='Completed'
  GROUP BY  doctor_id
  HAVING count(*)>50;
---->The Hospital Director wants to identify specializations whose average doctor experience exceeds 12 years.
  SELECT specialization,AVG(years_experience) AS average_experience
  FROM doctors
  GROUP BY specialization
  HAVING AVG(years_experience)>12;
---->Finance wants to identify payment methods that satisfy BOTH:More than 100 transactions,Revenue greater than ₹20,00,000
SELECT payment_method,COUNT(*) AS total_transactions,SUM(amount) AS  total_revenue
  FROM billing
  GROUP BY payment_method
  HAVING COUNT(*)>100 
  AND SUM(amount)>20000;
---->Operations wants to identify appointment dates having more than 30 appointments.
SELECT appointment_date,COUNT(*) AS total_appointments
  FROM appointments
  GROUP BY appointment_date
  HAVING COUNT(*)>20
  ORDER BY appointment_date ASC;
---->The Hospital Director wants to identify insurance providers having more than 5 patients.
SELECT insurance_provider,
       COUNT(*) AS total_patients
FROM patients
GROUP BY insurance_provider
HAVING COUNT(*) > 5
ORDER BY total_patients DESC;
---->Finance wants to identify payment methods satisfying BOTH:
More than 3 transactions
Total revenue greater than ₹20,000
SELECT payment_method,
       COUNT(*) AS total_transactions,
       SUM(amount) AS total_revenue
FROM billing
GROUP BY payment_method
HAVING COUNT(*) > 3
   AND SUM(amount) > 20000
ORDER BY total_revenue DESC;
---->HR wants to identify specializations where:
More than 2 doctors
Average experience is greater than 5 years
SELECT specialization,
       COUNT(*) AS doctor_count,
       AVG(experience_years) AS avg_experience
FROM doctors
GROUP BY specialization
HAVING COUNT(*) > 2
   AND AVG(experience_years) > 5
ORDER BY doctor_count DESC;
---->Operations wants to identify doctors who have:
More than 2 completed appointments
SELECT doctor_id,
       COUNT(*) AS completed_appointments
FROM appointments
WHERE status = 'Completed'
GROUP BY doctor_id
HAVING COUNT(*) > 2
ORDER BY completed_appointments DESC;
---->Finance wants to identify payment methods where:
Average bill amount is greater than ₹5000
Highest bill is greater than ₹10,000
---->Hospital Management wants to identify cities having:
More than 4 patients
Average patient age greater than 35 years
SELECT payment_method,
       AVG(amount) AS average_bill,
       MAX(amount) AS highest_bill
FROM billing
GROUP BY payment_method
HAVING AVG(amount) > 5000
   AND MAX(amount) > 10000
ORDER BY average_bill DESC;
---->Medical Department wants to identify blood groups having:
More than 3 patients
Maximum age greater than 50
SELECT blood_group,
       COUNT(*) AS total_patients,
       AVG(age) AS average_age,
       MIN(age) AS youngest_age,
       MAX(age) AS oldest_age
FROM patients
GROUP BY blood_group
HAVING COUNT(*) > 3
   AND MAX(age) > 50
ORDER BY total_patients DESC;
---->Display all KPI columns.
Identify doctors satisfying ALL conditions:
Completed appoinOperations wants to identify appointment dates where:
More than 2 appointments
Only consider Completed appointments
 SELECT appointment_date,
       COUNT(*) AS completed_appointments
FROM appointments
WHERE status = 'Completed'
GROUP BY appointment_date
HAVING COUNT(*) > 2
ORDER BY appointment_date; 
---->Finance wants to identify payment methods satisfying ALL conditions:
More than 3 transactions
Revenue greater than ₹15,000
Average bill greater than ₹4,000
Highest bill greater than ₹8,000
SELECT payment_method,
       COUNT(*) AS total_transactions,
       SUM(amount) AS total_revenue,
       AVG(amount) AS average_bill,
       MAX(amount) AS highest_bill
FROM billing
GROUP BY payment_method
HAVING COUNT(*) > 3
   AND SUM(amount) > 15000
   AND AVG(amount) > 4000
   AND MAX(amount) > 8000
ORDER BY total_revenue DESC;
---->The Hospital CEO wants to identify insurance providers satisfying ALL conditions:
More than 4 patients
Average patient age greater than 40
Youngest patient older than 20
Oldest patient older than 60
SELECT insurance_provider,
       COUNT(*) AS total_patients,
       AVG(age) AS average_age,
       MIN(age) AS youngest_age,
       MAX(age) AS oldest_age
FROM patients
GROUP BY insurance_provider
HAVING COUNT(*) > 4
   AND AVG(age) > 40
   AND MIN(age) > 20
   AND MAX(age) > 60
ORDER BY average_age DESC;
