drop database layxoTravelAgency;
create database layxoTravelAgency;
use layxoTravelAgency;
create table Customer(
	idCustomer int unsigned auto_increment,
    addressCustomer varchar(64) not null,
    lastName varchar(64) not null,
    firstName varchar(64) not null,
    email varchar(64) not null,
    pwd varchar(64) not null,
    phone varchar(64) not null,
    primary key(idCustomer)
);
create table Staff(
	idStaff int unsigned auto_increment,
    salary float not null,
    hiringDate date,
    lastName varchar(64) not null,
    firstName varchar(64) not null,
    email varchar(64) not null,
    pwd varchar(64) not null,
    phone varchar(64) not null,
    primary key(idStaff)
);
create table Booking(
	idBooking int unsigned auto_increment,
    createdAt timestamp default current_timestamp,
    totalFee float not null,
	idStaff int unsigned,
    primary key(idBooking),
    foreign key(idStaff)
		references Staff(idStaff),
	idCustomer int unsigned,
    foreign key(idCustomer)
		references Customer(idCustomer)
);
create table Attraction(
	idAttraction int unsigned auto_increment,
    dateStart date,
    dateEnd date,
    fee float not null,
    city varchar(64) not null,
    country varchar(64) not null,
    weather varchar(64) not null,
    travelRoute varchar(255) not null,
    primary key(idAttraction)
);
create table Room(
	idRoom int unsigned auto_increment,
    dateStart date,
    dateEnd date,
    fee float not null,
    roomNumber int not null,
    roomName varchar(64),
    isReserved tinyint(1) not null,
    isReady tinyint(1) not null,
    roomType varchar(64) not null,
    primary key(idRoom)
);
create table BookingAttraction(
	idBooking int unsigned,
	foreign key(idBooking)
		references Booking(idBooking),
	idAttraction int unsigned,
    foreign key(idAttraction)
		references Attraction(idAttraction)
);
create table BookingRoom(
	idBooking int unsigned,
	foreign key(idBooking)
		references Booking(idBooking),
	idRoom int unsigned,
    foreign key(idRoom)
		references Room(idRoom)
);
create table Hotel(
	idHotel int unsigned auto_increment,
	hotelName varchar(64) not null,
    addressHotel varchar(64) not null,
    zipCode varchar(64) not null,
    cityHotel varchar(64) not null,
    countryHotel varchar(64) not null,
    phone varchar(64) not null,
    email varchar(64) not null,
    primary key(idHotel)
);
use layxoTravelAgency;
show tables;
describe BookingRoom;