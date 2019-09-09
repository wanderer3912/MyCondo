USE [Mycondo]
GO

DROP TABLE [dbo].[VehicleDetails];
GO

DROP TABLE [dbo].[Feedback];
GO

DROP TABLE [dbo].[Complaint];
GO

DROP TABLE [dbo].[Units];
GO

DROP TABLE [dbo].[ServiceRequest];
GO

DROP TABLE [dbo].[Payment];
GO

DROP TABLE [dbo].[Messages];
GO

DROP TABLE [dbo].[Login];
GO

DROP TABLE [dbo].[Guest];
GO

DROP TABLE [dbo].[Booking];
GO

DROP TABLE [dbo].[Users];
GO

DROP TABLE [dbo].[UserDetails];
GO

DROP TABLE [dbo].[Newsfeed];
GO

DROP TABLE [dbo].[VisitorType];
GO


DROP TABLE [dbo].[VehicleMake];
GO

DROP TABLE [dbo].[vehicleColor];
GO

DROP TABLE [dbo].[Usergroup];
GO

DROP TABLE [dbo].[serviceType];
GO

DROP TABLE [dbo].[ServiceStatus];
GO

DROP TABLE [dbo].[Provinces];
GO

DROP TABLE [dbo].[Priority];
GO

DROP TABLE [dbo].[PaymentStatus];
GO

DROP TABLE [dbo].[parkingSpot];
GO

DROP TABLE [dbo].[ParkingPeriod];
GO

DROP TABLE [dbo].[occupancy];
GO

DROP TABLE [dbo].[EmergencyContacts];
GO

DROP TABLE [dbo].[BookingType];
GO

DROP TABLE [dbo].[BookingStatus];
GO

DROP TABLE [dbo].[Adress];
GO


DROP TABLE [dbo].[AccountType];
GO


-- ************************************** [dbo].[VisitorType]

CREATE TABLE [dbo].[VisitorType]
(
 [Name]        nvarchar(50) NOT NULL ,
 [Description] nvarchar(50) NULL 
);
GO

-- ************************************** [dbo].[VehicleMake]

CREATE TABLE [dbo].[VehicleMake]
(
 [Make] nvarchar(50) NOT NULL 
);
GO

-- ************************************** [dbo].[vehicleColor]

CREATE TABLE [dbo].[vehicleColor]
(
 [Color] nvarchar(50) NOT NULL
);
GO

-- ************************************** [dbo].[Usergroup]

CREATE TABLE [dbo].[Usergroup]
(
 [GroupName]   nvarchar(50) NOT NULL ,
 [Description] nvarchar(50) NOT NULL 
);
GO

-- ************************************** [dbo].[serviceType]

CREATE TABLE [dbo].[serviceType]
(
 [ServiceName] nvarchar(50) NOT NULL 
);
GO

-- ************************************** [dbo].[ServiceStatus]

CREATE TABLE [dbo].[ServiceStatus]
(
 [Status]      nvarchar(50) NOT NULL ,
 [Description] nvarchar(50) NULL
);
GO

-- ************************************** [dbo].[Provinces]

CREATE TABLE [dbo].[Provinces]
(
 [State] nvarchar(50) NOT NULL
);
GO

-- ************************************** [dbo].[Priority]

CREATE TABLE [dbo].[Priority]
(
 [PriorityName] nvarchar(50) NOT NULL ,
 [Description]  nvarchar(50) NULL 
);
GO

-- ************************************** [dbo].[PaymentStatus]

CREATE TABLE [dbo].[PaymentStatus]
(
 [Status]      nvarchar(50) NOT NULL ,
 [Description] nvarchar(50) NULL 
);
GO

-- ************************************** [dbo].[parkingSpot]

CREATE TABLE [dbo].[parkingSpot]
(
 [Name] nvarchar(50) NOT NULL ,
 [Type] nvarchar(50) NOT NULL
);
GO

-- ************************************** [dbo].[ParkingPeriod]

CREATE TABLE [dbo].[ParkingPeriod]
(
 [Duration] nvarchar(50) NOT NULL ,
 [Hours]    int NULL 
);
GO

