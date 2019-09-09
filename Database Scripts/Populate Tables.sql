USE [Mycondo]
GO
-- **************************************VisitorType
INSERT INTO VisitorType
VALUES ('Visitor','Someone who came to visit a friend');
INSERT INTO VisitorType
VALUES ('Contractor','Someone who came to Work on the site');

-- **************************************Booking status
INSERT INTO BookingStatus
VALUES ('Approved','The booking is Approved');
INSERT INTO BookingStatus
VALUES ('Not Approved','The booking request has been Decline');
INSERT INTO BookingStatus
VALUES ('Pending','The booking is under review');

-- **************************************Booking Type
INSERT INTO BookingType
VALUES ('Low Rise Elevator');
INSERT INTO BookingType
VALUES ('High Rise Elevator');
INSERT INTO BookingType
VALUES ('Party Room');
INSERT INTO BookingType
VALUES ('Guest Suite');

-- **************************************Occupancy
INSERT INTO occupancy
VALUES ('OCC','Occupied','The Room is occupied by someone');
INSERT INTO occupancy
VALUES ('EMP','Empty','No one is in the room but owned by someone');
INSERT INTO occupancy
VALUES ('NOO','Not Own','The Room is not own by anybody');
INSERT INTO occupancy
VALUES ('OWN','Owner','The Room is occupied by the owner');

-- **************************************parkingPeriod
INSERT INTO ParkingPeriod
VALUES ('1 Night',24);
INSERT INTO ParkingPeriod
VALUES ('2 Night',48);
INSERT INTO ParkingPeriod
VALUES ('3 Night',72);
INSERT INTO ParkingPeriod
VALUES ('Day Pass',6);

-- **************************************parkingSpot
INSERT INTO parkingSpot
VALUES ('V1-01','Visitor');
INSERT INTO parkingSpot
VALUES ('V1-02','Visitor');
INSERT INTO parkingSpot
VALUES ('V1-03','Visitor');
INSERT INTO parkingSpot
VALUES ('V1-04','Visitor');
INSERT INTO parkingSpot
VALUES ('V1-05','Visitor');
INSERT INTO parkingSpot
VALUES ('V1-06','Visitor');
INSERT INTO parkingSpot
VALUES ('V1-07','Visitor');
INSERT INTO parkingSpot
VALUES ('V1-08','Visitor');
INSERT INTO parkingSpot
VALUES ('V1-09','Visitor');
INSERT INTO parkingSpot
VALUES ('V1-10','Visitor');
INSERT INTO parkingSpot
VALUES ('V1-11','Visitor');
INSERT INTO parkingSpot
VALUES ('V1-12','Visitor');

-- **************************************PaymentStatus
INSERT INTO PaymentStatus
VALUES ('Paid','the amount is paid in full');
INSERT INTO PaymentStatus
VALUES ('Unpaid','the amount is not paid yet');

-- **************************************Priority
INSERT INTO Priority
VALUES ('Low','Not very important');
INSERT INTO Priority
VALUES ('Medium','A little important');
INSERT INTO Priority
VALUES ('High','very important');

-- **************************************Provinces
INSERT INTO Provinces
VALUES ('AB');
INSERT INTO Provinces
VALUES ('BC');
INSERT INTO Provinces
VALUES ('MC');
INSERT INTO Provinces
VALUES ('MB');
INSERT INTO Provinces
VALUES ('NB');
INSERT INTO Provinces
VALUES ('NL');
INSERT INTO Provinces
VALUES ('NT');
INSERT INTO Provinces
VALUES ('NS');
INSERT INTO Provinces
VALUES ('NU');
INSERT INTO Provinces
VALUES ('ON');
INSERT INTO Provinces
VALUES ('PE');
INSERT INTO Provinces
VALUES ('QC');
INSERT INTO Provinces
VALUES ('SK');
INSERT INTO Provinces
VALUES ('YT');
INSERT INTO Provinces
VALUES ('Others');

-- **************************************ServiceStatus
INSERT INTO ServiceStatus
VALUES ('Completed','the work is completed');
INSERT INTO ServiceStatus
VALUES ('Process','the work is in process');
INSERT INTO ServiceStatus
VALUES ('Not Completed','started but not completed yet');
INSERT INTO ServiceStatus
VALUES ('Not Started','Work Not Started yet');

-- **************************************ServiceType
INSERT INTO serviceType
VALUES ('Elevator Booking');
INSERT INTO serviceType
VALUES ('Guest Suite Booking');
INSERT INTO serviceType
VALUES ('Party Room Booking');
INSERT INTO serviceType
VALUES ('Rent');
INSERT INTO serviceType
VALUES ('Deposit fee');
INSERT INTO serviceType
VALUES ('Other');

-- **************************************Usergroup
INSERT INTO Usergroup
VALUES ('Residents','Group ofResidents of the building');
INSERT INTO Usergroup
VALUES ('Owner','group Owners of units');
INSERT INTO Usergroup
VALUES ('Staff','Staff of the building');
INSERT INTO Usergroup
VALUES ('Security','Security team of the building');

-- **************************************AccountType
INSERT INTO AccountType
VALUES ('ADM','Admin','Someone who has all privileges');
INSERT INTO AccountType
VALUES ('RES','Resident','resident of the building');
INSERT INTO AccountType
VALUES ('SEC','Security','Security of the building');
INSERT INTO AccountType
VALUES ('SUP','Superintendent','Superintendent of the building');
INSERT INTO AccountType
VALUES ('NC','Not Confirmed User','New user not approved yet');