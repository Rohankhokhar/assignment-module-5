create database salpersone;
use salpersone;

create table salspersone(
sno int primary key,
sname varchar(50),
scity varchar(50),
comm decimal(3,2)
);

create table customer(
cnm int primary key,
cname varchar(50),
city varchar(50),
rating int,
sno int,
foreign key(sno) references salspersone (sno)
);

insert into salspersone value(1001,"peel","london",.12),
(1002,"serees","san jose",.13),
(1004,"motika","london",.11),
(1007,"rafkin","barcelona",.15),
(1003,"axelrod","new york",.1);

+------+---------+-----------+------+
| sno  | sname   | scity     | comm |
+------+---------+-----------+------+
| 1001 | peel    | london    | 0.12 |
| 1002 | serees  | san jose  | 0.13 |
| 1003 | axelrod | new york  | 0.10 |
| 1004 | motika  | london    | 0.11 |
| 1007 | rafkin  | barcelona | 0.15 |
+------+---------+-----------+------+

insert into customer value(201,"hoffman","london",100,1001),
(202,"giovanne","roe",200,1003),
(203,"liu","san jose",300,1002),
(204,"grass","barcelona",100,1002),
(206,"clemens","london",300,1007),
(207,"perelra","roe",100,1004);

+-----+----------+-----------+--------+------+
| cnm | cname    | city      | rating | sno  |
+-----+----------+-----------+--------+------+
| 201 | hoffman  | london    |    100 | 1001 |
| 202 | giovanne | roe       |    200 | 1003 |
| 203 | liu      | san jose  |    300 | 1002 |
| 204 | grass    | barcelona |    100 | 1002 |
| 206 | clemens  | london    |    300 | 1007 |
| 207 | perelra  | roe       |    100 | 1004 |
+-----+----------+-----------+--------+------+