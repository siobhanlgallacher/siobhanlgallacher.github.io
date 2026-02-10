BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Customer" (
	"CustomerID"	TEXT,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Location"	TEXT,
	"field5"	TEXT,
	"field6"	TEXT,
	"field7"	TEXT
);
CREATE TABLE IF NOT EXISTS "Product" (
	"CustomerID"	TEXT,
	"ProductCategory"	TEXT,
	"PurchaseAmount"	REAL,
	"PaymentMethod"	TEXT,
	"PurchaseDate"	TEXT,
	"DeviceUsed"	TEXT,
	"ReturningCustomer"	TEXT
);
CREATE TABLE IF NOT EXISTS "Analytics" (
	"CustomerID"	INTEGER,
	"Age"	INTEGER,
	"Gender"	VARCHAR,
	"Location"	VARCHAR,
	"ProductCategory"	VARCHAR,
	"DeviceUsed"	VARCHAR,
	"PurchaseAmount"	VARCHAR,
	"PurchaseDate"	INTEGER,
	"ReturningCustomer"	VARCHAR,
	"PaymentMethod"	VARCHAR
);
CREATE VIEW CountryAnalytics as 
select location as country,
avg (PurchaseAmount) as AveragePurchasebyCountry,
sum (PurchaseAmount) as TotalPurchasebyCountry,
avg (age) as AverageAge_Country,
COUNT(CASE WHEN ReturningCustomer = "Yes" THEN 1 END) AS ReturningCustomer_Country
from Analytics
group by location;
CREATE VIEW Product_Analytics as
select 
ProductCategory,
avg(PurchaseAmount)as AveragePurchase_Product,
avg(age)as AverageAge_Product,
sum(PurchaseAmount)as TotalPurchase_Product,
Count(case when ReturningCustomer = "Yes" THEN 1 END) AS ReturningCustomer_Product,
count(case when Gender="Female" then 1 end) as FemaleCustomers_Category,
count(case when Gender="Male" then 1 end) as MaleCustomers_Category
From Analytics
group by ProductCategory;
CREATE VIEW Country_Product_Analytics as
Select 
Location as country, ProductCategory,
sum(PurchaseAmount) as TotalPurchase_Product_Country
from Analytics
group by Location, ProductCategory;
CREATE VIEW Payment_DeviceUsed_Analytics as
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
group by Location;
CREATE VIEW TotalCustomers as
select 
Location as Country,
count (CustomerID) as Total_Customers,
count(case when Gender="Female" then 1 end) as Total_FemaleCustomers,
count(case when Gender="Male" then 1 end) as Total_MaleCustomers
from Analytics
group by Location;
COMMIT;
