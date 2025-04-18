CREATE DATABASE CS4347Project;
USE CS4347Project;

CREATE TABLE Suppliers (
Supplier_id INT PRIMARY KEY,
Name VARCHAR(50),
Email VARCHAR(50),
Street VARCHAR(50),
Zipcode VARCHAR(50),
City VARCHAR(50)
);

CREATE TABLE Products (
Product_id INT PRIMARY KEY,
Name VARCHAR(50),
Description VARCHAR(50),
Price DECIMAL(10,2),
FOREIGN KEY (Employee_id) REFERENCES Employeee(Employee_id)
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
Apartment_Number INT(50)
);

CREATE TABLE Orders (
Total_Cost DECIMAL(10,2),
Total_Quantity INT(50),
Order_Date_Time DATETIME,
PRIMARY KEY (Order_id, Customer_id),
FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
FOREIGN KEY (Employee_id) REFERENCES Employees(Employee_id)
);

CREATE TABLE Style (
PRIMARY KEY (Style_id, Product_Id),
FOREIGN KEY (Product_Id) REFERENCES Products(Product_Id),
Style_name VARCHAR(50)
);

CREATE TABLE Employees (
Employee_id INT PRIMARY KEY,
Name VARCHAR(50),
Email VARCHAR(50),
Salary DECIMAL(10,2),
Role VARCHAR(50),
Zip_Code INT(50),
Street VARCHAR(50),
City VARCHAR(50)
);

CREATE TABLE Supplies (
PRIMARY KEY (Supplier_id, Product_Id),
FOREIGN KEY (Supplier_id) REFERENCES Suppliers(Supplier_id),
FOREIGN KEY (Product_Id) REFERENCES Products(Product_Id)
);

CREATE TABLE Presented_In (
PRIMARY KEY (Collection_Id, Product_Id),
FOREIGN KEY (Collection_Id) REFERENCES Collections(Collection_Id),
FOREIGN KEY (Product_Id) REFERENCES Products(Product_Id)
);









