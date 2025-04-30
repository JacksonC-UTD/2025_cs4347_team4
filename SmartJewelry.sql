-- CREATE DATABASE CS4347Project;
USE CS4347Project;

CREATE TABLE Suppliers (
    Supplier_id INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(50),
    Street VARCHAR(50),
    Zipcode INT,
    City VARCHAR(50)
);

CREATE TABLE Collections (
    Collection_id INT PRIMARY KEY,
    Name VARCHAR(50),
    Description VARCHAR(50),
    Discount DECIMAL(10,2)
);

CREATE TABLE Customers (
    Customer_id INT PRIMARY KEY,
    Email VARCHAR(50),
    Name VARCHAR(50),
    City VARCHAR(50),
    Street VARCHAR(50),
    Zipcode VARCHAR(50),
    Apartment_Number INT
);

CREATE TABLE Employees (
    Employee_id INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(50),
    Salary DECIMAL(10,2),
    Role VARCHAR(50),
    Zip_Code INT,
    Street VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Products (
    Product_id INT PRIMARY KEY,
    Name VARCHAR(50),
    Description VARCHAR(50),
    Price DECIMAL(10,2),
    Employee_id INT,
    FOREIGN KEY (Employee_id) REFERENCES Employees(Employee_id)
);

CREATE TABLE Orders (
    Order_id INT,
    Customer_id INT,
    Total_Cost DECIMAL(10,2),
    Total_Quantity INT,
    Order_Date_Time DATETIME,
    Employee_id INT,
    PRIMARY KEY (Order_id, Customer_id),
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
    FOREIGN KEY (Employee_id) REFERENCES Employees(Employee_id)
);

CREATE TABLE Style (
    Style_id INT,
    Product_id INT,
    Style_name VARCHAR(50),
    PRIMARY KEY (Style_id, Product_id),
    FOREIGN KEY (Product_id) REFERENCES Products(Product_id)
);

CREATE TABLE Supplies (
    Supplier_id INT,
    Product_id INT,
    PRIMARY KEY (Supplier_id, Product_id),
    FOREIGN KEY (Supplier_id) REFERENCES Suppliers(Supplier_id),
    FOREIGN KEY (Product_id) REFERENCES Products(Product_id)
);

CREATE TABLE Presented_In (
    Collection_id INT,
    Product_id INT,
    PRIMARY KEY (Collection_id, Product_id),
    FOREIGN KEY (Collection_id) REFERENCES Collections(Collection_id),
    FOREIGN KEY (Product_id) REFERENCES Products(Product_id)
);

CREATE TABLE Test_Table(
    Test_id INT PRIMARY KEY,
    Name VARCHAR(50)
);

-- making quries
SHOW TABLES;

INSERT INTO Suppliers
VALUES (1, 'Wali', 'Blah@blah.com','123 RICH DR',75080,'minicity');

INSERT INTO Suppliers
VALUES (2, 'Sarah', 'Blahvlah@blah.com','124 RICH DR',75080,'minicity');

INSERT INTO Suppliers
VALUES (3, 'Jack', 'test@blah.com','125 RICH DR',75080,'minicity');

DELETE FROM Suppliers 
WHERE Supplier_id = 1;

UPDATE Suppliers 
SET City = 'Dallas'
WHERE Supplier_id = 2;

SELECT * FROM Test_Table;

DROP TABLE Test_Table;