-- ************************************** [dbo].[occupancy]

CREATE TABLE [dbo].[occupancy]
(
 [Occupancy]   char(5) NOT NULL ,
 [Name]        nvarchar(50) NOT NULL ,
 [Description] nvarchar(50) NULL 
);
GO

-- ************************************** [dbo].[EmergencyContacts]

CREATE TABLE [dbo].[EmergencyContacts]
(
 [ContactId]    int IDENTITY (1, 1) NOT NULL ,
 [Name]         nvarchar(50) NOT NULL ,
 [Relationship] nvarchar(50) NOT NULL ,
 [Phone]        nvarchar(50) NULL ,
 [email]        nvarchar(50) NULL 
);
GO

-- ************************************** [dbo].[BookingType]

CREATE TABLE [dbo].[BookingType]
(
 [name] nvarchar(50) NOT NULL 
);
GO

-- ************************************** [dbo].[BookingStatus]

CREATE TABLE [dbo].[BookingStatus]
(
 [Status]      nvarchar(50) NOT NULL ,
 [Description] nvarchar(50) NULL 
);
GO

-- ************************************** [dbo].[Adress]

CREATE TABLE [dbo].[Adress]
(
 [AdressId]    int IDENTITY (1, 1) NOT NULL ,
 [AdressLine1] nvarchar(50) NOT NULL ,
 [AdressLine2] nvarchar(50) NULL ,
 [City]        nvarchar(50) NOT NULL ,
 [Province]    nvarchar(50) NULL ,
 [PostalCode]  nvarchar(50) NULL ,
 [Country]     nvarchar(50) NOT NULL 
);
GO

-- ************************************** [dbo].[AccountType]

CREATE TABLE [dbo].[AccountType]
(
 [AccountType] char(5) NOT NULL ,
 [Name]        nvarchar(50) NOT NULL ,
 [Description] nvarchar(50) NULL 
);
GO

-- ************************************** [dbo].[UserDetails]

CREATE TABLE [dbo].[UserDetails]
(
 [DetailsId]   int IDENTITY (1, 1) NOT NULL ,
 [ContactId]   int NOT NULL ,
 [ContactId_1] int NULL  
);
GO

-- ************************************** [dbo].[Newsfeed]

CREATE TABLE [dbo].[Newsfeed]
(
 [FeedId]        int IDENTITY (1, 1) NOT NULL ,
 [Title]         varchar(50) NOT NULL ,
 [Description]   nvarchar(50) NOT NULL ,
 [Creationdatte] datetime NOT NULL ,
 [ExpiryDate]    datetime NOT NULL ,
 [Priority]      nvarchar(50) NOT NULL ,
 [GroupName]     nvarchar(50) NOT NULL 
);
GO

-- ************************************** [dbo].[Users]

CREATE TABLE [dbo].[Users]
(
 [UserId]          int IDENTITY (1, 1) NOT NULL ,
 [FirstName]       nvarchar(50) NOT NULL ,
 [LastName]        nvarchar(50) NOT NULL ,
 [Email]           nvarchar(50) NOT NULL ,
 [PhoneNumber]     nvarchar(50) NULL ,
 [OffSiteAdressId] int NULL ,
 [DetailsId]       int NULL ,
 [CreationDate]    datetime NOT NULL DEFAULT GETDATE(),
 [Group]           nvarchar(50) NOT NULL  
);
GO

-- ************************************** [dbo].[Units]

CREATE TABLE [dbo].[Units]
(
 [unitNumber]    int NOT NULL ,
 [Occupancy]     char(5) NOT NULL ,
 [OwnerUserId]   int NULL ,
 [UnitAdressId]  int NOT NULL ,
 [OwnerAdressId] int NULL ,
 [Occupancydate] date NULL
);
GO

-- ************************************** [dbo].[ServiceRequest]

CREATE TABLE [dbo].[ServiceRequest]
(
 [RequestId]         int NOT NULL ,
 [UserId]            int NOT NULL ,
 [Subject]           nvarchar(50) NOT NULL ,
 [Description]       nvarchar(50) NOT NULL ,
 [PermissionToEnter] bit NOT NULL ,
 [Status]            nvarchar(50) NOT NULL 
);
GO

