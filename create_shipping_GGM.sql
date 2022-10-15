/* DDL Script to create tables for database*/ 

CREATE DATABASE shipping;

USE shipping;

CREATE TABLE Ships (
	Name char(50) NOT NULL ,
    Displacement Float NOT NULL,
    CaptainName  VARCHAR(75) NOT NULL,
    NumberOfCrewMembers INT NOT NULL,
    HomePortID  INT(10) NOT NULL,
    Year YEAR NOT NULL,
    ShipID INT(5),
    PRIMARY KEY (Name),
    UNIQUE(ShipID),
    FOREIGN KEY (HomePortID) REFERENCES Ports(PortID)
);

CREATE TABLE Ports (
	PortID INT(10) ,
	PortName char(255) ,
	City VARCHAR(255) NOT NULL,
    Country VARCHAR(255) NOT NULL,
    Primary Key (PortID)
);



CREATE TABLE Containers (
	ContainerID INT(8) NOT NULL ,
    height Float NOT NULL,
    width Float NOT NULL,
	length Float NOT NULL,
    weight Float NOT NULL,
	ShipID INT(5),
	PRIMARY KEY (ContainerID),
    Foreign KEY(ShipID) REFERENCES ships(ShipID)
);

