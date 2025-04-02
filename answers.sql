-- Question 1 Achieving 1NF (First Normal Form) 🛠️

CREATE TABLE ProductDetail_1NF(
    OrderID INT,
    CustomerName VARCHAR(255),
    Products VARCHAR(255)
);

INSERT INTO ProductDetail_1NF(
    OrderID,
    CustomerName,
    Products
) VALUES(
    (101, 'John Doe', 'laptop'),
    (101, 'John Doe' 'mouse'),
    (102, 'Jane Smith' 'tablet'),
    (102, 'Jane Smith' 'keyboard'),
    (102, 'Jane Smith' 'mouse'),
    (103, 'Emily Clark' 'phone')
);

SELECT * FROM ProductDetail_1NF;


--### Question 2 Achieving 2NF (Second Normal Form) 🧩

CREATE TABLE Orders(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

CREATE TABLE OrderDetails(
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY(OrderID, Product),
    FOREIGN KEY(OrderID) REFERENCE OrderID
);

INSERT INTO Orders(
    OrderID, CustomerName
)VALUES(
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark')
);

INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);