-- ************************************** [dbo].[Payment]

CREATE TABLE [dbo].[Payment]
(
 [PaymentId]     int IDENTITY (1, 1) NOT NULL ,
 [Amount]        decimal(18,2) NOT NULL ,
 [PayerId]       int NOT NULL ,
 [ServiceName]   nvarchar(50) NOT NULL ,
 [Date]          datetime NOT NULL ,
 [PaymentStatus] nvarchar(50) NOT NULL ,
 [TransactionId] int NULL ,
 [PaymentDate]   datetime2(7) NULL 
);
GO

-- ************************************** [dbo].[Messages]

CREATE TABLE [dbo].[Messages]
(
 [MesssageId] int IDENTITY (1, 1) NOT NULL ,
 [SenderId]   int NOT NULL ,
 [ReceiverId] int NOT NULL ,
 [Message]    nvarchar(50) NOT NULL ,
 [date]       datetime NOT NULL ,
 [salonNmae]  nvarchar(50) NOT NULL 
);
GO

-- ************************************** [dbo].[Login]

CREATE TABLE [dbo].[Login]
(
 [Username]    nvarchar(50) NOT NULL ,
 [Password]    nvarchar(50) NOT NULL ,
 [AccountType] char(5) NOT NULL ,
 [UserId]      int NOT NULL ,
 [Image]       nvarchar(50) NULL 
);
GO

-- ************************************** [dbo].[Guest]

CREATE TABLE [dbo].[Guest]
(
 [GuestId]         int IDENTITY (1, 1) NOT NULL ,
 [Name]            nvarchar(50) NOT NULL ,
 [HostId]          int NOT NULL ,
 [VisitorType]     nvarchar(50) NOT NULL ,
 [ParkingRequired] bit NOT NULL 
);
GO

-- ************************************** [dbo].[Booking]

CREATE TABLE [dbo].[Booking]
(
 [BookingId]          int IDENTITY (1, 1) NOT NULL ,
 [BookingType]        nvarchar(50) NOT NULL ,
 [StartDate]          datetime NOT NULL ,
 [EndDate]            datetime NOT NULL ,
 [BookingDescription] nvarchar(50) NULL ,
 [UserId]             int NOT NULL ,
 [BookingStatus]      nvarchar(50) NOT NULL 
);
GO

-- ************************************** [dbo].[VehicleDetails]

CREATE TABLE [dbo].[VehicleDetails]
(
 [LicensePlate] nvarchar(50) NOT NULL ,
 [GuestId]      int NOT NULL ,
 [ParkingSpot]  nvarchar(50) NOT NULL ,
 [Make]         nvarchar(50) NOT NULL ,
 [Color]        nvarchar(50) NOT NULL ,
 [State]        nvarchar(50) NOT NULL ,
 [ExpiryDate]   datetime NOT NULL 
);
GO

-- ************************************** [dbo].[Feedback]

CREATE TABLE [dbo].[Feedback]
(
 [FeedbackId] int IDENTITY (1, 1) NOT NULL ,
 [Message]    nvarchar(50) NOT NULL ,
 [RequestId]  int NOT NULL ,
 [UserId]     int NOT NULL 
);
GO

-- ************************************** [dbo].[Complaint]

CREATE TABLE [dbo].[Complaint]
(
 [ComplaintId]       int IDENTITY (1, 1) NOT NULL ,
 [ReporterName]      nvarchar(50) NOT NULL ,
 [Title]             nvarchar(50) NOT NULL ,
 [Complaint Message] nvarchar(50) NOT NULL ,
 [Date]              datetime NOT NULL ,
 [RelatedUser]       int NULL ,
 [RelatedUnit]       int NULL 
);
GO

-- ************************************** [dbo].[VisitorType]
ALTER TABLE [dbo].[VisitorType]
ADD CONSTRAINT [PK_VisitorType] PRIMARY KEY CLUSTERED ([Name] ASC);

-- ************************************** [dbo].[VehicleMake]
ALTER TABLE [dbo].[VehicleMake]
ADD CONSTRAINT [PK_VehicleMake] PRIMARY KEY CLUSTERED ([Make] ASC);

