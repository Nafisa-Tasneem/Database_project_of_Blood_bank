

-- -- ---------------------------------- select operation ----------------------------------------


-- selecting donor name and blood group from donor table

select fname,lname,blood_group from donor;

-- selcting distict blood group 

select distinct(blood_group) from donor;

--- selecting donors who have donated more than 2 bags blood 

select donor_id,amount from donation where amount>2;

--- selecting lname,fname where blood group is AB+ or O+

select fname,lname,blood_group from donor where blood_group='AB+' or blood_group='O+';

-- selecting female donors with AB+ blood grp

select fname,lname,blood_group from donor where blood_group='AB+' and sex='female';

--- selecting donor of range
select fname,lname,blood_group from donor where donor_id between 3 and 7;


---- select fname,lname,blood grp where amount in 2,3

select fname,lname,blood_group from request where amount in(2,3);


---- selecting request from sylhet
select fname,lname,blood_group,district from request where district like '%sylhet%';


--- selecting request ordered by required date
select fname,lname,blood_group,district,required_date from request order by required_date;


--- selecting request descending oreder of amount 
select fname,lname,blood_group,amount,required_date from request order by amount desc;


--- selcting request with date in ascending and amount in descending order
select fname,lname,blood_group,amount,required_date from request order by required_date,amount desc;



-- -------------------------------- aggregate function --------------------------------------------

-- maximum,minimum available blood
select max(amount), min(amount) from available_blood;


-- average and sum of available_blood
select sum(amount),avg(amount) from available_blood;

-- selecting no. of times and amount of donated blood
select count(amount) as no_of_donation, sum(amount) as total_donated_amount from donation where donor_id=4;


-- selecting no. of request for each type of blood
select count(amount) as no_of_request ,blood_group from request group by blood_group;

--- sum of requested amount,amount>=2 for each blood grp
select sum(amount) as amount_of_donation ,blood_group from request where amount>=2 group by blood_group;

--- donors who are not currently available
select count(available) as not_available from donor_status group by available having available='no';



-- --------------------------------- subquery and set operation ------------------------------------

-- finding available donors name,blood_group
select donor_id,fname,blood_group,contact from donor where donor_id in(select donor_id from donor_status where available='yes');


--- finding donors of same area and of same blood_group

select d.fname,d.contact,d.blood_group from donor d where d.blood_group in(
	select r.blood_group from request r where r.blood_group=d.blood_group and r.district=d.district);

-- union all
select d.fname,d.contact,d.blood_group from donor d where d.blood_group='B+' union all 
select d.fname,d.contact,d.blood_group from donor d where d.district='sylhet';

---union
select d.fname,d.contact,d.blood_group from donor d where d.blood_group='B+' union 
select d.fname,d.contact,d.blood_group from donor d where d.district='sylhet';



-- intersect (available donor intersect those who have given bloodbefore 9 april 2016)

select d.fname,contact from donor d where donor_id in(select donor_id from donor_status where available='yes') intersect
select d.fname,contact from donor d where donor_id in(select donor_id from donation where donate_date<'09-APR-2016'); 



--- minus

select d.fname,contact from donor d where donor_id in(select donor_id from donor_status where available='yes') minus
select d.fname,contact from donor d where donor_id in(select donor_id from donation where donate_date<'09-APR-2016'); 

-- ------------------------------------------- joining multiple tables ----------------------------------------------

-- informaton about donors who donated
select d.fname,d.lname,d.contact,don.amount,don.donate_date from donor d join donation don using(donor_id);

--- natural join

select d.fname,d.lname,d.contact,don.amount,don.donate_date from donor d natural join donation don;

-- ------ inner join
select d.fname,d.lname,d.contact,don.amount,don.donate_date from donor d inner join donation don using(donor_id);


-- left outer join (available donor)
select don.fname,don.lname,don.contact,av.available from donor don left outer join donor_status av using(donor_id) where available='yes';

--- those who are male donor

select d.fname,d.lname,d.contact,don.amount from donor d full outer join donation don using(donor_id) where sex='male';


-- donor ,request of same area,same bg
select d.fname,d.contact,r.fname from donor d join request r using(district,blood_group);

------------------------------------ PL/SQL ---------------------------

-- maximum donor

set serveroutput on
declare
	max_donor donor.donor_id%type;
begin

select max(donor_id) into max_donor from donor;
dbms_output.put_line('The maximum registered donor is: '|| max_donor);
end;
/


--donated or not

set serveroutput on
declare
	id integer;
begin
select count(donor_id) into id from donation where donor_id=5;

if 	id>=1 then
dbms_output.put_line('This donar have donated');

else

dbms_output.put_line('This donar have not donated');
 end if;
 
 end;
 /
 
 --- loop , showing request after 1 jan 2019
 
 SET SERVEROUTPUT ON
DECLARE
   counter    integer := 1;
   name       request.fname%TYPE;
   surname    request.lname%TYPE;
   date_needed date;
  
BEGIN
	 select required_date into date_needed from request;
	 select request_id into counter from request;
   FOR counter IN 1..6 
   LOOP

      SELECT fname, lname 
      INTO name, surname
      FROM request
      WHERE
      request_id=counter;

      DBMS_OUTPUT.PUT_LINE ('Request ' || counter);
      DBMS_OUTPUT.PUT_LINE (name || '-' || surname);
      DBMS_OUTPUT.PUT_LINE ('-----------');


   END LOOP;

   EXCEPTION
      WHEN others THEN
         DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;
/

--------- procedure-------- showing last name
SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE getname IS
req_id request.request_id%type;
lastname request.lname%type;
BEGIN
req_id := 6;
SELECT lname INTO lastname
FROM request
WHERE request_id = req_id;
DBMS_OUTPUT.PUT_LINE('Last name: '||lastname);
END;
/
SHOW ERRORS;

BEGIN
getname;
END;
/
