--UC-1
create database AddressBookServices;

--UC-2
create table Address_Book_Table
(FirstName varchar(100),
LastName varchar(100),
Address varchar(250),
City varchar(100),
State varchar(100),
zip BigInt,
PhoneNumber BigInt,
Email varchar(200)
)

--UC-3
Insert into Address_Book_Table(FirstName,LastName,Address,City,State,zip,PhoneNumber,Email) 
values('Anuj','Kumar','Jainagar','Rudrapur','Uttarakhand',263153,9760291927,'anuj.kumarr.97@gmail.com'),
('Rahul','Gupta','Rampur','Ramnagar','Uttarakhand',263141,9759876547,'rahulgupta23@gmail.com'),
('Karishma','Sharma','RudraTower','Haldwani','Uttarakhand',263139,9897058465,'karishmasharma@gmail.com');

