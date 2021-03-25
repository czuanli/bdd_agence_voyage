use layxoTravelAgency

CREATE TABLE if not exists hotel_old (
  `id_hotel_history`int NOT NULL AUTO_INCREMENT,
  `id_hotel_old` int NOT NULL,
  `name_hotel_old` varchar(255) NOT NULL,
  `phone_old` varchar(255) DEFAULT NULL,
  `email_old` varchar(255) DEFAULT NULL,
  `changed_at` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id_hotel_history`)
  
) ENGINE=InnoDB;


DELIMITER $$

CREATE TRIGGER hotel_update
BEFORE UPDATE ON hotel
for each row
BEGIN
insert into hotel_old
SET 
 id_hotel_old = OLD.id_hotel,
 name_hotel_old = OLD.name_hotel,
 phone_old = OLD.phone,
 email_old = OLD.email,
 changed_at = NOW();

END $$
DELIMITER $$;

update hotel
SET name_hotel = "LayxosPropriety"
WHERE id_hotel = 1;
update hotel
SET name_hotel = "LayxosProprietySecondTry"
WHERE id_hotel = 1;
SET name_hotel = "LayxosProprietyThirdTry"
WHERE id_hotel = 1;

select * from hotel_old;