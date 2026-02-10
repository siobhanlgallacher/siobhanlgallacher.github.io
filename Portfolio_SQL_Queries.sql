select age, gender, location 
from Customer;

-- Exploring Customer Age Ranges
select count (distinct age)
from customer;

select avg (Age)
from customer; 

-- Number of Male and Female Customers
select count (gender)
from Customer
where gender = "Female";

select count (gender)
from Customer
where gender = "Male";

-- Minumum and Max ages by Gender
select min (age)
from Customer;

select min (age)
from Customer
where Gender="Male";

select min (age)
from Customer
where Gender="Female";

select max (age)
from Customer
where Gender="Male";

select max (age)
from Customer
where Gender="Female";

-- Average Age by Gender
select avg (age)
from Customer
where gender = "Female";

select avg (age)
from Customer
where gender = "Male";

-- Exploring Customer Location Data
select distinct location
from customer;

select count (location)
from customer 
where location = "Germany"

select count (location)
from customer 
where location = "Canada"

select count (location)
from customer 
where location = "India"

select count (location)
from customer 
where location = "Australia"

select count (location)
from customer 
where location = "UK"

select count (location)
from customer 
where location = "USA"

-- Average age by location
select avg (age)
from Customer
where location = "Germany"

select avg (age)
from Customer
where location = "Canada"

select avg (age)
from Customer
where location = "India"

select avg (age)
from Customer
where location = "Australia"

select avg (age)
from Customer
where location = "UK"

select avg (age)
from Customer
where location = "USA"

-- Exploring Purchase data
select ProductCategory, PurchaseAmount, PaymentMethod, Deviceused
from product;

select avg (PurchaseAmount)
from Product
where ProductCategory="Books";

select avg (PurchaseAmount)
from Product
where ProductCategory="Sports";

select avg (PurchaseAmount)
from Product
where ProductCategory="Clothing";

select avg (PurchaseAmount)
from Product
where ProductCategory="Home";

select avg (PurchaseAmount)
from Product
where ProductCategory="Electronics";

-- Average Purchase Amount by Payment Method

select avg (PurchaseAmount)
from product 
where PaymentMethod="Cash";

select avg (PurchaseAmount)
from product 
where PaymentMethod="PayPal";

select avg (PurchaseAmount)
from product 
where PaymentMethod="Debit Card";

select avg (PurchaseAmount)
from product 
where PaymentMethod="Credit Card";

-- Number of Purchases Made by Payment Method
select count (PaymentMethod)
from Product
where PaymentMethod="Credit Card";

select count (PaymentMethod)
from Product
where PaymentMethod="Debit Card";

select count (PaymentMethod)
from Product
where PaymentMethod="Cash";

select count (PaymentMethod)
from Product
where PaymentMethod="PayPal";

select count (PaymentMethod)
from Product
where PaymentMethod="Credit Card"

select count (PaymentMethod)
from Product
where PaymentMethod="Debit Card";

-- Exploring Device Used and Payment Method
select DeviceUsed 
from Product;

select count (DeviceUsed)
from product 
where Deviceused="Desktop"
And PaymentMethod="Cash"

select count (DeviceUsed)
from product 
where Deviceused="Desktop"
And PaymentMethod="Debit Card"

select count (DeviceUsed)
from product 
where Deviceused="Desktop"
And PaymentMethod="Credit Card"

select count (DeviceUsed)
from product 
where Deviceused="Desktop"
And PaymentMethod="Paypal"

select count (DeviceUsed)
from product 
where Deviceused="Mobile"
And PaymentMethod="Cash"

select count (DeviceUsed)
from product 
where Deviceused="Mobile"
And PaymentMethod="Credit Card"

select count (DeviceUsed)
from product 
where Deviceused="Mobile"
And PaymentMethod="Debit Card"

select count (DeviceUsed)
from product 
where Deviceused="Mobile"
And PaymentMethod="PayPal"

select count (DeviceUsed)
from product 
where Deviceused="Tablet"
And PaymentMethod="Cash"

select count (DeviceUsed)
from product 
where Deviceused="Tablet"
And PaymentMethod="PayPal"

select count (DeviceUsed)
from product 
where Deviceused="Tablet"
And PaymentMethod="Credit Card"

select count (DeviceUsed)
from product 
where Deviceused="Tablet"
And PaymentMethod="Debit Card"

-- Join Tables 
SELECT Customer.CustomerID, Age, Gender, Location, 
       Product.ProductCategory, Product.DeviceUsed, Product.PurchaseAmount, 
       Product.PurchaseDate, Product.ReturningCustomer, Product.PaymentMethod
FROM Customer
LEFT JOIN Product
ON Customer.CustomerID = Product.CustomerID

UNION ALL

