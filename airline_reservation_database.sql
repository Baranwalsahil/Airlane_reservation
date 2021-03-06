create table Flight
(
 FNo varchar(10) PRIMARY KEY NOT NULL,
 Fname varchar(50) NOT NULL,
 Tseats smallint NOT NULL
);


create table Airport
(
 ANo varchar(10) PRIMARY KEY NOT NULL,
 AName varchar(50) NOT NULL
);

create table Customer
(
 CNo int NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
 Fname varchar(50) NOT NULL,
 Lname varchar(50) NOT NULL,
 Email varchar(50) NOT NULL PRIMARY KEY,
 Password varchar(50) NOT NULL 
);

create table Schedule
(
 ScNo varchar(20) PRIMARY KEY NOT NULL,
 FNo varchar(10) NOT NULL,
 dept_timestamp timestamp NOT NULL,
 arrival_timestamp timestamp NOT NULL,
 src varchar(10) NOT NULL,
 dest varchar(10) NOT NULL,
 Fare INT NOT NULL,
 FOREIGN KEY (Fno) REFERENCES Flight(FNo),
 FOREIGN KEY (src) REFERENCES Airport(ANo),
 FOREIGN KEY (dest) REFERENCES Airport(ANo)
);


create table Reservation
(
 TNo varchar(20) PRIMARY KEY NOT NULL,
 ScNo varchar(20) NOT NULL,
 CNo varchar(20) NOT NULL,
 Pcount tinyint NOt NULL,
 FOREIGN KEY (ScNo) REFERENCES Schedule(ScNo),
 FOREIGN KEY (CNo) REFERENCES Customer(CNo)
);


create table Waiting
(
 TNo varchar(20) NOT NULL,
 FOREIGN KEY (TNo) REFERENCES Reservation(TNo)
);

