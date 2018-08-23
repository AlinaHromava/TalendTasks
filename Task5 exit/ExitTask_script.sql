create user sa_src
identified by 1234
default tablespace users
quota unlimited on users
temporary tablespace temp
profile default;

grant connect, resource to sa_src;

create sequence seq_dim_cust
start with     1
increment by   1
nocache 
nocycle;

create sequence seq_dim_prod
start with     1
increment by   1
nocache 
nocycle;

create table FilenamesDB
(
DBfilename varchar2(150) 
);

create table CLS_Customers 
(
Cust_dim_id number,
ID number (38,0),
Name varchar2 (50),
Username varchar2 (50),
Email varchar2 (50),
DateOfBirth date,
StreetAddress varchar2 (50),
City varchar2 (50),
Country varchar2 (50),
Zip varchar2 (6),
State varchar2 (2),
Phone varchar2 (14)
);

create table DIM_Customers 
(
Cust_dim_id number,
ID number (38,0),
Name varchar2 (50),
Username varchar2 (50),
Email varchar2 (50),
DateOfBirth date,
StreetAddress varchar2 (50),
City varchar2 (50),
Country varchar2 (50),
Zip varchar2 (6),
State varchar2 (2),
Phone varchar2 (14)
);

create table DIM_Products
(
Product_dim_id number primary key,
Product_ID number (38,0),
ProductName varchar2(100),
CompanyName varchar2(50),
Price float,
WarehouseLocationState varchar2(2)
);

create table CLS_Products
(
Product_dim_id number,
Product_ID number (38,0),
ProductName varchar2(100),
CompanyName varchar2(50),
Price float,
WarehouseLocationState varchar2(2)
);

create table DIM_Cards
(
Card_dim_id number primary key,
CreditCard varchar2(100),
CreditCardNumber varchar2(100)
);

create table CLS_Card
(
Card_dim_id number,
CreditCard varchar2(100),
CreditCardNumber varchar2(100)
);


create table CLS_Purchases
(
PaymentID number,
CustomerID number,
ProductID number,
TransactionDate date,
CreditCardNumber varchar2(100),
isInterState varchar2(1)
);


create table FACT_Purchases
(
PaymentID number,
CustomerID number,
ProductID number,
TransactionDate date,
CreditCardNumber varchar2(100),
isInterState varchar2(1)
);


/*truncate table Purchases;
truncate table Cards;
truncate table FilenamesDB;

truncate table card;
truncate table cls_card;
truncate table cls_customers;
truncate table cls_products;
truncate table customers;
truncate table products;
truncate table purchases;
truncate table DIM_Customers;
truncate table DIM_Products;
truncate table DIM_Cards;
truncate table FACT_Purchases;*/