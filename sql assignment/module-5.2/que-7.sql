select department, max(salary) as max_salary from employe group by department;
+------------+------------+
| department | max_salary |
+------------+------------+
| banking    |    1000000 |
| insurance  |     800000 |
+------------+------------+