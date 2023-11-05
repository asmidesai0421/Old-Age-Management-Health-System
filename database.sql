create database hospital;
create table doctor(doctor_id int,name varchar(50),specialization varchar(50),mobile_no
bigint, email varchar(100),primary key(doctor_id));
desc doctor;
create table patient(name varchar(50),patient_id int,age int,sex varchar(10),disease
varchar(50),email varchar (100),mobile_no bigint,expenses int,ongoing_medicines varchar(50),prescription varchar(100),primary
key(patient_id),doct_id int,foreign
key(doct_id) references doctor(doctor_id));
desc patient;
create table appointment(appointment_no int,appointment_date date,appointment_time
time,primary key(appointment_no),doct_id int, foreign key(doct_id) references
doctor(doctor_id),Patient_id int,
foreign key(Patient_id) references patient(patient_id));
desc appointment;
Create table login(username varchar(50),password varchar(10));
desc login;
alter table doctor add(appointment_no int);
alter table doctor add foreign key (appointment_no) references appointment(appointment_no);
alter table patient add(appointment_no int);
alter table patient add foreign key (appointment_no) references appointment(appointment_no);
set foreign_key_checks=0;
insert into doctor(doctor_id,name,specialization,mobile_no,email,appointment_no)values(1001,'Priyanka Joshi','Cardiologist',8531607532,'priyanka@gmail',1);
insert into doctor(doctor_id,name, specialization ,mobile_no,email ,appointment_no)values(1002,'Rahul Sharma','Orthopeadic',7310765421,'rahul@gmail' ,2);
insert into doctor(doctor_id,name, specialization ,mobile_no, email , appointment_no) values(1003,'Ketki Shah','Neurologist',9401840394,'ketki@gmail' ,3);
insert into doctor(doctor_id,name, specialization ,mobile_no, email ,appointment_no) values(1004,'Ashutosh Patil','Radiologist',9163043217,'ashutosh@gmail',4);
insert into doctor(doctor_id,name, specialization ,mobile_no, email , appointment_no) values(1005,'Nikita Thakur','Dermatologist',9836293610,'nikita@gmail' ,5);
INSERT INTO doctor (doctor_id, name, specialization, mobile_no, email, appointment_no)VALUES (1006, 'Dr.John Smith', 'Orthopedic Surgeon', 9876543210, 'john@gmail.com', 6);
INSERT INTO doctor (doctor_id, name, specialization, mobile_no, email, appointment_no)VALUES (1007, ' Dr.Ishaan Rathod', 'Dermatologist', 7654321098, 'ishaan@gmail.com', 7);
INSERT INTO doctor (doctor_id, name, specialization, mobile_no, email, appointment_no)VALUES (1008, 'Dr.Ashwini Gaikwad', 'Pediatrician', 9543210987, 'ashwini@gmail.com', 8);
INSERT INTO doctor (doctor_id, name, specialization, mobile_no, email, appointment_no)VALUES (1009, 'Dr.Shravani Parab', 'Ophthalmologist', 7432109876, 'shravani@gmail.com', 9);
INSERT INTO doctor (doctor_id, name, specialization, mobile_no, email , appointment_no)VALUES (1010, 'Dr.Pradnya Naik', 'Neurologist', 8321098765, 'pradnya@gmail.com' , 10);
INSERT INTO doctor (doctor_id, name, specialization, mobile_no, email, appointment_no)VALUES (1011, 'Dr.Tanvi Sawant', 'Neurologist', 9210987654, 'tanvi@gmail.com' , 11);
INSERT INTO doctor (doctor_id, name, specialization, mobile_no, email, appointment_no)VALUES (1012, 'Dr.Sahil Redij', 'Dentist', 7109876543, 'sahil@gmail.com' , 12);
INSERT INTO doctor (doctor_id, name, specialization, mobile_no, email, appointment_no)VALUES (1013, 'Dr.Prathamesh Nikam', 'Psychiatrist', 7098765432, 'prathamesh@gmail.com', 13);
INSERT INTO doctor (doctor_id, name, specialization, mobile_no, email, appointment_no)VALUES (1014, 'Dr.Nikhil Desai', 'General Surgeon', 9876543221, 'nikhil@gmail.com', 14);
INSERT INTO doctor (doctor_id, name, specialization, mobile_no, email, appointment_no)vALUES (1015, 'Dr.Mihika Garg', 'Rheumatologist', 876543210, 'mihika@gmail.com' , 15);
INSERT INTO doctor (doctor_id, name, specialization, mobile_no, email, appointment_no)VALUES (1016, 'Dr.Kunal Kadam', 'ENT Specialist', 765432109, 'kunal@gmail.com', 16);
INSERT INTO doctor (doctor_id, name, specialization, mobile_no, email, appointment_no)VALUES (1017, 'Dr.Nitesh kane', 'Urologist', 65432108, 'nitesh@gmail.com', 17);
INSERT INTO doctor (doctor_id, name, specialization, mobile_no, email, appointment_no)VALUES (1018, 'Dr.Reema Bhatia', 'Oncologist', 843210987, 'reema@gmail.com', 18);
INSERT INTO doctor (doctor_id, name, specialization, mobile_no, email, appointment_no)VALUES (1019, 'Dr.Supriya Fatak', 'Nephrologist', 73210987, 'supriya@gmail.com', 19);
INSERT INTO doctor (doctor_id, name, specialization, mobile_no, email, appointment_no)VALUES (1020, 'Dr.Aishwarya Narkar', 'Nephrologist', 73210987, 'aishwarya@gmail.com', 20);
select*from doctor;



INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription,doct_id,appointment_no) VALUES ('Arun Bhatt', '101',70, 'Male', 'Heart Disease', 'arun@gmail', 8701970621, 1500, 'Aspirin', 'aspirin for hypertension',1001,1);
 INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription,doct_id,appointment_no) VALUES ('Sunita Roy', '102', 67, 'Female', 'Fractures', 'sunita@gmail', 9235628918, 2000, 'Acetaminophen', 'Acetaminophen for pain control',1002,2);
 INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription,doct_id,appointment_no) VALUES ('Raghav Gokhale','103',59,'Male','Migraines','raghav@gmail',7288965745,3500,'Sumatriptan','Take sumatriptan at the onset of a migraine',1003,3);
 INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no,expenses, ongoing_medicines, prescription,doct_id,appointment_no) VALUES ('Rakesh Deshpande', '104',64, 'Male', 'Pulmonary Embolism', 'rakesh@gmail', 9234586678, 5500, 'Heparin', 'Start anticoagulation therapy with heparin to treat the PE',1004,4); 
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no,expenses, ongoing_medicines, prescription,doct_id,appointment_no) VALUES ('Ankita Pathak', '105',55, 'Female', 'Acne', 'ankita@gmail', 8766589621, 3100, 'Tretinoin', 'Apply tretinoin to affected areas daily',1005,5);
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription, doct_id, appointment_no)
VALUES ('Savi Shetty', '106', 87, 'Female', 'Arthritis ', 'savi@gmail.com', 9876543210, 1500, 'Ibuprofen ', 'Take Ibuprofen for pain relief ', 1006, 6);
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription, doct_id, appointment_no)
VALUES ('Suresh Jain', '107', 89, 'Male', 'Acne ', 'suresh@gmail.com', 8765432109, 2800, 'Benzoyl Peroxide ', 'Apply Benzoyl Peroxide to affected areas ', 1007, 7);
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription, doct_id, appointment_no)
VALUES ('Sugandha Rawat', '108', 69, 'Female', 'Toothache ', 'suganda@gmail.com', 7654321098, 2000, 'Dolo650', ': Visit for dental examination and treatment ', 1008, 8);
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription, doct_id, appointment_no)
VALUES ('Ajit Gokhale', '109', 79, 'Male', 'Myopia (Nearsightedness) ', 'ajit@gmail.com', 6543210987, 3200, 'None', 'Use corrective eyeglasses or contact lenses ', 1009, 9);
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription, doct_id, appointment_no)
VALUES ('Leela Raghavan', '110', 78, 'Female', 'Migraines ', 'leela@gmail.com', 9432109876, 1800, 'Crocin ', 'Take Sumatriptan at the onset of a migraine ', 1010, 10);
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription, doct_id, appointment_no)
VALUES ('Sachin Verma', '111', 58, 'Male', 'Depression ', 'sachin@gmail.com', 8321098765, 3800, 'Fluoxetine ', 'Take Fluoxetine daily ', 1011, 11);
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription, doct_id, appointment_no)
VALUES ('Rajesh Patel', '112', 78, 'Male', 'Toothache', 'rajesh@gmail.com', 9876543217, 1200, 'None', 'Visit for dental examination and treatment', 1012, 12);
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription, doct_id, appointment_no)
VALUES ('Priya Malik', '113', 38, 'Female', 'Depression', 'priya@gmail.com', 8101122116, 2800, 'Fluoxetine', 'Take Fluoxetine daily', 1013, 13);
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription, doct_id, appointment_no)
VALUES ('Sanjay Desai', '114', 87, 'Male', 'Appendicitis', 'sanjay@gmail.com', 8211122115, 4200, 'None', 'Immediate surgery for appendicitis', 1014, 14);
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription, doct_id, appointment_no)
VALUES ('Amit Khanna', '115', 53, 'Male', 'Rheumatoid Arthritis', 'amit@gmail.com', 9321122114, 3200, 'Methotrexate', 'Take Methotrexate as prescribed', 1015, 15);
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription, doct_id, appointment_no)
VALUES ('Sanket Mehta', '116', 88, 'Male', 'Chronic Sinusitis', 'suresh@gmail.com', 7432122113, 2200, 'Pseudoephedrine', 'Use Pseudoephedrine as a decongestant', 1016, 16);
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription, doct_id, appointment_no)
VALUES ('Ram Gupta', '117', 56, 'Male', 'Kidney Stones', 'rajesh@gmail.com', 6543212112, 2800, 'Tamsulosin', 'Take Tamsulosin to help pass kidney stones', 1017, 17);
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription, doct_id, appointment_no)
VALUES ('Anita Sharma', '118', 54, 'Female', 'Breast Cancer', 'anita@gmail.com', 7654322111, 5000, 'Chemotherapy', 'Administer chemotherapy as scheduled', 1018, 18);
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription, doct_id, appointment_no)
VALUES ('Vikram Verma', '119', 61, 'Male', 'Chronic Kidney Disease', 'vikram@gmail.com', 8765432110, 3800, 'Epoetin Alfa', 'Administer Epoetin Alfa as prescribed', 1019, 19);
INSERT INTO patient (name, patient_id, age, sex, disease, email, mobile_no, expenses, ongoing_medicines, prescription, doct_id, appointment_no)
VALUES ('Neha Kapoor', '120', 63, 'Female', 'Kidney Disease', 'neha@gmail.com', 9876543211, 4200, 'Amlodipine', 'Take Amlodipine for blood pressure', 1020, 20);
select*from patient;
delete from patient where patient_id=120;


