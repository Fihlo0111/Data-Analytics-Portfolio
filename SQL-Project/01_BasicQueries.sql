**View All Sales**
SELECT *
FROM Sales;

**Business Purpose:**
    
**Verify that the sales data was imported correctly.**
    
**View All Customers**
SELECT *
FROM Customers;

**View All Products**
SELECT *
FROM Products;
Query 4: Total Number of Customers
SELECT COUNT(*) AS TotalCustomers
FROM Customers;

**Business Question:**

**How many customers does the company have?**
    
**Total Number of Products**
    
SELECT COUNT(*) AS TotalProducts
FROM Products;

**Total Sales Transactions**
SELECT COUNT(*) AS TotalSales
FROM Sales;

**Most Expensive Product**
SELECT TOP 1
    ProductName,
    UnitPrice
FROM Products
ORDER BY UnitPrice DESC;

**What is our highest-priced product?**

**Cheapest Product**
SELECT TOP 1
    ProductName,
    UnitPrice
FROM Products
ORDER BY UnitPrice;

**Products Above R1,000**
SELECT
    ProductName,
    UnitPrice
FROM Products
WHERE UnitPrice > 1000;

**Customers from Gauteng**
SELECT *
FROM Customers
WHERE Province = 'Gauteng';

**Sales in 2025**
SELECT *
FROM Sales
WHERE YEAR(SaleDate) = 2025;

**Products Sorted by Price**
SELECT
    ProductName,
    UnitPrice
FROM Products
ORDER BY UnitPrice DESC;

**Find Products Starting with "D"**
SELECT *
FROM Products
WHERE ProductName LIKE 'D%';
Query 14: Sales Between Two Dates
SELECT *
FROM Sales
WHERE SaleDate
BETWEEN '2025-01-01' AND '2025-03-31';

**Customers from Johannesburg or Pretoria**
SELECT *
FROM Customers
WHERE City IN ('Johannesburg','Pretoria');
