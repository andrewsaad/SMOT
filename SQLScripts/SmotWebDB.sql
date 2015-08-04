Create Table HomeImageSlider
(
	HomeImageSliderID int not null identity(1,1) primary key,			
	
	ImagePath nvarchar(500),
	ImageTitle nvarchar(500),
	ImageDescription nvarchar(500), 
	ImageLink nvarchar (500)
	
)

GO
Create Table Reference
(
ReferenceID int not null identity(1,1) Primary key ,
LogoPath nvarchar(500) , 
LogoLink nvarchar(500) 
)
GO
create table EventType 
(
EventTypeID int not null identity(1,1) primary key ,
EventTypeName nvarchar(500)
)
GO
create table Members 
(
MemberID int not null identity(1,1) primary key ,
MemberName nvarchar (500) ,
MemberTelephone nvarchar(50) ,
MemberEmail nvarchar(500) ,
MemberImagePath nvarchar(500)

)
GO

create table Event
(
EventID int not null identity(1,1) primary key , 
EventTypeID int foreign key references EventType(EventTypeID) ,
MemberID int foreign key references Members(MemberID) , 
EventName nvarchar(500) ,
EventPlace nvarchar (500) ,
EventDate Datetime ,
EventTimeFrom datetime ,
EventTimeTo datetime ,
EventTshirt nvarchar(500),
MainImagePath nvarchar(500)
)
GO
create table EventImage 
(
EventImageID int not null identity(1,1) primary key ,
EventID int foreign key references Event(EventID),
ImagePath nvarchar(500) ,
Description nvarchar(500)
)
create table ContactDetails 
(
ContactDetailsID int not null identity(1,1) primary key ,
Location nvarchar(500),
Email nvarchar(500),
Facebook nvarchar(500) ,
Description nvarchar(500)
)
GO
create Table PageContent 
(
PageID int not null identity(1,1) primary key ,
PageTitle nvarchar(500) ,
PlaceHolder1 nvarchar(500) ,
PlaceHolder2 nvarchar(500) ,
PlaceHolder3 nvarchar(500)
)
GO
create table Career
(
CareerID int not null identity(1,1) primary key ,
Name nvarchar(500),
Email nvarchar(500),
FilePath nvarchar(500),
Description nvarchar(500)
)
GO
create table Evaluations
(
EvaluationID int not null identity(1,1) primary key,
EventID int foreign key references Event(EventID) ,
MemberID int foreign key references Members(MemberID) ,
Organizing int ,
Time DateTime ,
Behaviour int ,

)
GO 
create table Tasks 
(
TaskID int not null identity (1,1) primary key ,
MemberID int foreign key references Members(MemberID),
TaskName nvarchar(500) ,
TaskResult nvarchar(50) ,
Notes nvarchar(500)
)
GO