-- ************************************** [dbo].[vehicleColor]
ALTER TABLE [dbo].[vehicleColor]
ADD CONSTRAINT [PK_vehicleColor] PRIMARY KEY CLUSTERED ([Color] ASC);

-- ************************************** [dbo].[Usergroup]
ALTER TABLE [dbo].[Usergroup]
ADD CONSTRAINT [PK_group] PRIMARY KEY CLUSTERED ([GroupName] ASC)

-- ************************************** [dbo].[serviceType]
ALTER TABLE [dbo].[serviceType]
ADD CONSTRAINT [PK_serviceType] PRIMARY KEY CLUSTERED ([ServiceName] ASC);

-- ************************************** [dbo].[ServiceStatus]
ALTER TABLE  [dbo].[ServiceStatus]
ADD CONSTRAINT [PK_ServiceStatus] PRIMARY KEY CLUSTERED ([Status] ASC);

-- ************************************** [dbo].[Provinces]
ALTER TABLE [dbo].[Provinces]
ADD CONSTRAINT [PK_Provinces] PRIMARY KEY CLUSTERED ([State] ASC);

-- ************************************** [dbo].[Priority]
ALTER TABLE [dbo].[Priority]
ADD CONSTRAINT [PK_Priority] PRIMARY KEY CLUSTERED ([PriorityName] ASC);

-- ************************************** [dbo].[PaymentStatus]
ALTER TABLE [dbo].[PaymentStatus]
ADD CONSTRAINT [PK_PaymentStatus] PRIMARY KEY CLUSTERED ([Status] ASC);

-- ************************************** [dbo].[parkingSpot]
ALTER TABLE [dbo].[parkingSpot]
ADD CONSTRAINT [PK_parkingSpot] PRIMARY KEY CLUSTERED ([Name] ASC);

-- ************************************** [dbo].[ParkingPeriod]
ALTER TABLE [dbo].[ParkingPeriod]
ADD CONSTRAINT [PK_ParkingPeriod] PRIMARY KEY CLUSTERED ([Duration] ASC);

-- ************************************** [dbo].[occupancy]
ALTER TABLE [dbo].[occupancy]
ADD CONSTRAINT [PK_occupancy] PRIMARY KEY CLUSTERED ([Occupancy] ASC);

-- ************************************** [dbo].[EmergencyContacts]
ALTER TABLE [dbo].[EmergencyContacts]
ADD CONSTRAINT [PK_ContactId] PRIMARY KEY CLUSTERED ([ContactId] ASC);

-- ************************************** [dbo].[BookingType]
ALTER TABLE [dbo].[BookingType]
ADD CONSTRAINT [PK_BookingType] PRIMARY KEY CLUSTERED ([name] ASC);

-- ************************************** [dbo].[BookingStatus]
ALTER TABLE [dbo].[BookingStatus]
ADD CONSTRAINT [PK_BookingStatus] PRIMARY KEY CLUSTERED ([Status] ASC);

-- ************************************** [dbo].[Adress]
ALTER TABLE [dbo].[Adress]
ADD CONSTRAINT [PK_Adress] PRIMARY KEY CLUSTERED ([AdressId] ASC);

-- ************************************** [dbo].[AccountType]
ALTER TABLE [dbo].[AccountType]
ADD CONSTRAINT [PK_AccountType] PRIMARY KEY CLUSTERED ([AccountType] ASC);

-- ************************************** [dbo].[UserDetails]
ALTER TABLE [dbo].[UserDetails]
ADD CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED ([DetailsId] ASC);
ALTER TABLE [dbo].[UserDetails]
ADD CONSTRAINT [FK_UserEmergencyContact1] FOREIGN KEY ([ContactId])  REFERENCES [dbo].[EmergencyContacts]([ContactId]);
ALTER TABLE [dbo].[UserDetails]
ADD CONSTRAINT [FK_UserEmergencyContact2] FOREIGN KEY ([ContactId_1])  REFERENCES [dbo].[EmergencyContacts]([ContactId]);

