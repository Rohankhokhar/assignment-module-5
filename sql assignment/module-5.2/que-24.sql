SELECT PRO_COM AS company_code,
    ->        AVG(price_in_Rs) AS average_price
    -> FROM item1
    -> GROUP BY PRO_COM;
+--------------+---------------+
| company_code | average_price |
+--------------+---------------+
|           15 |   3200.000000 |
|           16 |    500.000000 |
|           14 |    250.000000 |
|           11 |   5000.000000 |
|           12 |    650.000000 |
|           13 |   1475.000000 |
+--------------+---------------+