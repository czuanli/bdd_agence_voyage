drop database layxoTravelAgency;
create database layxoTravelAgency;
use layxoTravelAgency;

create table Customer(
	id_customer int unsigned primary key,
    addressCustomer varchar(64) not null
);
create table Staff(
	id_staff int unsigned primary key,
    salary float not null,
    hiringDate date
);
create table if not exists booking(
    createdAt timestamp default current_timestamp,
    totalFee float not null,
	id_staff int unsigned,
    id_customer int unsigned,
    id_booking int unsigned primary key auto_increment,
    foreign key(id_staff)
		references Staff(id_staff),
    foreign key(id_customer)
		references Customer(id_customer)
);

create table if not exists attraction(
    date_start date,
    date_end date,
    fee float(2) not null,
    city varchar(255) not null,
    country varchar(255) not null,
    weather varchar(255),
    travel_route varchar(255),
    id_attraction int unsigned primary key auto_increment,
    index(city),
    index(country),
    index(fee),
    index(weather),
    index(date_start),
    index(date_start),
    index(date_end)
);

create table if not exists booking_attraction(
    id_booking int unsigned,
	id_attraction int unsigned,
    quantity int,
	CONSTRAINT id_booking_attraction PRIMARY KEY (id_booking,id_attraction),
	foreign key(id_booking)
		references booking(id_booking),
	foreign key(id_attraction)
		references attraction(id_attraction)
);

delimiter $$

create procedure GetAttractions()
begin
	select 
		date_start,
		date_end,
		fee,
		city,
		country,
		weather,
		travel_route
    from 
		attraction 
	order by country;
end$$
delimiter ;

call GetAttractions();

delimiter $$

create procedure GetAttractionLevel(
	in pFee float(2),
    out pAttractionLevel varchar(20))
begin
	if pFee > 1000 then
		set pAttractionLevel = 'VIP';
	end if;
end$$
delimiter ;

call GetAttractionLevel();
/*
show tables;

select * from attraction where weather = "rainy";
select * from attraction where city = "Lisbonne";
select id_attraction, travel_route from attraction where id_attraction = 1;

show indexes from attraction;
*/
