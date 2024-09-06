create database std;
use std;

create table student (
roll_no int primary key,
Nam varchar(50),
branch varchar(50)
);

create table exam (
rollno int,
foreign key (rollno) references student(roll_no),
s_code varchar(20),
marks int,
p_code varchar(20)
);

insert into student values(12,"rohan","bca"),
(13,"jjj","mca"),
(14,"kkk","mca");

select * from student;

+---------+-------+--------+
| roll_no | name  | branch |
+---------+-------+--------+
|      12 | rohan | bca    |
|      13 | jjj   | mca    |
|      14 | kkk   | mca    |
+---------+-------+--------+

insert into exam values(12,"cs11",50,"cs"),
(12,"cs12",60,"cs"),
(13,"ec101",45,"ec"),
(13,"ec102",55,"ec"),
(14,"ec101",58,"ec"),
(14,"ec102",85,"ec");

select * from exam;

+---------+-------+--------+--------+-------+--------+
| roll_no | Nam   | branch | s_code | marks | p_code |
+---------+-------+--------+--------+-------+--------+
| 12      | rohan | bca    | cs11   | 50    | cs     |
| 12      | rohan | bca    | cs12   | 60    | cs     |
| 13      | jjj   | mca    | ec101  | 45    | ec     |
| 13      | jjj   | mca    | ec102  | 55    | ec     |
| 14      | kkk   | mca    | ec101  | 58    | ec     |
| 14      | kkk   | mca    | ec102  | 85    | ec     |
+---------+-------+--------+--------+-------+--------+

