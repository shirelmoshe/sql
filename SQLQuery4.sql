--The list of products
select * from Products

--The names of the products and their prices
select ProductName, UnitPrice from Products

--The product names, prices and category number for the products that cost more than 50 dollars
select ProductName, UnitPrice,CategoryID from Products where UnitPrice > 50

--The product names, prices and category number for the products that cost more than 50 dollars and not less than 40 dollars
select ProductName, UnitPrice,CategoryID from Products where UnitPrice < 50 and UnitPrice > 40

--The product names, prices and category number for the products that cost more than 50 dollars for category 1 or category 2
select ProductName, UnitPrice,CategoryID from Products where CategoryID = 1 or CategoryID = 2

--List of suppliers
select * from Suppliers


--targil 4


select  Products.ProductName, Products.SupplierID,Products.ProductID,Suppliers.CompanyName,Suppliers.SupplierID from Products INNER JOIN Suppliers  ON Products.SupplierID =Suppliers.SupplierID;
select ContactName,SupplierID
from Suppliers
WHERE SupplierID>10;

select Suppliers.CompanyName,Suppliers.SupplierID
from Suppliers
WHERE SupplierID>10;

select Suppliers.ContactName,Products.ProductName
from Suppliers
INNER JOIN Products ON Products.SupplierID =Suppliers.SupplierID;

select Suppliers.ContactName,Products.ProductName
from Suppliers
INNER JOIN Products ON Products.SupplierID =Suppliers.SupplierID
where Country='USA' ;

select Suppliers.ContactName,Products.ProductName
from Suppliers
INNER JOIN Products ON Products.SupplierID =Suppliers.SupplierID
where Country !='Germany' ;

select Suppliers.ContactName,Suppliers.HomePage,Products.ProductName
from Suppliers
INNER JOIN Products ON Products.SupplierID =Suppliers.SupplierID
where not (Suppliers.HomePage is Null) ;

select * from Orders TBL1 inner join [Order Details] TBL2 on TBL1.OrderID = TBL2.OrderID
select * from Employees TBL1 inner join EmployeeTerritories TBL2 on TBL1.EmployeeID = TBL2.EmployeeID

select Products.ProductID,[Order Details].ProductID FROM[Order Details]
INNER JOIN Products ON Products.ProductID =[Order Details].ProductID 

select OrderID, OrderDate FROM Orders WHERE OrderID=10408;

select Orders.OrderID,Products.ProductName  FROM[Order Details]
 JOIN Orders ON Orders.OrderID =[Order Details].OrderID 
JOIN Products
 ON Products.ProductID =[Order Details].ProductID 
 WHERE Orders.OrderID=10408;



 select * from [Order Details]
   select * from Products
 select * from  Orders
  select * from  Suppliers
  select * from [Order Details]





 --Q1
 create table newTable (itemNumber int not null,itamName nvarchar(max) not null)
insert into newTable(itemNumber,itamName)select ShipperID,CompanyName from Shippers
select top 5* from newTable
drop table newTable

--Q2
select distinct City into Order2 from Suppliers where (Upper(City) not like 'e%') and (Upper(City) not like '%e%') and ( Upper(City) not like '%e')
drop table Order2
select * from Order2

--Q3
select  CustomerId,OrderId into OrderA from Orders where (Upper(CustomerId) not like 'a%') and (Upper(CustomerId) not like '%a%') and ( Upper(CustomerId) not like '%a')
select * from OrderA

--Q4

select * from Products tbl1 left outer join  Suppliers tbl2 on tbl1.SupplierID= tbl2.SupplierID left outer join Customers tbl3 on tbl3.City=tbl2.City where ProductName like 'L%'
 







select Suppliers.ContactName,Products.ProductName
from Suppliers
INNER JOIN Products ON Products.SupplierID =Suppliers.SupplierID
where Country !='Germany' ;


SELECT * FROM [Order Details];
select * from Suppliers;
select * from Products;
SELECT * FROM Orders;













