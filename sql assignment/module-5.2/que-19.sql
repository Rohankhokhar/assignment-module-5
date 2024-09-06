create database order;
use order;

CREATE TABLE orders1 (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10,2),
    ord_date DATE,
    cust_id INT,
    selse_id INT
);

INSERT INTO orders1 (ord_no, purch_amt, ord_date, cust_id, selse_id) VALUES
(70001, 150.50, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.50, '2012-08-17', 3009, 5003),
(70007, 948.50, '2012-09-10', 3005, 5002),
(70005, 2400.60, '2012-07-27', 3007, 5001),
(70008, 5760.00, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.40, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.19, '2012-08-17', 3003, 5007),
(70013, 3045.60, '2012-04-25', 3002, 5001);

mysql> select  * from orders1;
+--------+-----------+------------+---------+----------+
| ord_no | purch_amt | ord_date   | cust_id | selse_id |
+--------+-----------+------------+---------+----------+
|  70001 |    150.50 | 2012-10-05 |    3005 |     5002 |
|  70002 |     65.26 | 2012-10-05 |    3002 |     5001 |
|  70003 |   2480.40 | 2012-10-10 |    3009 |     5003 |
|  70004 |    110.50 | 2012-08-17 |    3009 |     5003 |
|  70005 |   2400.60 | 2012-07-27 |    3007 |     5001 |
|  70007 |    948.50 | 2012-09-10 |    3005 |     5002 |
|  70008 |   5760.00 | 2012-09-10 |    3002 |     5001 |
|  70009 |    270.65 | 2012-09-10 |    3001 |     5005 |
|  70010 |   1983.43 | 2012-10-10 |    3004 |     5006 |
|  70011 |     75.19 | 2012-08-17 |    3003 |     5007 |
|  70012 |    250.45 | 2012-06-27 |    3008 |     5002 |
|  70013 |   3045.60 | 2012-04-25 |    3002 |     5001 |
+--------+-----------+------------+---------+----------+
12 rows in set (0.00 sec)

mysql> select ord_no , ord_date , purch_amt  from orders1 where selse_id = "5001";
+--------+------------+-----------+
| ord_no | ord_date   | purch_amt |
+--------+------------+-----------+
|  70002 | 2012-10-05 |     65.26 |
|  70005 | 2012-07-27 |   2400.60 |
|  70008 | 2012-09-10 |   5760.00 |
|  70013 | 2012-04-25 |   3045.60 |