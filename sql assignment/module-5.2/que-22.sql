ALTER TABLE item1
    -> CHANGE pro_name item_name VARCHAR(50);

ALTER TABLE item1
    -> CHANGE pro_price price_in_Rs decimal(10,2);

select * from item1;
+--------+------------------+-------------+---------+
| pro_id | item_name        | price_in_Rs | pro_com |
+--------+------------------+-------------+---------+
|    101 | mother board     |     3200.00 |      15 |
|    102 | key board        |      450.00 |      16 |
|    103 | zip drive        |      250.00 |      14 |
|    104 | speaker          |      550.00 |      16 |
|    105 | monitor          |     5000.00 |      11 |
|    106 | dvd drive        |      900.00 |      12 |
|    107 | cd drive         |      800.00 |      12 |
|    108 | printer          |     2600.00 |      13 |
|    109 | refill cartridge |      350.00 |      13 |
|    110 | mouse            |      250.00 |      12 |
+--------+------------------+-------------+---------+