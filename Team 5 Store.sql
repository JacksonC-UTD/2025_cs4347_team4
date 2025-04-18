-- CREATE DATABASE Team5Store;
USE Team5Store;

CREATE TABLE Suppliers (
    Supplier_Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Street VARCHAR(100),
    Zip_Code VARCHAR(10),
    City VARCHAR(50)
);

CREATE TABLE Employees (
    Employee_Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Salary DECIMAL(10,2),
    Role VARCHAR(50),
    Zip_Code VARCHAR(10),
    Street VARCHAR(100),
    City VARCHAR(50)
);

CREATE TABLE Products (
    Product_Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10,2),
    Employee_Id INT,
    FOREIGN KEY (Employee_Id) REFERENCES Employees(Employee_Id)
);

CREATE TABLE Customers (
    Customer_Id INT PRIMARY KEY,
    Email VARCHAR(100),
    Name VARCHAR(100),
    City VARCHAR(50),
    Street VARCHAR(100),
    Zip_Code VARCHAR(10),
    Apartment_Number VARCHAR(20)
);

CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,
    Total_Cost DECIMAL(10,2),
    Total_Quantity INT,
    Order_Date_Time DATETIME,
    Customer_Id INT,
    Employee_Id INT,
    FOREIGN KEY (Customer_Id) REFERENCES Customers(Customer_Id),
    FOREIGN KEY (Employee_Id) REFERENCES Employees(Employee_Id)
);

CREATE TABLE Style (
    Style_Id INT PRIMARY KEY,
    Style_name VARCHAR(100),
    Product_Id INT,
    FOREIGN KEY (Product_Id) REFERENCES Products(Product_Id)
);

CREATE TABLE Collections (
    Collection_Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Discount DECIMAL(5,2)
);

CREATE TABLE Supplies (
    Supplier_Id INT,
    Product_Id INT,
    PRIMARY KEY (Supplier_Id, Product_Id),
    FOREIGN KEY (Supplier_Id) REFERENCES Suppliers(Supplier_Id),
    FOREIGN KEY (Product_Id) REFERENCES Products(Product_Id)
);

CREATE TABLE Presented_in (
    Collection_Id INT,
    Product_Id INT,
    PRIMARY KEY (Collection_Id, Product_Id),
    FOREIGN KEY (Collection_Id) REFERENCES Collections(Collection_Id),
    FOREIGN KEY (Product_Id) REFERENCES Products(Product_Id)
);
