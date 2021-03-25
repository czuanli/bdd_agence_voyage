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

create table if not exists attraction_changes(
    date_start date,
    date_end date,
    changedat date,
    action VARCHAR(50) DEFAULT NULL,
    id_attraction int unsigned primary key auto_increment
);

load data infile '../../../../ETUDES/MIAGE_L3/S6/bdd_avancee/project/bdd_agence_voyage/attractions.csv'
into table attraction
fields terminated by '|'
lines terminated by '\r\n'
ignore 1 rows;

select *  from attraction;

DELIMITER $$

CREATE TRIGGER after_attraction_update
AFTER UPDATE
ON attraction FOR EACH ROW
BEGIN
	INSERT INTO attraction_changes
	SET action = 'update',
		id_attraction = OLD.id_attraction,
		date_start = OLD.date_start,
        date_end = OLD.date_end,
		changedat = NOW();
END$$


UPDATE attraction 
SET 
    travel_route = "sidjhfihiu"
WHERE
    id_attraction = 1;


select *  from attraction_changes;

/*
DELIMITER ;



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
	in attraction_id float(2),
    out pAttractionLevel varchar(20))
begin
	DECLARE feeLevel DECIMAL(10,2) DEFAULT 0;

    SELECT fee 
    INTO feeLevel
    FROM attraction
    WHERE id_attraction = attraction_id;
    
	if feeLevel > 1000 then
		set pAttractionLevel = 'VIP';
	end if;
end$$

delimiter ;

call GetAttractionLevel(1, @level);

select @level;

show tables;

select * from attraction where weather = "rainy";
select * from attraction where city = "Lisbonne";
select id_attraction, travel_route from attraction where id_attraction = 1;

show indexes from attraction;
*/