-- ************************************** [dbo].[Newsfeed]
ALTER TABLE [dbo].[Newsfeed]
ADD CONSTRAINT [PK_Newsfeed] PRIMARY KEY CLUSTERED ([FeedId] ASC);
ALTER TABLE [dbo].[Newsfeed]
ADD CONSTRAINT [FK_FeedGroup] FOREIGN KEY ([GroupName])  REFERENCES [dbo].[Usergroup]([GroupName]);
ALTER TABLE [dbo].[Newsfeed]
ADD CONSTRAINT [FK_FeedPriority] FOREIGN KEY ([Priority])  REFERENCES [dbo].[Priority]([PriorityName]);

-- ************************************** [dbo].[Users]
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserId] ASC);
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_UserDetails] FOREIGN KEY ([DetailsId])  REFERENCES [dbo].[UserDetails]([DetailsId]);
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_UserGroup] FOREIGN KEY ([Group])  REFERENCES [dbo].[Usergroup]([GroupName]);
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_UserOffsiteAdress] FOREIGN KEY ([OffSiteAdressId])  REFERENCES [dbo].[Adress]([AdressId]);

-- ************************************** [dbo].[Units]
ALTER TABLE [dbo].[Units]
ADD CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED ([unitNumber] ASC);
ALTER TABLE [dbo].[Units]
ADD CONSTRAINT [FK_OwnerAdress] FOREIGN KEY ([OwnerAdressId])  REFERENCES [dbo].[Adress]([AdressId]);
ALTER TABLE [dbo].[Units]
ADD CONSTRAINT [FK_UnitAdress] FOREIGN KEY ([UnitAdressId])  REFERENCES [dbo].[Adress]([AdressId]);
ALTER TABLE [dbo].[Units]
ADD CONSTRAINT [FK_UnitOccupancy] FOREIGN KEY ([Occupancy])  REFERENCES [dbo].[occupancy]([Occupancy]);
ALTER TABLE [dbo].[Units]
ADD CONSTRAINT [FK_UnitUser] FOREIGN KEY ([OwnerUserId])  REFERENCES [dbo].[Users]([UserId]);

-- ************************************** [dbo].[ServiceRequest]
ALTER TABLE [dbo].[ServiceRequest]
ADD CONSTRAINT [PK_ServiceRequest] PRIMARY KEY CLUSTERED ([RequestId] ASC);
ALTER TABLE [dbo].[ServiceRequest]
ADD CONSTRAINT [FK_ServiceRequester] FOREIGN KEY ([UserId])  REFERENCES [dbo].[Users]([UserId]);
ALTER TABLE [dbo].[ServiceRequest]
ADD CONSTRAINT [FK_ServiceStatus] FOREIGN KEY ([Status])  REFERENCES [dbo].[ServiceStatus]([Status]);

-- ************************************** [dbo].[Payment]
ALTER TABLE [dbo].[Payment]
ADD CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED ([PaymentId] ASC);
ALTER TABLE [dbo].[Payment]
ADD CONSTRAINT [FK_PayerId] FOREIGN KEY ([PayerId])  REFERENCES [dbo].[Users]([UserId]);
ALTER TABLE [dbo].[Payment]
ADD CONSTRAINT [FK_PaymentStatus] FOREIGN KEY ([PaymentStatus])  REFERENCES [dbo].[PaymentStatus]([Status]);
ALTER TABLE [dbo].[Payment]
ADD CONSTRAINT [FK_ServiceName] FOREIGN KEY ([ServiceName])  REFERENCES [dbo].[serviceType]([ServiceName]);

-- ************************************** [dbo].[Messages]
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED ([MesssageId] ASC);
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_MessageReciverId] FOREIGN KEY ([ReceiverId])  REFERENCES [dbo].[Users]([UserId]);
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_MessageSenderId] FOREIGN KEY ([SenderId])  REFERENCES [dbo].[Users]([UserId]);

-- ************************************** [dbo].[Login]
ALTER TABLE [dbo].[Login]
ADD CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED ([Username] ASC);
ALTER TABLE [dbo].[Login]
ADD CONSTRAINT [FK_LoginAccType] FOREIGN KEY ([AccountType])  REFERENCES [dbo].[AccountType]([AccountType]);
ALTER TABLE [dbo].[Login]
ADD CONSTRAINT [FK_UserLogin] FOREIGN KEY ([UserId])  REFERENCES [dbo].[Users]([UserId]);