SELECT Product.CustomerID, NULL AS Age, NULL AS Gender, NULL AS Location, 
       Product.ProductCategory, Product.DeviceUsed, Product.PurchaseAmount, 
       Product.PurchaseDate, Product.ReturningCustomer, Product.PaymentMethod
FROM Product
LEFT JOIN Customer
ON Customer.CustomerID = Product.CustomerID
WHERE Customer.CustomerID IS NULL;

-- Analyse Average and Total Purchase Amount by Country
SELECT AVG(PurchaseAmount)
FROM Product
JOIN Customer ON customer.CustomerID = product.CustomerID
WHERE Location = "Germany";

SELECT AVG(PurchaseAmount)
FROM Product
JOIN Customer ON customer.CustomerID = product.CustomerID
WHERE Location = "USA";

SELECT AVG(PurchaseAmount)
FROM Product
JOIN Customer ON customer.CustomerID = product.CustomerID
WHERE Location = "UK";

SELECT AVG(PurchaseAmount)
FROM Product
JOIN Customer ON customer.CustomerID = product.CustomerID
WHERE Location = "India";

SELECT AVG(PurchaseAmount)
FROM Product
JOIN Customer ON customer.CustomerID = product.CustomerID
WHERE Location = "Canada";

SELECT AVG(PurchaseAmount)
FROM Product
JOIN Customer ON customer.CustomerID = product.CustomerID
WHERE Location = "Australia";

SELECT sum(PurchaseAmount)
FROM Product
JOIN Customer ON customer.CustomerID = product.CustomerID
WHERE Location = "USA";

SELECT sum(PurchaseAmount)
FROM Product
JOIN Customer ON customer.CustomerID = product.CustomerID
WHERE Location = "UK";

SELECT sum(PurchaseAmount)
FROM Product
JOIN Customer ON customer.CustomerID = product.CustomerID
WHERE Location = "Germany";

SELECT sum(PurchaseAmount)
FROM Product
JOIN Customer ON customer.CustomerID = product.CustomerID
WHERE Location = "Australia";

SELECT sum(PurchaseAmount)
FROM Product
JOIN Customer ON customer.CustomerID = product.CustomerID
WHERE Location = "India";

-- Analyse Total Purchase Value by Country per Product Category
-- USA
SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "USA"
AND product.ProductCategory = "Books";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "USA"
AND product.ProductCategory = "Home";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "USA"
AND product.ProductCategory = "Electronics";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "USA"
AND product.ProductCategory = "Sports";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "USA"
AND product.ProductCategory = "Clothing";

-- India
SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "India"
AND product.ProductCategory = "Clothing";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "India"
AND product.ProductCategory = "Books";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "India"
AND product.ProductCategory = "Electronics";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "India"
AND product.ProductCategory = "Home";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "India"
AND product.ProductCategory = "Sports";

-- UK
SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "UK"
AND product.ProductCategory = "Electronics";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "UK"
AND product.ProductCategory = "Home";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "UK"
AND product.ProductCategory = "Sports";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "UK"
AND product.ProductCategory = "Clothing";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "UK"
AND product.ProductCategory = "Books";

-- Australia

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Australia"
AND product.ProductCategory = "Sports";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Australia"
AND product.ProductCategory = "Books";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Australia"
AND product.ProductCategory = "Home";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Australia"
AND product.ProductCategory = "Electronics";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Australia"
AND product.ProductCategory = "Clothing";

-- Germany
SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Germany"
AND product.ProductCategory = "Sports";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Germany"
AND product.ProductCategory = "Books";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Germany"
AND product.ProductCategory = "Clothing";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Germany"
AND product.ProductCategory = "Home";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Germany"
AND product.ProductCategory = "Electronics";

-- Canada
SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Canada"
AND product.ProductCategory = "Electronics";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Canada"
AND product.ProductCategory = "Books";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Canada"
AND product.ProductCategory = "Clothing";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Canada"
AND product.ProductCategory = "Home";

SELECT SUM(PurchaseAmount)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Canada"
AND product.ProductCategory = "Sports";


-- Returning Customers by Product Category
SELECT count (ReturningCustomer)
FROM Product 
WHERE ProductCategory="Books"
and ReturningCustomer="Yes"

SELECT count (ReturningCustomer)
FROM Product 
WHERE ProductCategory="Books"
and ReturningCustomer="No"

SELECT count (ReturningCustomer)
FROM Product 
WHERE ProductCategory="Electronics"
and ReturningCustomer="Yes"

SELECT count (ReturningCustomer)
FROM Product 
WHERE ProductCategory="Electronics"
and ReturningCustomer="No"

SELECT count (ReturningCustomer)
FROM Product 
WHERE ProductCategory="Home"
and ReturningCustomer="Yes"

