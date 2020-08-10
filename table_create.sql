
-- drop the tables
drop table donation;
drop table donor_status;
drop table donor;
drop table request;
drop table available_blood;

-- creating the tables
create table donor
(
	donor_id integer not null,
	fname varchar(20),
	lname varchar(20),
	blood_group varchar(11),
	dob date,
	sex varchar(10),
	contact varchar(12),
	district varchar(20),
	email varchar(30),
	primary key (donor_id)
);

create table donation
(
	donation_id integer not null,
	donor_id integer,
	amount integer,
	donate_date date,
	primary key (donation_id),
	foreign key (donor_id) references donor(donor_id) on delete cascade
);

create table donor_status
(
	donor_id integer not null,
	available varchar(10),
	primary key (donor_id),
	foreign key (donor_id) references donor(donor_id) on delete cascade	
);

create table request
(
	request_id integer not null,
	fname varchar(30),
	lname varchar(30),
	blood_group varchar(5),
	amount integer,
	district varchar(30),
	patient_location varchar(200),
	required_date date,
	contact varchar(12),
	primary key (request_id)
);

create table available_blood
(
	blood_group varchar(5),
	amount integer default 1,
	primary key (blood_group)
);

-- viewing all table of database

select * from tab;

--describing each column of table

describe donor;
describe donation;
describe donor_status;
describe request;
describe available_blood;


commit;