-- ************************************** [dbo].[Guest]
ALTER TABLE [dbo].[Guest]
ADD CONSTRAINT [PK_Guest] PRIMARY KEY CLUSTERED ([GuestId] ASC);
ALTER TABLE [dbo].[Guest]
ADD CONSTRAINT [FK_GuestHostId] FOREIGN KEY ([HostId])  REFERENCES [dbo].[Users]([UserId]);
ALTER TABLE [dbo].[Guest]
ADD CONSTRAINT [FK_VisitorType] FOREIGN KEY ([VisitorType])  REFERENCES [dbo].[VisitorType]([Name]);

-- ************************************** [dbo].[Booking]
ALTER TABLE [dbo].[Booking]
ADD CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED ([BookingId] ASC);
ALTER TABLE [dbo].[Booking]
ADD CONSTRAINT [FK_BookingStatus] FOREIGN KEY ([BookingStatus])  REFERENCES [dbo].[BookingStatus]([Status]);
ALTER TABLE [dbo].[Booking]
ADD CONSTRAINT [FK_BookingType] FOREIGN KEY ([BookingType])  REFERENCES [dbo].[BookingType]([name]);
ALTER TABLE [dbo].[Booking]
ADD CONSTRAINT [FK_BookingUserId] FOREIGN KEY ([UserId])  REFERENCES [dbo].[Users]([UserId]);

-- ************************************** [dbo].[VehicleDetails]
ALTER TABLE [dbo].[VehicleDetails]
ADD CONSTRAINT [PK_VehicleDetails] PRIMARY KEY CLUSTERED ([LicensePlate] ASC);
ALTER TABLE [dbo].[VehicleDetails]
ADD CONSTRAINT [FK_GuestParkingSpot] FOREIGN KEY ([ParkingSpot])  REFERENCES [dbo].[parkingSpot]([Name]);
ALTER TABLE [dbo].[VehicleDetails]
ADD CONSTRAINT [FK_VehicleColor] FOREIGN KEY ([Color])  REFERENCES [dbo].[vehicleColor]([Color]);
ALTER TABLE [dbo].[VehicleDetails]
ADD CONSTRAINT [FK_VehicleMake] FOREIGN KEY ([Make])  REFERENCES [dbo].[VehicleMake]([Make]);
ALTER TABLE [dbo].[VehicleDetails]
ADD CONSTRAINT [FK_vehicleOwnerId] FOREIGN KEY ([GuestId])  REFERENCES [dbo].[Guest]([GuestId]);
ALTER TABLE [dbo].[VehicleDetails]
ADD CONSTRAINT [FK_VehicleRegistrationState] FOREIGN KEY ([State])  REFERENCES [dbo].[Provinces]([State]);

-- ************************************** [dbo].[Feedback]
ALTER TABLE [dbo].[Feedback]
ADD CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED ([FeedbackId] ASC);
ALTER TABLE [dbo].[Feedback]
ADD CONSTRAINT [FK_FeedbackRequestId] FOREIGN KEY ([RequestId])  REFERENCES [dbo].[ServiceRequest]([RequestId]);
ALTER TABLE [dbo].[Feedback]
ADD CONSTRAINT [FK_FeedbackWriterId] FOREIGN KEY ([UserId])  REFERENCES [dbo].[Users]([UserId]);

-- ************************************** [dbo].[Complaint]
ALTER TABLE [dbo].[Complaint]
ADD CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED ([ComplaintId] ASC);
ALTER TABLE [dbo].[Complaint]
ADD CONSTRAINT [FK_ComplaintRelatedUnit] FOREIGN KEY ([RelatedUnit])  REFERENCES [dbo].[Units]([unitNumber]);
ALTER TABLE [dbo].[Complaint]
ADD CONSTRAINT [FK_ComplaintRelatedUser] FOREIGN KEY ([RelatedUser])  REFERENCES [dbo].[Users]([UserId]);













