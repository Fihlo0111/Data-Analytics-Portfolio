Query 1: View All Sales
SELECT *
FROM Sales;

Business Purpose:
Verify that the sales data was imported correctly.

Query 2: View All Customers
SELECT *
FROM Customers;
Query 3: View All Products
SELECT *
FROM Products;
Query 4: Total Number of Customers
SELECT COUNT(*) AS TotalCustomers
FROM Customers;

Business Question:

How many customers does the company have?

Query 5: Total Number of Products
SELECT COUNT(*) AS TotalProducts
FROM Products;
Query 6: Total Sales Transactions
SELECT COUNT(*) AS TotalSales
FROM Sales;
Query 7: Most Expensive Product
SELECT TOP 1
    ProductName,
    UnitPrice
FROM Products
ORDER BY UnitPrice DESC;

Business Question:

What is our highest-priced product?

Query 8: Cheapest Product
SELECT TOP 1
    ProductName,
    UnitPrice
FROM Products
ORDER BY UnitPrice;
Query 9: Products Above R1,000
SELECT
    ProductName,
    UnitPrice
FROM Products
WHERE UnitPrice > 1000;
Query 10: Customers from Gauteng
SELECT *
FROM Customers
WHERE Province = 'Gauteng';
Query 11: Sales in 2025
SELECT *
FROM Sales
WHERE YEAR(SaleDate) = 2025;
Query 12: Products Sorted by Price
SELECT
    ProductName,
    UnitPrice
FROM Products
ORDER BY UnitPrice DESC;
Query 13: Find Products Starting with "D"
SELECT *
FROM Products
WHERE ProductName LIKE 'D%';
Query 14: Sales Between Two Dates
SELECT *
FROM Sales
WHERE SaleDate
BETWEEN '2025-01-01' AND '2025-03-31';
Query 15: Customers from Johannesburg or Pretoria
SELECT *
FROM Customers
WHERE City IN ('Johannesburg','Pretoria');
