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

select *from Address_Book_Table;

--UC4
Update Address_Book_Table
set Email='rahulgupta23@gmail.com'
where FirstName='Rahul'

Update Address_Book_Table
set Address='RudraTower'
where FirstName='Karishma' and LastName='Sharma';

--UC-5
delete 
from Address_Book_Table
where FirstName='Rahul' and LastName='Gupta'

--UC-6
select *from Address_Book_Table;

select * from Address_Book_Table
where City='Ramnagar' or State='Uttarakhand'

---UC-7
Insert into Address_Book_Table(FirstName,LastName,Address,City,State,zip,PhoneNumber,Email) 
values('Karishma','Sharma','RudraTower','Haldwani','Uttarakhand',263139,9897058465,'karishmasharma@gmail.com')
select Count(*),state,City
from Address_Book_Table
Group by state,City

--UC-8
select *from Address_Book_Table
where City='Haldwani'
order by FirstName,LastName;

--UC-9
alter table Address_Book_Table
add AddressBookName varchar(100),
Type varchar(100)

--UC-10
create table TypesOfContacts
(
typeid int primary key ,
typename varchar(50) not null);
insert into Typesofcontacts
values
(1,'Family'),
(2,'Friends'),
(3,'Business');
alter table Address_BooK_Table
add contactid int primary key identity(1,1);

select *from Address_Book_Table;

create table AddressBookNames
(addressBookId int primary key identity(1,1),
addressBookName varchar(50) not null );
insert into AddressBooknames values ('A'),('R'),('K');
select * from AddressBookNames;

-- UC-13
select FirstName,LastName,city from Address_Book_Table
where FirstName='Rahul';