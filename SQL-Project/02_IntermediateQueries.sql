
**Display Every Sale with Customer and Product Details**

SELECT
    s.SaleID,
    c.FirstName + ' ' + c.LastName AS Customer,
    p.ProductName,
    s.Quantity,
    p.UnitPrice,
    s.SaleDate
FROM Sales s
INNER JOIN Customers c
    ON s.CustomerID = c.CustomerID
INNER JOIN Products p
    ON s.ProductID = p.ProductID;

**Who bought what, and when?**

**Calculate Revenue per Sale**

Revenue is:

Quantity × Unit Price

SELECT
    s.SaleID,
    p.ProductName,
    s.Quantity,
    p.UnitPrice,
    s.Quantity * p.UnitPrice AS Revenue
FROM Sales s
INNER JOIN Products p
    ON s.ProductID = p.ProductID;

**Total Revenue**
SELECT
    SUM(s.Quantity * p.UnitPrice) AS TotalRevenue
FROM Sales s
INNER JOIN Products p
    ON s.ProductID = p.ProductID;

**How much money has the company made?**
  
**Revenue by Product**
  
SELECT
    p.ProductName,
    SUM(s.Quantity * p.UnitPrice) AS Revenue
FROM Sales s
INNER JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY
    p.ProductName
ORDER BY
    Revenue DESC;

**Which products generate the most revenue?**

**Revenue by Category**
  
SELECT
    c.CategoryName,
    SUM(s.Quantity * p.UnitPrice) AS Revenue
FROM Sales s
INNER JOIN Products p
    ON s.ProductID = p.ProductID
INNER JOIN Categories c
    ON p.CategoryID = c.CategoryID
GROUP BY
    c.CategoryName
ORDER BY
    Revenue DESC;

**Which product category is the most profitable?**
  
**Top 10 Customers**
  
SELECT TOP 10
    cu.FirstName,
    cu.LastName,
    SUM(s.Quantity * p.UnitPrice) AS TotalSpent
FROM Sales s
INNER JOIN Customers cu
    ON s.CustomerID = cu.CustomerID
INNER JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY
    cu.FirstName,
    cu.LastName
ORDER BY
    TotalSpent DESC;

**Who are our most valuable customers?**

**Best Performing Store**
  
SELECT
    st.StoreName,
    SUM(s.Quantity * p.UnitPrice) AS Revenue
FROM Sales s
INNER JOIN Stores st
    ON s.StoreID = st.StoreID
INNER JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY
    st.StoreName
ORDER BY
    Revenue DESC;

**Employee Sales Performance**
  
SELECT
    e.FirstName,
    e.LastName,
    SUM(s.Quantity * p.UnitPrice) AS TotalSales
FROM Sales s
INNER JOIN Employees e
    ON s.EmployeeID = e.EmployeeID
INNER JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY
    e.FirstName,
    e.LastName
ORDER BY
    TotalSales DESC;

**Which employee generates the most sales?**

**Monthly Revenue**
  
SELECT
    YEAR(s.SaleDate) AS SalesYear,
    MONTH(s.SaleDate) AS SalesMonth,
    SUM(s.Quantity * p.UnitPrice) AS Revenue
FROM Sales s
INNER JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY
    YEAR(s.SaleDate),
    MONTH(s.SaleDate)
ORDER BY
    SalesYear,
    SalesMonth;
Business Question

**How does revenue change over time?**

**Average Order Value**
SELECT
    AVG(s.Quantity * p.UnitPrice) AS AverageOrderValue
FROM Sales s
INNER JOIN Products p
    ON s.ProductID = p.ProductID;
Query 11: Products Sold More Than 10 Times
SELECT
    p.ProductName,
    SUM(s.Quantity) AS TotalQuantitySold
FROM Sales s
INNER JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY
    p.ProductName
HAVING SUM(s.Quantity) > 10
ORDER BY
    TotalQuantitySold DESC;
