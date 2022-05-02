# Write your MySQL query statement below
SELECT name
FROM SalesPerson 
WHERE name NOT IN
(SELECT SalesPerson.name
FROM
    SalesPerson JOIN Orders
ON 
    SalesPerson.sales_id = Orders.sales_id
WHERE 
    Orders.com_id = 
    (SELECT com_id
    FROM Company
    WHERE name = 'RED')
)