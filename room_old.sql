use layxoTravelAgency

CREATE TABLE if not exists room_old (
  `id_room_history`int NOT NULL AUTO_INCREMENT,
  `id_room_old` int NOT NULL,
  `id_hotel_old` varchar(255) NOT NULL,
  `room_number_old` int NOT NULL,
  `name_room_old` varchar(255) DEFAULT NULL,
  `room_type_old` varchar(255) NOT NULL,
  `price_old` float(10,2) DEFAULT NULL,
  `changed_at` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id_room_history`)
  
) ENGINE=InnoDB;


DELIMITER $$

CREATE TRIGGER room_update
BEFORE UPDATE ON room
for each row
BEGIN
insert into room_old
SET 
 id_room_old = OLD.id_room,
 id_hotel_old = OLD.id_hotel,
 room_number_old = OLD.room_number,
 name_room_old = OLD.name_room,
 room_type_old = OLD.room_type,
 price_old = OLD.price,
 changed_at = NOW();

END $$
DELIMITER $$;

update room
SET name_room = "LayxosExclusiveRoom"
WHERE id_room = 1 and id_hotel = 1;
update room
SET name_room = "LayxosExclusiveRoomSecondTry"
WHERE id_room = 1 and id_hotel = 1;
update room
SET name_room = "LayxosExclusiveRoomThirdTry"
WHERE id_room = 1 and id_hotel = 1;

select * from room_old;