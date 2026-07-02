SELECT * FROM data;
SELECT *
FROM data
WHERE c8 = 'United Kingdom';
SELECT *
FROM data
ORDER BY c6 DESC;
SELECT c8 AS Country,
SUM(c4) AS Total_Quantity
FROM data
GROUP BY c8;
SELECT c8 AS Country,
AVG(c6) AS Average_UnitPrice
FROM data
GROUP BY c8;
SELECT
SUM(c4) AS Total_Items_Sold,
AVG(c6) AS Average_Price
FROM data;
SELECT *
FROM data
WHERE c6 >
(
SELECT AVG(c6)
FROM data
);
CREATE VIEW UK_Customers AS
SELECT *
FROM data
WHERE c8 = 'United Kingdom';
SELECT * FROM UK_Customers;
CREATE TABLE customers (
    CustomerID TEXT PRIMARY KEY,
    CustomerName TEXT
);
INSERT INTO customers VALUES
('17850','Alice'),
('13047','Bob'),
('12583','Charlie'),
('14688','David'),
('12748','Emma');
SELECT
e.c7 AS CustomerID,
c.CustomerName,
e.c8 AS Country,
e.c4 AS Quantity
FROM data e
INNER JOIN customers c
ON e.c7 = c.CustomerID;
SELECT
e.c7 AS CustomerID,
c.CustomerName,
e.c8 AS Country
FROM data e
LEFT JOIN customers c
ON e.c7 = c.CustomerID;
SELECT
e.c7 AS CustomerID,
c.CustomerName,
e.c8 AS Country
FROM customers c
LEFT JOIN data e
ON c.CustomerID = e.c7;
CREATE INDEX idx_country
ON data(c8);
PRAGMA index_list('data');
