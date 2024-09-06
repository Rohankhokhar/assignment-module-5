create database item ;

use item;

create table item1(
pro_id int primary key,
pro_name varchar(50),
pro_price decimal(10,2),
pro_com int 
);

insert into item1 (pro_id,pro_name, pro_price,pro_com ) values
(101, 'mother board' , 3200.00 , 15),
(102, 'key board' , 450.00 , 16),
(103, 'zip drive' , 250.00 , 14),
(104, 'speaker' , 550.00 , 16),
(105, 'monitor' , 5000.00 , 11),
(106, 'dvd drive' , 900.00 , 12),
(107, 'cd drive' , 800.00 , 12),
(108, 'printer' , 2600.00 , 13),
(109, 'refill cartridge' , 350.00 , 13),
(110, 'mouse' , 250.00 , 12);

select * from item1;
+--------+------------------+-----------+---------+
| pro_id | pro_name         | pro_price | pro_com |
+--------+------------------+-----------+---------+
|    101 | mother board     |   3200.00 |      15 |
|    102 | key board        |    450.00 |      16 |
|    103 | zip drive        |    250.00 |      14 |
|    104 | speaker          |    550.00 |      16 |
|    105 | monitor          |   5000.00 |      11 |
|    106 | dvd drive        |    900.00 |      12 |
|    107 | cd drive         |    800.00 |      12 |
|    108 | printer          |   2600.00 |      13 |
|    109 | refill cartridge |    350.00 |      13 |
|    110 | mouse            |    250.00 |      12 |
+--------+------------------+-----------+---------+

select pro_id, pro_name,pro_price,pro_com  from item1 where pro_price >= 200 and pro_price <= 600;
+--------+------------------+-----------+---------+
| pro_id | pro_name         | pro_price | pro_com |
+--------+------------------+-----------+---------+
|    102 | key board        |    450.00 |      16 |
|    103 | zip drive        |    250.00 |      14 |
|    104 | speaker          |    550.00 |      16 |
|    109 | refill cartridge |    350.00 |      13 |
|    110 | mouse            |    250.00 |      12 |
+--------+------------------+-----------+---------+