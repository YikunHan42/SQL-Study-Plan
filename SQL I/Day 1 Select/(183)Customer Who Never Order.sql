# Write your MySQL query statement below
UPDATE 
SELECT name as 'Customers'
FROM Customers
WHERE id not in
(
    SELECT customerid from Orders
);