INSERT INTO appointment
(appointment_no,appointment_date,appointment_time,doct_id,patient_id)VALUES (1,'2023-2-4','11:10',1001,101);

INSERT INTO appointment
(appointment_no,appointment_date,appointment_time,doct_id,patient_id)VALUES (2,'2023-2-5','11:45',1002,102);

INSERT INTO appointment
(appointment_no,appointment_date,appointment_time,doct_id,patient_id)VALUES (3,'2023-3-4','12:40',1003,103);

INSERT INTO appointment
(appointment_no,appointment_date,appointment_time,doct_id,patient_id)VALUES (4,'2023-2-4','02:00',1004,104);

INSERT INTO appointment
(appointment_no,appointment_date,appointment_time,doct_id,patient_id)VALUES (5,'2023-2-7','03:40',1005,105);

 INSERT INTO appointment (appointment_no, appointment_date, appointment_time, doct_id, patient_id) VALUES (6, '2023-03-15', '09:15', 1006, 106);

 INSERT INTO appointment (appointment_no, appointment_date, appointment_time, doct_id, patient_id) VALUES (7, '2023-04-20', '14:30', 1007, 107);

 INSERT INTO appointment (appointment_no, appointment_date, appointment_time, doct_id, patient_id) VALUES (8, '2023-05-10', '11:00', 1008, 108);

INSERT INTO appointment (appointment_no, appointment_date, appointment_time, doct_id, patient_id) VALUES (9, '2023-06-08', '16:45', 1009, 109);

