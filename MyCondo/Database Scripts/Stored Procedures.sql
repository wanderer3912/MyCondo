USE [Mycondo]
GO

DROP PROCEDURE DisplayServiceRequested; 
GO
DROP PROCEDURE InsertComplaint;
GO
DROP PROCEDURE InsertUserUnit;
GO
DROP PROCEDURE InsertUser;  
GO
DROP PROCEDURE InsertLogin;  
GO
DROP PROCEDURE InsertNews;
GO
DROP PROCEDURE DisplayResidents;
GO
DROP PROCEDURE InsertBooking;
GO
DROP PROCEDURE SelectBookingstatus;
GO 
DROP PROCEDURE SelectBookingsList;
GO 
DROP PROCEDURE SelectShortBookingsDisplay;
GO 
DROP PROCEDURE InsertPayment;
GO
DROP PROCEDURE SelectResidentBookingsList;
Go
--******************************************insert User
CREATE PROCEDURE InsertUser
(
@FirstName	NVARCHAR (50), 
@LastName	NVARCHAR (50), 
@Email		NVARCHAR (50), 
@PhoneNumber	NVARCHAR (50),
@UserGroup      NVARCHAR (50), 
@Address		NVARCHAR (MAX)
)
AS
INSERT INTO Users(FirstName,LastName,Email,PhoneNumber,UserGroup,Address)
			VALUES(@FirstName,@LastName,@Email,@PhoneNumber,@UserGroup,@Address);
GO
--*******************************************Insert Login
CREATE PROCEDURE InsertLogin
(
  @Username    NVARCHAR (50),
  @Password    NVARCHAR (50),
  @AccountType CHAR (5)     ,
  @UserId	   INT          
)
AS
INSERT INTO Login(Username,Password,AccountType,UserId)
			VALUES(@Username,@Password,@AccountType,@UserId);
GO
--*******************************************insert news feed
CREATE PROCEDURE InsertNews
(
  @Title   NVARCHAR (50),
  @Description NVARCHAR (MAX),
  @ExpiryDate   DATETIME,
  @Priority    NVARCHAR (50),
  @GroupName    NVARCHAR (50) 
)
AS
INSERT INTO Newsfeed(Title,Description,ExpiryDate,Priority,GroupName)
			VALUES(@Title,@Description,@ExpiryDate,@Priority,@GroupName);
GO
--*******************************************Select list of users in textbox

CREATE PROCEDURE DisplayResidents 
As
SELECT  UserId , CONCAT(FirstName, ',', LastName,' ( ',UnitNumber, ' )') AS Residents
FROM Users;
GO

--*******************************************Select list of Service requested in textbox

CREATE PROCEDURE DisplayServiceRequested 
As
SELECT  RequestId , CONCAT(Subject) AS Services
FROM ServiceRequest;
GO

--*******************************************insert new booking
CREATE PROCEDURE InsertBooking
(         
@BookingType        NVARCHAR (50), 
@StartDate         DATETIME,      
@EndDate           DATETIME ,     
@BookingDescription NVARCHAR (MAX),
@UserId             INT           
)
AS
INSERT INTO Booking (BookingType,StartDate,EndDate,BookingDescription,UserId)
			VALUES(@BookingType,@StartDate,@EndDate,@BookingDescription,@UserId);
GO
--*******************************************insert Payment
CREATE PROCEDURE InsertPayment
(
@Amount        DECIMAL (18, 2),
@PayerId       INT,
@ServiceName   NVARCHAR (50)
)
AS
INSERT INTO Payment (Amount,PayerId,ServiceName)
			VALUES(@Amount,@PayerId,@ServiceName);
GO
--*******************************************select booking status
CREATE PROCEDURE SelectBookingstatus
As
select Status from BookingsStatus;
Go
--*******************************************select booking list
CREATE PROCEDURE SelectBookingsList
As
SELECT  CONCAT(FirstName, ',', LastName,' ( ',UnitNumber, ' )') AS Name,BookingId,
			BookingType, StartDate, EndDate, BookingDescription, BookingStatus
			FROM Booking INNER JOIN Users ON Booking.UserId=Users.UserId;   
Go
--*******************************************select specific booking
CREATE PROCEDURE SelectResidentBookingsList
(
@UserId      INT
)
As
SELECT  BookingId,BookingType, StartDate, EndDate, BookingDescription, BookingStatus
			FROM Booking where Booking.UserId=UserId;   
Go
--*******************************************Display short booking form
CREATE PROCEDURE SelectShortBookingsDisplay
As
SELECT  CONCAT(FirstName, ',', LastName,' ( ',UnitNumber, ' )') AS Name,BookingId,
			BookingType, Convert(varchar(20), StartDate, 106) As StartDate, BookingStatus
			FROM Booking INNER JOIN Users ON Booking.UserId=Users.UserId;   
Go
--*************************************************
CREATE PROCEDURE InsertComplaint
(         
@ReporterName        NVARCHAR (50), 
@Title				NVARCHAR (50),      
@ComplaintMessage      NVARCHAR (MAX),     
@Date				DATETIME          
)
AS
INSERT INTO Complaint (ReporterName,Title,ComplaintMessage,Date)
			VALUES(@ReporterName,@Title,@ComplaintMessage,@Date);
Go


--******************************************Insert User to Unit
CREATE PROCEDURE InsertUserUnit
(
@FirstName	NVARCHAR (50), 
@LastName	NVARCHAR (50), 
@Email		NVARCHAR (50), 
@PhoneNumber	NVARCHAR (50),
@UnitNumber		INT,
@UserGroup      NVARCHAR (50), 
@Address		NVARCHAR (MAX)
)
AS
INSERT INTO Users(FirstName,LastName,Email,PhoneNumber,UnitNumber,UserGroup,Address)
			VALUES(@FirstName,@LastName,@Email,@PhoneNumber,@UnitNumber,@UserGroup,@Address);
GO
--*******************************************Select list of Service requested in textbox
CREATE PROCEDURE DisplayServiceRequested 
As
SELECT  RequestId , Subject AS Services
FROM ServiceRequest;
GO






