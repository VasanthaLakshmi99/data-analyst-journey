---->The Women's Health Department is organizing a free health camp.They need a list of only female patients.The report should include:Patient ID,Full Name,Contact Number,Email
SELECT patient_id,first_name||' '||last_name AS fullname,contact_number,email 
FROM patients
WHERE gender='F';

---->The Hospital Director wants a report of all Cardiologists.The report should include:Doctor ID,Full Name,Specialization,Years of Experience
SELECT doctor_id,first_name||' '||last_name AS fullname,specialization,years_experience 
FROM doctors
WHERE specialization='Cardiologists';

---->The Reception Team wants to call patients whose appointments have been Cancelled.Prepare a report showing:
Appointment ID,Patient ID,Appointment Date,Appointment Time,Status
SELECT appointment_id,patient_id,appointment_date,appointment_time,status
FROM appointments
WHERE status='Cancelled';

---->The Finance Department wants to identify bills that are still Pending.Display all relevant billing details.
SELECT bill_id,patient_id,bill_date,amount,payment_method,payment_status
FROM billing
WHERE payment_status='Pending';

---->The Medical Superintendent wants to review treatments that cost more than ₹5,000.Display:Treatment ID,Treatment Type,Cost,Treatment Date
SELECT treatment_id,treatment_type,cost,treatment_date
FROM treatments
WHERE cost>5000;

---->The Insurance Team wants patients insured by Star Health or HDFC Ergo.Prepare a report containing:Patient ID,Full Name,Insurance Provider
SELECT  patient_id,first_name||' '||last_name AS fullname,insurance_provider
FROM patients
WHERE insurance_provider='Star Health' OR insurance_provider='HDFC Ergo';

---->The HR Department is preparing a recognition program for experienced doctors.Find doctors who have 10 years or more experience.
Display:Doctor Name,Specialization,Years of Experience
SELECT first_name||' '||last_name AS doctor_name,specialization,years_experience
FROM doctors
WHERE years_experience>10;

---->The Hospital Administrator wants to review appointments scheduled between:01-Aug-2023 and 15-Aug-2023.Display:Appointment ID,Patient ID,Appointment Date
SELECT appointment_id,
       patient_id,
       appointment_date
FROM appointments
WHERE appointment_date
BETWEEN '2023-08-01' AND '2023-08-15';

---->Finance wants bills where the amount is between ₹10,000 and ₹25,000.Display:Bill ID,Patient ID,Amount,Payment Status
SELECT bill_id,patient_id,amount,payment_status
  FROM billing
  WHERE amount BETWEEN '10000' AND '25000';

---->Marketing is launching an online health portal.Find patients whose email address ends with:@gmail.com.Display:Patient Name,Email
SELECT patient_id,first_name||' '||last_name AS patient_name,email
  FROM patients
  WHERE email LIKE '%mail%;
  
---->The Medical Director wants Cardiologists with more than 8 years of experience.Display:Doctor Name,Specialization,Experience
SELECT first_name||' '||last_name AS doctor_name,specialization,years_experience
  FROM doctors
  WHERE years_experience>8;
  
---->The Finance Head wants all bills where:Payment Status = Pending,Amount is greater than ₹20,000.Display:Bill ID,Patient ID,Amount,Payment Status
  SELECT bill_id,patient_id,amount,payment_status
  FROM billing
  WHERE payment_status='Pending' AND amount>20000;
SELECT bill_id,patient_id,amount,payment_status
  FROM billing
  WHERE payment_status='Pending' OR amount>20000;

---->The Reception Manager wants appointments that are either:Cancelled,Rescheduled.Display all appointment details.
SELECT appointment_id,patient_id,doctor_id,appointment_date,appointment_time,status
  FROM appointments
  WHERE status='Cancelled' OR status='Rescheduled';
  
---->The Hospital is planning a senior citizen wellness program.Find patients born before 01-Jan-1980.Display:Patient ID,Full Name,Date of Birth,Contact Number
SELECT patient_id,first_name||' '||last_name AS fullname,date_of_birth,contact_number
  FROM patients
WHERE date_of_birth < '1980-01-01';
  
---->The Director wants doctors who are NOT Dermatologists.Display:Doctor ID,Doctor Name,Specialization
SELECT doctor_id, first_name||' '||last_name AS doctor_name,specialization
  FROM doctors
  WHERE specialization!='Dermatologists';
  
---->The IT Department is cleaning the patient database.Find all patients who have not provided an email address.Display:Patient ID,Patient Name,Contact Number
SELECT patient_id,first_name||' '||last_name AS patient_name,contact_number
  FROM patients
  WHERE email Is NULL;
  
---->Now find all patients who have provided an email address.Display:Patient ID,Patient Name,Email
SELECT patient_id,first_name||' '||last_name AS patient_name,contact_number
  FROM patients
  WHERE email IS NOT NULL;
  
---->The Finance Director wants all bills that were paid using either:UPI,Credit Card,Debit Card.Display:Bill ID,Amount,Payment Method
SELECT bill_id,amount,payment_method
  FROM billing
  WHERE payment_method IN('UPI','Credit Card','Debit Card');
  
---->The HR Department is creating an alphabetical recognition list.Find doctors whose first name starts with 'A'.Display:Doctor Name,Email,Branch
SELECT first_name || ' ' || last_name AS doctor_name,
       email,
       hospital_branch AS branch
FROM doctors
WHERE first_name LIKE 'A%';
  
---->The Hospital Administrator wants all appointments that satisfy all of the following:Appointment Status = Completed.Appointment Date is between 01-Aug-2023 and 31-Aug-2023
Display:Appointment ID,Patient ID,Doctor ID,Appointment Date,Appointment Time,Status
SELECT appointment_id,patient_id,doctor_id,appointment_date,appointment_time,status
  FROM appointments
  WHERE status='Completed' AND appointment_date BETWEEN '2023-08-01' AND '2023-08-31' ;
  
