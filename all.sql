CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    Age INT,
    City VARCHAR(50)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(50),
    Price DECIMAL(10, 2),
    Category VARCHAR(50),
    Stock INT
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers VALUES
(1, 'Alice', 'alice@example.com', 30, 'New York'),
(2, 'Bob', 'bob@example.com', 25, 'Los Angeles'),
(3, 'Charlie', 'charlie@example.com', 35, 'Chicago');

INSERT INTO Products VALUES
(1, 'Smartphone', 699.99, 'Electronics', 50),
(2, 'Laptop', 999.99, 'Electronics', 30),
(3, 'Headphones', 199.99, 'Accessories', 100),
(4, 'Camera', 1299.99, 'Electronics', 20);

INSERT INTO Orders VALUES
(1, 1, 1, 2, '2024-11-01'),
(2, 2, 3, 1, '2024-11-02'),
(3, 1, 4, 1, '2024-11-03'),
(4, 3, 2, 1, '2024-11-03');

SELECT * FROM Products WHERE Price > 500;
SELECT * FROM Customers WHERE (City = 'New York' OR City = 'Chicago') AND Age > 30;
SELECT * FROM Products WHERE Price BETWEEN 200 AND 1000;
SELECT * FROM Orders WHERE OrderDate IN ('2024-11-01', '2024-11-03');
