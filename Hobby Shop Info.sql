/*
This database contains 8 tables
customers - contains customer data
employees - contains employee information
offices - contains informatino about the sales offices
orders - contains information about customers sales orders
orderdetails - sales information for each sales order
payments - contains a customers payments records
products - contains a list of model car information
productlines - contains product line information

productlines links to products * productLine
products links to orderdetails * product code
orderdetails links to orders * orderNumber
orders links to customers links to payments * customerNumber
customers links to employees * salesRepEmployeeNumber = employeeNumber
employees links to employees * reportsTo = employeeNumber
employees links to offices * officeCode
*/
SELECT ('Customers') AS table_name, 13 AS number_of_attributes, COUNT(*) AS number_of_rows
  FROM customers
 UNION ALL
SELECT ('Products'), 9, COUNT(*)
  FROM products
 UNION ALL
SELECT ('ProductLines'), 4, COUNT(*)
  FROM productLines
 UNION ALL
SELECT ('Orders'), 7, COUNT(*)
  FROM orders
 UNION ALL
SELECT ('OrderDetails'), 5, COUNT(*)
  FROM orderdetails
 UNION ALL
SELECT ('Payments'), 4, COUNT(*)
  FROM payments
 UNION ALL
SELECT ('Employees'), 8, COUNT(*)
  FROM employees
 UNION ALL
SELECT ('Offices'), 9,  COUNT(*)
  FROM offices;
