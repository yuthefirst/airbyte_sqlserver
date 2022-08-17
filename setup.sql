CREATE DATABASE Demo_DATABASE;
GO

USE Demo_DATABASE;
GO

CREATE TABLE Inventory (
    ID int,
    ProductName nvarchar(max));
GO

ALTER TABLE Inventory
ADD PRIMARY KEY (ID);
GO

INSERT INTO Inventory VALUES (1, 'banana', 150); INSERT INTO Inventory VALUES (2, 'orange', 154);
GO

CREATE TABLE table_customer(
    customerID INT IDENTITY(1, 1),
    customerName NVARCHAR(100),
    customerAge int CHECK(customerAge > 0)
);
GO

INSERT INTO table_customer(customerName,customerAge) VALUES('John', 30); INSERT INTO table_customer(customerName,customerAge) VALUES('John', 30);
GO

SELECT * FROM Inventory
GO

SELECT * FROM table_customer
GO
