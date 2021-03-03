drop database layxoTravelAgency;
create database layxoTravelAgency;
use layxoTravelAgency;
create table Person(
	idPerson int unsigned primary key auto_increment,
    lastName varchar(64) not null,
    firstName varchar(64) not null,
    email varchar(64) not null,
    pwd varchar(64) not null,
    phone varchar(64) not null
);
create table Customer(
	idCustomer int references Person,
    primary key(idCustomer),
    addressCustomer varchar(64) not null
);
create table Staff(
	idStaff int references Person,
    primary key(idStaff),
    salary float not null,
    hiringDate date
);
create table Booking(
	idBooking int unsigned primary key auto_increment,
    createdAt timestamp default current_timestamp,
    totalFee float not null,
	idStaff int,
    foreign key(idStaff)
		references Staff(idStaff),
	idCustomer int,
    foreign key(idCustomer)
		references Customer(idCustomer)
);
create table Service(
	idService int unsigned primary key auto_increment,
    dateStart date,
    dateEnd date,
    fee float not null
);
create table Attraction(
	idAttraction int references Service,
    primary key(idAttraction),
    dateStart date,
    dateEnd date,
    fee float not null,
    city varchar(64) not null,
    country varchar(64) not null,
    weather varchar(64) not null,
    travelRoute varchar(255) not null
);
create table Room(
	idRoom int references Service,
    primary key(idRoom),
    dateStart date,
    dateEnd date,
    fee float not null,
    roomNumber int,
    roomName varchar(64) not null,
    isReserved tinyint(1) not null,
    isReady tinyint(1) not null,
    roomType varchar(64) not null
);
create table Hotel(
	idHotel int unsigned primary key auto_increment,
	hotelName varchar(64) not null,
    addressHotel varchar(64) not null,
    cityHotel varchar(64) not null,
    countryHotel varchar(64) not null,
    phone varchar(64) not null,
    email varchar(64) not null
);
use layxoTravelAgency;
show tables;
describe room;