SELECT count (ReturningCustomer)
FROM Product 
WHERE ProductCategory="Home"
and ReturningCustomer="No"

SELECT count (ReturningCustomer)
FROM Product 
WHERE ProductCategory="Clothing"
and ReturningCustomer="Yes"

SELECT count (ReturningCustomer)
FROM Product 
WHERE ProductCategory="Clothing"
and ReturningCustomer="No"

SELECT count (ReturningCustomer)
FROM Product 
WHERE ProductCategory="Sports"
and ReturningCustomer="Yes"

SELECT count (ReturningCustomer)
FROM Product 
WHERE ProductCategory="Sports"
and ReturningCustomer="No"

-- Explore Returning Customers by Country
SELECT count (ReturningCustomer)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Germany"
AND product.ReturningCustomer="Yes"

SELECT count (ReturningCustomer)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "USA"
AND product.ReturningCustomer="Yes"

SELECT count (ReturningCustomer)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "UK"
AND product.ReturningCustomer="Yes"

SELECT count (ReturningCustomer)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Canada"
AND product.ReturningCustomer="Yes"

SELECT count (ReturningCustomer)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Germany"
AND product.ReturningCustomer="Yes"

SELECT count (ReturningCustomer)
FROM Product 
JOIN Customer ON Product.CustomerID = Customer.CustomerID
WHERE Customer.Location = "Australia"
AND product.ReturningCustomer="Yes"

-- Create a new table for later visualisation
Create table Analytics
(CustomerID INTEGER,
Age INTEGER,
Gender VARCHAR,
Location VARCHAR,
ProductCategory VARCHAR,
DeviceUsed VARCHAR,
PurchaseAmount VARCHAR,
PurchaseDate INTEGER,
ReturningCustomer VARCHAR,
PaymentMethod VARCHAR)

insert into Analytics
SELECT Customer.CustomerID, Age, Gender, Location, 
       Product.ProductCategory, Product.DeviceUsed, Product.PurchaseAmount, 
       Product.PurchaseDate, Product.ReturningCustomer, Product.PaymentMethod
FROM Customer
LEFT JOIN Product
ON Customer.CustomerID = Product.CustomerID

UNION ALL

SELECT Product.CustomerID, NULL AS Age, NULL AS Gender, NULL AS Location, 
       Product.ProductCategory, Product.DeviceUsed, Product.PurchaseAmount, 
       Product.PurchaseDate, Product.ReturningCustomer, Product.PaymentMethod
FROM Product
LEFT JOIN Customer
ON Customer.CustomerID = Product.CustomerID
WHERE Customer.CustomerID IS NULL;

-- Create views

create view CountryAnalytics as 
select location as country,
avg (PurchaseAmount) as AveragePurchasebyCountry,
sum (PurchaseAmount) as TotalPurchasebyCountry,
avg (age) as AverageAge_Country,
COUNT(CASE WHEN ReturningCustomer = "Yes" THEN 1 END) AS ReturningCustomer_Country
from Analytics
group by location

Create view Payment_DeviceUsed_Analytics as
select
Location as Country,
count(case when PaymentMethod="Credit Card" then 1 end) as CreditCardPurchases,
count(case when PaymentMethod = "PayPal" then 1 end) as PayPalPurchases,
count(case when PaymentMethod = "Cash" then 1 end) as CashPurchases,
count(case when PaymentMethod = "Debit Card" then 1 end) as DebitCardPurchases,
count(case when DeviceUsed="Mobile" then 1 end) as MobilePurchases,
count(case when DeviceUsed="Desktop" then 1 end) as DesktopPurchases,
count(case when DeviceUsed="Tablet" then 1 end) as TabletPurchases
from Analytics
group by Location

Create view Product_Analytics as
select 
ProductCategory,
avg(PurchaseAmount)as AveragePurchase_Product,
avg(age)as AverageAge_Product,
sum(PurchaseAmount)as TotalPurchase_Product,
Count(case when ReturningCustomer = "Yes" THEN 1 END) AS ReturningCustomer_Product,
count(case when Gender="Female" then 1 end) as FemaleCustomers_Category,
count(case when Gender="Male" then 1 end) as MaleCustomers_Category
From Analytics
group by ProductCategory

Create view Country_Product_Analytics as
Select 
Location as country, ProductCategory,
sum(PurchaseAmount) as TotalPurchase_Product_Country
from Analytics
group by Location, ProductCategory

create view TotalCustomers as
select 
Location as Country,
count (CustomerID) as Total_Customers,
count(case when Gender="Female" then 1 end) as Total_FemaleCustomers,
count(case when Gender="Male" then 1 end) as Total_MaleCustomers
from Analytics
group by Location