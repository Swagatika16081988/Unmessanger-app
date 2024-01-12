CREATE DATABASE ORG;
USE ORG;
DROP DATABASE ORG;
DROP TABLE PRODUCTS;



CREATE TABLE CUSTOMERS
   (	CUSTOMERID INT PRIMARY KEY, 
		NAME VARCHAR(255), 
		EMAIL VARCHAR(255),
		JOINDATE DATE
   ) ;
   
   CREATE TABLE PRODUCTS
   (	PRODUCTID INT PRIMARY KEY, 
		NAME VARCHAR(255), 
		CATEGORY VARCHAR(255),
		PRICE DECIMAL(10,2)
   ) ;
   
   CREATE TABLE ORDERS
   (	ORDERID INT PRIMARY KEY, 
		CUSTOMERID INT,
		ORDERDATE DATE,
        TOTALAMOUNT DECIMAL(10,2),
        FOREIGN KEY(CUSTOMERID) REFERENCES CUSTOMERS(CUSTOMERID)
	) ;
    
    CREATE TABLE ORDERDETAILS
   (	ORDERDETAILID INT PRIMARY KEY, 
		ORDERID INT,
        PRODUCTID INT,
        QUANTITY INT,
		PRICEPERUNIT DECIMAL(10,2),
		FOREIGN KEY(ORDERID) REFERENCES ORDERS(ORDERID),
        FOREIGN KEY(PRODUCTID) REFERENCES PRODUCTS(PRODUCTID)
	) ;
    
    
INSERT INTO Customers (CustomerID, Name, Email, JoinDate) VALUES 
(1, 'John Doe', 'johndoe@gmail.com', '2020-01-10'),
(2, 'Jane Smith', 'janesmith@yahoo.com', '2020-01-15'),
(3, 'Jennifer Wilson','jen_w@gmail.com', '2020-06-01'),
(4, 'Jackson Davis','dave_jack@gmail.com', '2020-01-12'),
(5, 'Komal Choudhary','ch_komal@yahoo.co.IN', '2020-04-14'),
(6, 'Anita Goswami','agoswami@gmail.com', '2020-08-16'),
(7, 'Ashwathi Bhatt','ash_bhat@yahoo.co.IN', '2020-09-30'),
(8, 'Wilfred Jean','w_jean@gmail.com', '2020-10-05'),
(9, 'Arul Kumar.T','arulkumar@gmail.com', '2020-11-07'),
(10, 'Alice Johnson', 'alicejohnson@example.com', '2020-03-05');


INSERT INTO Products (ProductID, Name, Category, Price) VALUES 
(101, 'Acer Laptop', 'Electronics', 29999.99),
(102, 'Samsung Smartphone', 'Electronics', 14999.79),
(103, 'Harry Potter', 'Book', 250.00),
(104, 'Tom Clancy''s Ghost Recon: Future Soldier', 'PC Game', 1499.99),
(105, 'Mi Smartphone', 'Electronics', 9999.29),
(106, 'Uruli', 'Home Decor', 501.99),
(107, 'Cricket Set for Boys', 'Games', 1299.00),
(108, 'Allen Solly Blue Jeans', 'Dress', 2499.99),
(109, 'Biba Lehenga Choli', 'Dress', 3499.79),
(110, 'Desk Lamp', 'Home Decor', 299.99);


INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(1, 9, '2020-02-15', 59999.98),
(2, 2, '2020-02-17', 14999.79),
(3, 4, '2020-03-27', 2500.00),
(4, 6, '2020-05-16', 4499.97),
(5, 8, '2020-07-9', 9999.29),
(6, 10, '2020-09-13', 3011.94),
(7, 3, '2020-10-14', 2598.00),
(8, 1, '2020-11-11', 12499.99),
(9, 7, '2020-12-5', 3499.79),
(10, 5, '2020-03-21', 2399.92);



INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity,PricePerUnit) VALUES 
(1001, 1, 101, 2, 29999.99),
(1002, 2, 102, 1, 14999.79),
(1003, 3, 103, 10, 250.00),
(1004, 4, 104, 3, 1499.99),
(1005, 5, 105, 1, 9999.29),
(1006, 6, 106, 6, 501.99),
(1007, 7, 107, 2, 1299.00),
(1008, 8, 108, 5, 2499.99),
(1009, 9, 109, 1, 3499.79),
(1010, 10, 110, 8, 2399.92);






    
   
   