INSERT INTO appointment (appointment_no, appointment_date, appointment_time, doct_id, patient_id) VALUES (10, '2023-07-12', '10:30', 1010, 110);

 INSERT INTO appointment (appointment_no, appointment_date, appointment_time, doct_id, patient_id) VALUES (11, '2023-08-22', '13:20', 1011, 111);

 INSERT INTO appointment (appointment_no, appointment_date, appointment_time, doct_id, patient_id) VALUES (12, '2023-09-05', '15:00', 1012, 112);

 INSERT INTO appointment (appointment_no, appointment_date, appointment_time, doct_id, patient_id) VALUES (13, '2023-10-30', '08:45', 1013, 113);

 INSERT INTO appointment (appointment_no, appointment_date, appointment_time, doct_id, patient_id) VALUES (14, '2023-11-19', '17:10', 1014, 114);

 INSERT INTO appointment (appointment_no, appointment_date, appointment_time, doct_id, patient_id) VALUES (15, '2023-12-14', '12:25', 1015, 115);

INSERT INTO appointment (appointment_no, appointment_date, appointment_time, doct_id, patient_id) VALUES (16, '2024-01-09', '10:00', 1016, 116);

INSERT INTO appointment (appointment_no, appointment_date, appointment_time, doct_id, patient_id) VALUES (17, '2024-02-27', '15:30', 1017, 117);

 INSERT INTO appointment (appointment_no, appointment_date, appointment_time, doct_id, patient_id) VALUES (18, '2024-03-18', '11:55', 1018, 118);

 INSERT INTO appointment (appointment_no, appointment_date, appointment_time, doct_id, patient_id) VALUES (19, '2024-04-14', '09:40', 1019, 119);

 INSERT INTO appointment (appointment_no, appointment_date, appointment_time, doct_id, patient_id) VALUES (20, '2024-05-19', '16:15', 1020, 120);
select*from appointment;




INSERT INTO login
(username,password)VALUES ('dr.priyanka','pri');
INSERT INTO login
(username,password)VALUES ('dr.rahul','rah');
INSERT INTO login
(username,password)VALUES ('dr.ketki','ket');
INSERT INTO login
(username,password)VALUES ('dr.ashutosh','ash');
INSERT INTO login
(username,password)VALUES ('dr.nikita','nikit');
INSERT INTO login
(username,password)VALUES ('dr.john','joh');
INSERT INTO login
(username,password)VALUES ('dr.ishaan','ish');
INSERT INTO login
(username,password)VALUES ('dr.ashwini','ash');
INSERT INTO login
(username,password)VALUES ('dr.shravani','shr');
INSERT INTO login
(username,password)VALUES ('dr.pradnya','pra');
INSERT INTO login
(username,password)VALUES ('dr.tanvi','tan');
INSERT INTO login
(username,password)VALUES ('dr.sahil','sah');
INSERT INTO login
(username,password)VALUES ('dr.prathamesh','pra');
INSERT INTO login
(username,password)VALUES ('dr.nikhil','nik');
INSERT INTO login
(username,password)VALUES ('dr.mihika','mih');
INSERT INTO login
(username,password)VALUES ('dr.kunal','kun');
INSERT INTO login
(username,password)VALUES ('dr.nitesh','nit');
INSERT INTO login
(username,password)VALUES ('dr.reema','ree');
INSERT INTO login
(username,password)VALUES ('dr.supriya','sup');
INSERT INTO login
(username,password)VALUES ('dr.aishwarya','ais');
INSERT INTO login(username,password)VALUES('p.arun','paru');
INSERT INTO login(username,password)VALUES('p.sunita','psun');
INSERT INTO login(username,password)VALUES('p.raghav','prag');
INSERT INTO login(username,password)VALUES('p.rakesh','prak');
INSERT INTO login(username,password)VALUES('p.ankita','pank');
INSERT INTO login(username,password)VALUES('p.savi','psav');
INSERT INTO login(username,password)VALUES('p.suresh','psur');
INSERT INTO login(username,password)VALUES('p.sugandha','psug');
INSERT INTO login(username,password)VALUES('p.ajit','paij');
INSERT INTO login(username,password)VALUES('p.leela','plee');
INSERT INTO login(username,password)VALUES('p.sachin','psac');
INSERT INTO login(username,password)VALUES('p.rajesh','praj');
INSERT INTO login(username,password)VALUES('p.priya','ppri');
INSERT INTO login(username,password)VALUES('p.sanjay','psan');
INSERT INTO login(username,password)VALUES('p.amit','pami');
INSERT INTO login(username,password)VALUES('p.sanket','psank');
INSERT INTO login(username,password)VALUES('p.ram','pram');
INSERT INTO login(username,password)VALUES('p.anita','pani');
INSERT INTO login(username,password)VALUES('p.vikram','pvik');
INSERT INTO login(username,password)VALUES('p.neha','pneh');
select*from login;
