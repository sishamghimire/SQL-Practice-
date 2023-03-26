
CREATE Table Citizen(
	ID int primary key identity(1,1),
	FirstName varchar(20) NOT NULL,
	LastName varchar(20) NOT NULL,
	Gender varchar(6),
	CitizenNum varchar(20),
	DOB DATE,
	Fathername varchar(20) ,
	Address varchar(20),
	IssueDate date,
	WardNum varchar(20)
	
	)
	
