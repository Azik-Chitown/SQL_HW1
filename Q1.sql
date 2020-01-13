drop table Customer;
drop table FullOrder;
drop table Product;
drop table Request;


create table Customer(
CustomerID Number(3)Primary Key,
Name Varchar(25),
Address Varchar(50));

create table FullOrder(
OrderID Number(5)Primary Key,
OrderDate Varchar(10),
CustomerID Number(3),
Foreign Key (CustomerID)
References Customer(CustomerID));

create table Product (
ProductID Number(2)Primary Key,
Description Varchar(28),
Finish Varchar(10),
Price Decimal(5,2)check (price>=0));

create table Request (
OrderID Number(5),
ProductID Number(2),
Quantity Integer check(Quantity>=1 and Quantity<=100),
Primary Key(OrderID, ProductId),
FOREIGN Key(OrderID) references FullOrder(OrderID),
Foreign Key(ProductID)references Product(ProductID));


insert into  Customer values (2,'Caual Furniture','Plano, TX' );
insert into Customer values(6, 'Mountain Gallery', 'Boulder, CO');

insert into FullOrder values(1006,'24-Mar-10', 2);
insert into FullOrder values(1007,'25-Mar-10',6);
insert into FullOrder values(1008,'25-Mar10', 6);
insert into FullOrder values(1009,'26-Mar-10', 2);

insert into Product values(10, 'Writing Desk', 'Oak',425);
insert into Product values (30, 'Dining Table','Ash', 600);
Insert into Product values(40, 'Entertainment Center','Maple', 650);
Insert into Product values(70, 'Childrens Dresser', 'Pine', 300);

insert into Request values(1006,10,4);
insert into Request values(1006,30,2);
insert into Request values(1006,40,1);
insert into Request values(1007,40,3); 
insert into Request values(1007,70,2); 
insert into Request values(1008,70,1);
insert into Request values(1009,10,2);

select* from Customer;
select* from FullOrder;
select* from Product;
select* from Request;













