--creating the table
Create table Drinks(
	ID INT Primary key Identity(1,1),
	Name Varchar(200) NOT NULL,
	Category  Varchar(200)NOT NULL,
	ServeDate Date ,
	--ISBN  Varchar(200),
	Price int
)
--inserting the value
INSERT INTO Drinks(
	Name, Category,ServeDate,Price)
VALUES('Lassi','Juice','02/01/2021',60)

--to 
Select Name, Sum(Price) Price
from Drinks 
where (Name like'A%' or Name like 'R%' or Name like 'V')
Group by Name
having  Sum(price)>10000
--to see what is in the table
SELECT BOOkNAME, Author FROM Libaray
where Author like's%'or Author like 'a%'
--to remove repeated data
Select Name
from Drinks
Group by Name

-- to see total price of each drink and the year they were served and sort themby last year.
Select Name,Sum(price), Year(ServeDate)
from Drinks
Group by Name,
Year(ServeDate)
Order by YEAR(ServeDate) desc
--to see years
Select  distinct year(publishedDate) from Libaray
--to see books & authors, published in 2015, 2018,2020
Select BookName, Author
from Libaray
Where YEAR(PublishedDate) in(2015,2018,2020)
--to update the unitprice and boughtDate from row 1
UPDATE Product
set UnitPrice =85000,BoughtDate= GETDATE()
where ID =1
--deleting row one
delete Product
 where ID=1
 --taking only one which was bought leastest
 select top 1 *from Product
 order by BoughtDate desc 
 --taking only brand which starts from s
 select *from Product
 where Brand like's%'
 --making price double
 select Brand, Model,UnitPrice*2,Boughtdate
	from Product
	--taking 10% tax
	select Brand, Model,UnitPrice*0.1 tax , Boughtdate
	from Product
	--taking 10%and adding unitprice and showing expensive ones 
	select Brand, Model,UnitPrice+Unitprice*0.1 NewPrice, Boughtdate from Product
	order by UnitPrice desc
	--

	select *from Hospital
	where name like 's%'
	order by name desc

	create table Student (
		ID int primary key not null,
		Name varchar not null,
		Address varchar not null,
		Email varchar,
		);
Insert into Student (Name, Address,Email  )
	Values ('Mina','Kathmandu','minaghimire@gmail.com')
Insert into Student (Name, Address, Email  )
	Values ('Hira','Kathmandu','hira@gmail.com')
	Insert into Student (Name, Address,Email  )
	Values ('Ram','Bhaktapur','ram@gmail.com')
Insert into Student (Name, Address,Email  )
	Values ('Shyam','Dolpa','shyam@gmail.com')
Insert into Student (Name, Address,Email  )
	Values ('Sita','Illam','sita@gmail.com')


		
		
	Create Table Ingredients(
Id Int Primary Key Identity(1,1),
DrinkID Int Foreign Key References Drinks(ID),
Ingredient Varchar(100),
Volume decimal(20,2),
Weight Decimal(20,2)
);

Insert into Ingredients(DrinkID,Ingredient, Weight )
	Values (3,'Sugar', 2)
	--select 
	Select i.Ingredient, ISNull  (i.Volume,i.Weight)Amount from  Ingredients i
	inner join Drinks d
	on d.id= i.DrinkID

	Select 
Insert into Tuitionfee(StudentID, Amount  )
	Values (2,10000)
Insert into Tuitionfee (StudentID, Amount  )
	Values (3,20000)
Insert into Tuitionfee(StudentID, Amount  )
	Values (4,10000)
Insert into Tuitionfee(StudentID, Amount  )
	Values (5,10000)

		Create table Project(
ID int primary key identity (1,1),
StudentID int foreign key refrence Student(ID),
Project Varchar (200),
Department Varchar (200),
Supervisor Varchar(200),
StartDate Date default getdate(),
EndDate Date
);
Create Procedure GetNumberIfTimedServed
AS
Begin

Select Name, Count(ID)
 from Drinks
 Where YEAR(ServeDate)=2020
 Group by Name
 End