
-- inserting data into donor table

delete from donor;

insert into donor(donor_id,fname,lname,blood_group,dob,sex,contact,district,email) values (1, 'Nafisa', 'Tasneem', 'AB+', '11-JAN-1998', 'female', '01711206798' , 'dhaka' , 'nafisa@gmail.com');

insert into donor(donor_id,fname,lname,blood_group,dob,sex,contact,district,email) values (2, 'Kaniz', 'Tahsin', 'B+', '11-JAN-1997', 'female', '01711200998' , 'dhaka' , 'kaniz@gmail.com');

insert into donor(donor_id,fname,lname,blood_group,dob,sex,contact,district,email) values (3, 'Nadim', 'Mostofa', 'A+', '12-FEB-1998', 'male', '01911206798' , 'khulna' , 'nadim@gmail.com');

insert into donor(donor_id,fname,lname,blood_group,dob,sex,contact,district,email) values (4, 'Anika', 'Maisha', 'AB+', '11-JAN-1983', 'female', '01711206798' , 'barishal' , 'maisha@gmail.com');

insert into donor(donor_id,fname,lname,blood_group,dob,sex,contact,district,email) values (5, 'Priti', 'Bose', 'O+', '11-JAN-1998', 'female', '01711206798' , 'chittagong' , 'priti@gmail.com');

insert into donor(donor_id,fname,lname,blood_group,dob,sex,contact,district,email) values (6, 'Maisha', 'Tasneem', 'AB-', '11-JAN-1980', 'female', '01711204558' , 'barishal' , 'maisha@gmail.com');

insert into donor(donor_id,fname,lname,blood_group,dob,sex,contact,district,email) values (7, 'Nafis', 'Sadik', 'O-', '16-JAN-1998', 'male', '01981206798' , 'khulna' , 'sadik@gmail.com');

insert into donor(donor_id,fname,lname,blood_group,dob,sex,contact,district,email) values (8, 'Anik', 'Islam', 'A-', '11-AUG-1990', 'male', '01611206798' , 'chittagong' , 'anik@gmail.com');

insert into donor(donor_id,fname,lname,blood_group,dob,sex,contact,district,email) values (9, 'Azmat', 'Ullah', 'B+', '11-JAN-1998', 'male', '01571566798' , 'sylhet' , 'azmat15@gmail.com');

insert into donor(donor_id,fname,lname,blood_group,dob,sex,contact,district,email) values (10, 'Naim', 'Hossain', 'B-', '11-JUN-1995', 'male', '01871206798' , 'khulna' , 'naim@gmail.com');


-- inserting data into donation table

delete from donation;

insert into donation(donation_id,donor_id,amount,donate_date) values (1,6,3,'09-APR-2016');

insert into donation(donation_id,donor_id,amount,donate_date) values (2,4,1,'09-APR-2017');

insert into donation(donation_id,donor_id,amount,donate_date) values (3,3,3,'09-APR-2018');

insert into donation(donation_id,donor_id,amount,donate_date) values (4,1,1,'09-MAY-2011');

insert into donation(donation_id,donor_id,amount,donate_date) values (5,7,2,'07-APR-2010');

insert into donation(donation_id,donor_id,amount,donate_date) values (6,2,1,'09-MAY-2012');

insert into donation(donation_id,donor_id,amount,donate_date) values (7,5,2,'15-FEB-2016');

insert into donation(donation_id,donor_id,amount,donate_date) values (8,4,2,'09-MAY-2006');

insert into donation(donation_id,donor_id,amount,donate_date) values (9,6,3,'04-JUL-2016');


-- inserting data into donor_status table
delete from donor_status;

insert into donor_status(donor_id,available) values (1,'yes');
insert into donor_status(donor_id,available) values (2,'yes');
insert into donor_status(donor_id,available) values (3,'no');
insert into donor_status(donor_id,available) values (4,'no');
insert into donor_status(donor_id,available) values (5,'yes');
insert into donor_status(donor_id,available) values (6,'no');
insert into donor_status(donor_id,available) values (7,'yes');
insert into donor_status(donor_id,available) values (8,'no');
insert into donor_status(donor_id,available) values (9,'yes');
insert into donor_status(donor_id,available) values (10,'no');

-- inserting data into request table

delete from request;

insert into request(request_id,fname,lname,blood_group,amount,district,patient_location,required_date,contact) values (1, 'Nafisa', 'Tasneem', 'AB+', '2', 'dhaka', '6/4/a ,azimpur,Dhaka','18-FEB-2019', '01711206798');

insert into request(request_id,fname,lname,blood_group,amount,district,patient_location,required_date,contact) values (2, 'Ria', 'Islam', 'B+', '3', 'barishal', 'islami bank hospital,barishal','18-JAN-2019', '01711223098');

insert into request(request_id,fname,lname,blood_group,amount,district,patient_location,required_date,contact) values (3, 'kamal', 'Rahman', 'AB-', '1', 'dhaka', 'islami bank hospital,Dhaka','18-MAR-2019', '017112456798');

insert into request(request_id,fname,lname,blood_group,amount,district,patient_location,required_date,contact) values (4, 'Taef', 'Nadim', 'A+', '2', 'barishal', 'gazi medical hospital,barishal','18-FEB-2019', '01799006798');

insert into request(request_id,fname,lname,blood_group,amount,district,patient_location,required_date,contact) values (5, 'Mushfiq', 'Hossain', 'A-', '2', 'sylhet', 'Dhaka medical college,Dhaka','18-DEC-2018', '01881206798');

insert into request(request_id,fname,lname,blood_group,amount,district,patient_location,required_date,contact) values (6, 'Alif', 'Sanim', 'B+', '3', 'sylhet', 'Osmani medical College,sylhet','10-DEC-2018', '01551206798');

insert into request(request_id,fname,lname,blood_group,amount,district,patient_location,required_date,contact) values (7, 'Jarir', 'Tushar', 'O+', '1', 'barishal', 'Dhaka medical college,Dhaka','28-DEC-2018', '01861206798');

insert into request(request_id,fname,lname,blood_group,amount,district,patient_location,required_date,contact) values (8, 'Azim', 'Miah', 'O-', '3', 'dhaka', 'Dhaka medical college,Dhaka','18-FEB-2019', '01951206798');

insert into request(request_id,fname,lname,blood_group,amount,district,patient_location,required_date,contact) values (9, 'Sumaiya', 'Tasneem', 'AB+', '2', 'sylhet', 'Dhaka medical college,Dhaka','11-FEB-2019', '01709206798');


-- inserting data into available_blood table

delete from available_blood;

insert into available_blood values ('A+',67);
insert into available_blood values ('A-',70);
insert into available_blood values ('B+',57);
insert into available_blood values ('B-',45);
insert into available_blood values ('AB+',49);
insert into available_blood values ('AB-',66);
insert into available_blood values ('O+',88);
insert into available_blood values ('O-',30);


-- showing values for all tables

select * from donor;
select * from donation;
select * from donor_status;
select * from request;
select * from available_blood;

-- update

update donor_status set available='no' where donor_id=5;