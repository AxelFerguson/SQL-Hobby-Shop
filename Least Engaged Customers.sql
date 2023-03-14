WITH
profits AS (
SELECT o.customerNumber,
       SUM(od.quantityOrdered * (od.priceEach - p.buyPrice)) profit
  FROM orders o
  JOIN orderdetails od
    ON o.orderNumber = od.orderNumber
  JOIN products p
    ON od.productCode = p.productCode
 GROUP BY o.customerNumber
 )
 
 SELECT c.ContactLastName, c.contactFirstName, c.city, c.country
   FROM customers c
   JOIN profits p
     ON c.customerNumber = p.customerNumber
  ORDER BY profit
  LIMIT 5;
  
--  This query was used to identify who out least engaged customers are. This can be used to identify demographics which may be worth advertising too.