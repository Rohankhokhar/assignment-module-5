select e.first_name, i.incentive_amount from employe e join incentive i on employee_id = employe_ref_id where i.incentive_amount > 3000;
+------------+------------------+
| first_name | incentive_amount |
+------------+------------------+
| john       |             5000 |
| roy        |             4000 |
| john       |             4500 |
| michel     |             3500 |
+------------+------------------+