SELECT * FROM customers;
SELECT * FROM orderdetails;
SELECT * FROM products;
SELECT * FROM payments;
SELECT * FROM orders;
SELECT * FROM productlines;

SELECT orderdetails.orderNumber, orderdetails.productCode, orderdetails.quantityOrdered, orderdetails.priceEach,
orders.orderDate, orders.requiredDate, orders.shippedDate, orders.status, orders.customerNumber, 
customers.customerName, customers.phone, customers.addressLine1, customers.city, customers.postalCode
FROM orderdetails
INNER JOIN orders
ON orderdetails.orderNumber = orders.orderNumber
INNER JOIN customers
ON orders.customerNumber = customers.customerNumber;

SELECT * FROM new_view;
