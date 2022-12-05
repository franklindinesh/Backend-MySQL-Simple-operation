create database dinesh;
use dinesh;
create table mydetail(
id int not null auto_increment,
name varchar(50),
age int not null,
primary key(id)

);
show tables;
describe mydetail;

alter table mydetail add gender varchar(10) not null after age;
alter table mydetail 
	add city varchar(50) not null after gender,
    add contact varchar(50) not null after city;

alter table mydetail modify contact varchar(100) not null;                  -- modify 50 varchar to 100 varchar

alter table mydetail rename to showmydetails;                               -- rename table (my detail to showmydetails) 

-- database for showmydetails: 
select * from showmydetails;
insert into showmydetails values(null,"Dinesh",23,"male","CBE","7604939868");
insert into showmydetails (name,age,gender,city,contact) values ("vishal",23,"male","CBE","7604009868");

-- multiple data values in database:
insert into showmydetails (name,age,gender,city,contact) values 
	("naveen",23,"male","CBE","7604099868"),
    ("mahesh",28,"male","kerala","7604459868"),
    ("Adithya",29,"male","Chennai","7554459868"),
    ("tamil",29,"male","valpari","7604459868"),
    ("divya",26,"female","valpari","7604559868"),
    ("suganya",26,"female","valpari","7687459868"),
    ("prince",30,"male","ramanathapuram","7604669868");

-- delete last database:    (using "where" datatypes)
delete from showmydetails where id=4;

-- update databases in what ever place we want
update showmydetails set city="chennai",contact="9842967935" where id=3; 


-- we want "name and age":
select name,age from showmydetails;

-- name of member's from this (ex: CBE) place
select name,age,city from showmydetails where city="Chennai";


-- logical operator using in "where" datatype:
select name,age,city from showmydetails where city="Chennai" and age>=29;
select name,age,city from showmydetails where city="Chennai" or city="CBE";
select name,age,city from showmydetails where (city="Chennai" or city="CBE") and age>=23 order by name; -- using OR & AND operators , orderwise using 'name'

-- how many citys:
select city from showmydetails;
select distinct city from showmydetails; -- delete duplicate values

-- count of city:
select count(city) from showmydetails; -- it show also duplicate values
select count(distinct city) from showmydetails; -- it show the current values
select count(distinct city) as total from showmydetails; -- it change the headline

select * from showmydetails;

-- start & end from values:
select * from showmydetails limit 1,9; 

select * from showmydetails order by id desc limit 0,1;    -- last data we want 

select max(age) from showmydetails;
select min(age) from showmydetails;
select avg(age) from showmydetails;
select round(avg(age),0) from showmydetails;
select sum(age) from showmydetails;

select * from showmydetails;
-- how many count of gender - male,female & city is :
select gender,count(id) as total from showmydetails group by gender;
select city,count(id) as total from showmydetails group by city;

-- show starting,middle,ending values :
select name from showmydetails where name like "di%";
select name from showmydetails where name like "%a";
select name from showmydetails where name like "%a%";

select * from showmydetails where city="CBE" or city="chennai";
select * from showmydetails where city in("CBE","chennai");
select * from showmydetails where city not in("CBE","chennai"); -- it show all city without "CBE & chennai"
select name,age from showmydetails where age between 23 and 29; 























