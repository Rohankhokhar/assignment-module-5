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