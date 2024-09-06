create database emp;
use emp;

create table employe(
employee_id int primary key,
first_name varchar(20),
last_name varchar(20),
salary int,
joining_date date,
department varchar(50)
);

insert into employe values (1,"john","abraham",1000000,"2013-01-01","banking"),
(2,"michel","clark",800000,"2013-01-01","insurance"),
(3,"roy","thomson",700000,"2013-02-01","insurance"),
(4,"tom","jhons",600000,"2013-02-01","insurance"),
(5,"jery","pinto",650000,"2013-02-01","insurance"),
(6,"philips","mathew",750000,"2013-01-01","insurance"),
(7,"testname1","123",650000,"2013-01-01","insurance"),
(8,"testname2","lname%",600000,"2013-02-01","insurance");

select * from employe;
+-------------+------------+-----------+---------+--------------+------------+
| employee_id | first_name | last_name | salary  | joining_date | department |
+-------------+------------+-----------+---------+--------------+------------+
|           1 | john       | abraham   | 1000000 | 2013-01-01   | banking    |
|           2 | michel     | clark     |  800000 | 2013-01-01   | insurance  |
|           3 | roy        | thomson   |  700000 | 2013-02-01   | insurance  |
|           4 | tom        | jhons     |  600000 | 2013-02-01   | insurance  |
|           5 | jery       | pinto     |  650000 | 2013-02-01   | insurance  |
|           6 | philips    | mathew    |  750000 | 2013-01-01   | insurance  |
|           7 | testname1  | 123       |  650000 | 2013-01-01   | insurance  |
|           8 | testname2  | lname%    |  600000 | 2013-02-01   | insurance  |
+-------------+------------+-----------+---------+--------------+------------+

create table incentive(
employe_ref_id int,
incentive_date date,
incentive_amount int,
foreign key (employe_ref_id) references employe(employee_id)
);

insert into incentive values(1,"2013-02-01",5000),
(2,"2013-02-01",3000),
(3,"2013-02-01",4000),
(1,"2013-01-01",4500),
(2,"2013-01-01",3500);

 select * from incentive;
+----------------+----------------+------------------+
| employe_ref_id | incentive_date | incentive_amount |
+----------------+----------------+------------------+
|              1 | 2013-02-01     |             5000 |
|              2 | 2013-02-01     |             3000 |
|              3 | 2013-02-01     |             4000 |
|              1 | 2013-01-01     |             4500 |
|              2 | 2013-01-01     |             3500 |
+----------------+----------------+------------------+