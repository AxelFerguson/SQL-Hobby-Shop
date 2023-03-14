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
 
 SELECT ROUND(AVG(profit),3) AS LTV
   FROM profits;
   
--   This query is sued to identify the average lifetime value each customer brings to the store. We can use this information to better decide what revenue we can expect
-- in the future, allowing for more accurate projections and forcasts.