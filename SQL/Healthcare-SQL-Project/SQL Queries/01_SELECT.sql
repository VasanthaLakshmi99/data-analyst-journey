---->The Hospital Administrator wants to verify that the doctor master data has been successfully loaded into the database.Write a SQL query to display every column and every record from the doctors table.
SELECT * FROM  doctors;

---->The Reception Department is preparing a patient registration list.They only want:Patient ID,First Name,Last Name,Contact Number.
SELECT  patient_id,first_name,last_name,contact_number FROM patients;

---->The Front Office Manager wants to print today's appointment schedule.For now, they only need to see:Appointment ID,Appointment Date,Appointment Time
SELECT appointment_id,appointment_date,appointment_time FROM appointments;

---->The Finance Team wants a simple billing report.Display only:Bill ID,Amount,Payment Status
SELECT bill_id,amount,payment_status FROM billing;

---->The Chief Medical Officer wants to review all treatments available in the hospital.Display only:Treatment ID,Treatment Type,Cost
SELECT treatment_id,treatment_type,cost FROM treatments;

---->The HR Department is creating an employee directory.Display:First Name,Last Name,Email Address
SELECT first_name,last_name,email FROM  doctors;

---->The Insurance Department wants to review patient insurance information.Display only:Patient Name,Insurance Provider,Insurance Number
SELECT first_name,last_name,insurance_provider,insurance_number FROM patients;

---->The CEO wants a Doctor Directory that will be shared with all departments.Display:Doctor ID,Full Name,Specialization,Hospital BranchUse meaningful column aliases.
SELECT doctor_id,first_name||' '||last_name AS fullname,specialization,hospital_branch FROM doctors;

---->Hospital Management wants a Patient Contact Report.The report should contain only the information required for contacting patients.
SELECT patient_id, first_name,last_name,contact_number,email FROM  patients;

---->The Operations Team wants an Appointment Register.Display:Appointment ID,Patient ID,Doctor ID,Appointment Date,Appointment Time,Appointment Status
SELECT * FROM  appointments;

---->The Accounts Department is preparing a Payment Report.Display:Bill ID,Patient ID,Amount,Payment Method,Payment Status
SELECT bill_id,patient_id,amount,payment_method,payment_status FROM billing;

---->Hospital management wants to review patient demographic information.Create a report showing only the columns useful for demographic analysis.
SELECT patient_id,first_name,last_name,gender,date_of_birth,contact_number, email,address FROM patients;

---->The hospital is redesigning its website.The Marketing Team needs doctor information.Display:Full Name,Specialization,Years of Experience,Email
SELECT first_name||' '||last_name AS fullname,specialization,years_experience,email FROM doctors;

---->You are asked to prepare a Patient Master Report for the Hospital Director.The report will be shared with senior management.Without using SELECT *, choose the most important columns and write the SQL query.After writing the query, explain why you selected those columns.
SELECT patient_id,first_name,last_name,gender,date_of_birth,contact_number,address,registartion_date,insurance_provider,insurance_number,email FROM patients;

---->The hospital is opening a new branch.The Director wants a Doctor Master Report containing only business-relevant information.
SELECT doctor_i,first_name,last_name,specialization,phone_number,years_experience,email FROM doctors;

---->The Hospital Administrator wants a Daily Appointment Register.Design the report by selecting only the columns that a receptionist actually needs during daily operations.
SELECT appointment_id,patient_id,doctor_id,appointment_date,appointment_time,status FROM appointments;

---->The Finance Director wants a report that will be exported to Excel every morning.Without using filtering, select only the columns that are meaningful for the finance team.
SELECT bill_id,patient_id,treatment_id,bill_date,amount,payment_method,payment_status FROM billing;

---->The Chief Medical Officer wants a Treatment Summary Report.The report should contain only useful information for clinical review.Choose the columns yourself and write the SQL query.
SELECT treatment_id,appointment_id,treatment_type,treatment_date,description,cost FROM treatments;
