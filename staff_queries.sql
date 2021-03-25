DROP DATABASE IF EXISTS layxoTravelAgency;
CREATE DATABASE layxoTravelAgency;
USE layxoTravelAgency;

-- ----------------------------
-- Table staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id_staff` int NOT NULL,
  `salary` float(10,2) NOT NULL,
  `hiring_date` date NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id_staff`)
) ENGINE=InnoDB;

-- ----------------------------
-- data staff
-- ----------------------------
BEGIN;
INSERT INTO `staff` VALUES (1, 1111.00, '2021-03-10', 'RAKAN', 'Annie', 'RAKAN.Annie@layxotravil.com', '123456', '0606060606');
INSERT INTO `staff` VALUES (2, 2222.00, '2007-03-11', 'RENARBEAU', 'Macxence', 'RENARBEAU.Macxence@layxotravil.com', '123456', '0101010101');
INSERT INTO `staff` VALUES (3, 3333.00, '2019-01-01', 'GILBERT', 'Liliane', 'GILBERT.Lilianne@layxotravil.com', '123456', '0202020202');
INSERT INTO `staff` VALUES (4, 4444.00, '2010-12-01', 'DELAMARE', 'Margaret', 'DELAMARE.Margaret@layxotravil.com', '123456', '0303030303');
INSERT INTO `staff` VALUES (5, 5555.00, '2020-01-01', 'DOUDOU', 'Jean-Micheal', 'DOUDOU.John-Micheal@layxotravil.com', '123456', '0404040404');
INSERT INTO `staff` VALUES (6, 9999.00, '2021-03-10', 'BENOTHMANE', 'Zied', 'BENOTHMANE.Zied@layxotravil.com', '123456', '');
COMMIT;

-- ----------------------------
-- Table customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id_customer` int NOT NULL COMMENT 'the unique id of the customer',
  `address` varchar(1000) DEFAULT NULL COMMENT 'the living address of the customer (contains road and door number)',
  `zipcode` varchar(255) DEFAULT NULL COMMENT 'the zipcode of the address',
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customer`) USING BTREE
) ENGINE=InnoDB;

-- ----------------------------
-- data customer
-- ----------------------------
BEGIN;
INSERT INTO `customer` VALUES (1, '3874 Adipiscing Avenue', 'Z6527', 'Turriff', 'tincidunt.orci@Proinsed.co.uk', 'LCL87UTG6LP', '06 13 89 86 97', 'Kendall', 'Mcguire');
INSERT INTO `customer` VALUES (2, NULL, '15110', 'Barcelona', 'mauris.eu@sagittis.edu', 'WNX87UVW0ZF', '06 10 39 68 41', 'Blaine', 'Boone');
INSERT INTO `customer` VALUES (3, NULL, NULL, NULL, 'sociis@justo.edu', 'JNE49IYI0EN', '06 31 30 00 10', 'McKenzie', 'Bray');
INSERT INTO `customer` VALUES (4, '884-2310 In Avenue', 'N7 2TF', 'Milwaukee', 'nibh@lectusante.org', 'IZL03VUP5SF', '06 36 46 68 71', 'Kane', 'Buckley');
INSERT INTO `customer` VALUES (5, 'Ap #234-6536 Purus. Avenue', '4571', 'Araban', 'sit.amet@vitaesodalesat.net', 'OIN83CTQ8GU', '06 93 31 72 56', 'Isaiah', 'Guy');
INSERT INTO `customer` VALUES (6, 'P.O. Box 130, 5673 Ultrices Avenue', '566926', 'Bamberg', 'massa@duisemper.ca', 'EDU47RYX1FP', '06 82 02 07 75', 'Jillian', 'Zimmerman');
INSERT INTO `customer` VALUES (7, 'P.O. Box 261, 7987 Vestibulum. Rd.', '922135', 'St. Petersburg', 'rutrum@Etiamimperdiet.edu', 'SDN45NSV2GX', '06 33 98 07 74', 'Bruno', 'Robbins');
INSERT INTO `customer` VALUES (8, '7938 Semper St.', '30700', 'Graneros', 'velit.eget.laoreet@elit.net', 'QJK53MPH4GK', '06 42 95 74 96', 'India', 'Pittman');
INSERT INTO `customer` VALUES (9, 'P.O. Box 677, 5494 Aliquet Av.', '33345', 'Portland', 'non@arcuvel.com', 'VFZ70OHW0MV', '06 22 91 79 15', 'Rae', 'Glass');
INSERT INTO `customer` VALUES (10, '3546 Integer Ave', '8795', 'Solingen', 'massa.Vestibulum.accumsan@sapienimperdiet.com', 'HQZ21QPG4CD', '06 67 90 75 52', 'Delilah', 'Juarez');
INSERT INTO `customer` VALUES (11, 'Ap #339-5667 A, Av.', '1967', 'Chandler', 'rhoncus.id@Nuncmauriselit.edu', 'MEP83IDH0JC', '06 54 66 98 16', 'Plato', 'Bates');
INSERT INTO `customer` VALUES (12, '439-6015 Auctor Road', 'NA5 4FB', 'Sukkur', 'Cras.vehicula@ategestas.edu', 'VHS88CZZ5NI', '06 80 78 60 53', 'Keane', 'Mack');
INSERT INTO `customer` VALUES (13, 'P.O. Box 555, 4683 Egestas Road', '209550', 'MŽlin', 'Nulla.tincidunt.neque@nuncac.org', 'CPV00DQS6OK', '06 70 78 23 17', 'Demetria', 'Young');
INSERT INTO `customer` VALUES (14, '852-9175 Litora Ave', 'E7T 1J2', 'Valcourt', 'In.scelerisque@quis.com', 'TJB06XPQ1DK', '06 29 35 79 50', 'Slade', 'Tran');
INSERT INTO `customer` VALUES (15, '481-5029 Sed St.', '8723', 'Bad Homburg v. d. Höhe', 'aliquet.sem@eget.ca', 'HDV28KYJ9PO', '06 20 88 65 23', 'Victor', 'Doyle');
INSERT INTO `customer` VALUES (16, 'P.O. Box 434, 3349 Integer Ave', '87152-05705', 'Marburg', 'ante.bibendum.ullamcorper@mattissemper.edu', 'SWM74UXM4MD', '06 69 73 48 05', 'Alisa', 'Small');
INSERT INTO `customer` VALUES (17, 'Ap #899-3420 Nibh Street', 'Z9954', 'Mol', 'felis.orci.adipiscing@ligulaeu.ca', 'DKM64ANC9YZ', '06 85 12 44 32', 'Shelley', 'Carey');
INSERT INTO `customer` VALUES (18, 'Ap #400-9557 Dictum Avenue', '683956', 'Lozzo Atestino', 'diam.dictum@inhendrerit.net', 'ITU63NQH4IY', '06 45 11 72 72', 'Tiger', 'Patrick');
INSERT INTO `customer` VALUES (19, 'Ap #800-3420 Nibh Street', 'Z9954', 'Mol', 'felis.orci.adipiscing@ligulaeu.ca', 'DKM64ANC9YZ', '06 85 12 44 32', 'Shelley', 'Copy');
INSERT INTO `customer` VALUES (20, 'Ap #366-2951 Vitae St.', '1008', 'Kitimat', 'diam@PraesentluctusCurabitur.co.uk', 'GJA25CGT5CL', '06 20 17 98 68', 'Felix', 'Marsh');
INSERT INTO `customer` VALUES (21, NULL, NULL, NULL, 'Etiam@tristique.edu', 'JPF50AQV3MB', '06 98 32 41 85', 'Cruz', 'Walsh');
INSERT INTO `customer` VALUES (22, NULL, NULL, NULL, 'nibh@nonegestas.net', 'NSX37CHS4MP', NULL, 'Lara', 'Odom');
INSERT INTO `customer` VALUES (23, 'Ap #197-2672 Amet, Avenue', '6175', 'Workington', 'elit.fermentum@tellus.edu', 'VAW64YWC0GG', NULL, 'Aspen', 'Bartlett');
INSERT INTO `customer` VALUES (24, '379-9862 A, Avenue', 'Z3833', 'Basingstoke', 'orci@sociisnatoque.net', 'ULX22QBJ3OE', '06 83 52 51 99', 'Chadwick', 'Travis');
INSERT INTO `customer` VALUES (25, NULL, NULL, NULL, 'aptent.taciti.sociosqu@duiSuspendisse.com', 'VXC43WKE9TV', NULL, 'Phoebe', 'Wiggins');
INSERT INTO `customer` VALUES (26, NULL, NULL, NULL, 'leo.Cras.vehicula@liberoProinmi.org', 'BQQ03XMQ8UA', '06 11 51 80 73', 'Karleigh', 'Newman');
INSERT INTO `customer` VALUES (27, NULL, NULL, NULL, 'sed.consequat@mollisDuis.co.uk', 'PNK09PLQ8SQ', '06 43 50 34 70', 'Zachary', 'Gaines');
INSERT INTO `customer` VALUES (28, NULL, NULL, NULL, 'parturient.montes@luctussit.org', 'AYZ70AMN9EP', '06 84 49 73 15', 'Lars', 'Clark');
INSERT INTO `customer` VALUES (29, NULL, NULL, NULL, 'cursus.vestibulum@dapibusidblandit.org', 'LIX34MCZ7VG', NULL, 'Giacomo', 'Jarvis');
INSERT INTO `customer` VALUES (30, '7254 Litora Street', 'R5 4YW', 'Bhimber', 'ut.lacus.Nulla@NulladignissimMaecenas.co.uk', 'QIV22MMW1QT', '06 89 83 29 45', 'Alec', 'Leon');
INSERT INTO `customer` VALUES (31, 'Ap #972-6747 Magna Street', '9649', 'San Felice a Cancello', 'dui.nec.tempus@nuncsed.ca', 'LGE62ILF4LR', NULL, 'Tamekah', 'Gallagher');
INSERT INTO `customer` VALUES (32, '922-9397 In St.', '6547 MO', 'Khyber Agency', 'Nullam.lobortis.quam@nec.co.uk', 'RDZ64KPN8OJ', '06 06 83 90 50', 'Griffith', 'Ward');
INSERT INTO `customer` VALUES (33, '187-9173 Tellus Road', '58384', 'Granada', 'aliquet.lobortis@utaliquam.org', 'QPE10FNE0HA', '06 34 26 00 15', 'Emma', 'Howell');
INSERT INTO `customer` VALUES (34, 'P.O. Box 974, 9409 Vitae Ave', '304028', 'Campbeltown', 'metus@in.edu', 'CRQ61FRO9WS', '06 95 57 28 29', 'Seth', 'Dunlap');
INSERT INTO `customer` VALUES (35, 'Ap #868-5627 Mauris Road', '02444-26385', 'Manisa', 'ornare.placerat@lacusQuisque.org', 'BDB63OCX1JU', '06 11 28 84 23', 'Orli', 'Larsen');
COMMIT;

-- ----------------------------
-- Table attraction
-- ----------------------------
DROP TABLE IF EXISTS `attraction`;
CREATE TABLE `attraction` (
  `id_attraction` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `weather` varchar(255) NOT NULL COMMENT 'the recommanded weather  of this attraction',
  `travel_route` varchar(255) NOT NULL COMMENT 'the vehicle to this attraction',
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `fee` float(10,2) NOT NULL COMMENT 'the ticket price of this attraction',
  PRIMARY KEY (`id_attraction`)
) ENGINE=InnoDB;

-- ----------------------------
-- data attraction
-- ----------------------------
BEGIN;
INSERT INTO `attraction` VALUES (1, 'Tower Eiffel', 'Pris', 'France', 'Summer', 'Metro', '2021-03-02', '2021-03-02', 30.00);
INSERT INTO `attraction` VALUES (2, 'Museum Louvre', 'Paris', 'France', 'Rainy', 'Metro', NULL, NULL, 60.00);
INSERT INTO `attraction` VALUES (3, 'Pantheon', 'Paris', 'France', 'Rainy', 'Metro', '2021-03-11', '2021-03-11', 10.00);
INSERT INTO `attraction` VALUES (4, 'Tower belen', 'Lisbon', 'Portugal', 'Summer', 'Bus', NULL, NULL, 0.00);
INSERT INTO `attraction` VALUES (5, 'Tower Eiffel', 'Paris', 'France', 'Summer', 'Metro', '2021-03-10', '2021-03-10', 30.00);
INSERT INTO `attraction` VALUES (6, 'Tower Eiffel', 'Paris', 'France', 'Summer', 'Metro', NULL, NULL, 30.00);
INSERT INTO `attraction` VALUES (7, 'Great Wall', 'Beijing', 'China', 'Summer', 'Walk', '2021-02-17', '2021-02-17', 0.00);
INSERT INTO `attraction` VALUES (8, 'Champs Elysees', 'Paris', 'France', 'Summer', 'Walk', '2021-03-16', '2021-03-17', 0.00);
INSERT INTO `attraction` VALUES (9, 'Basilica of the Sagrada Familia', 'Barcelona', 'Spain', 'Summer', 'Bus', '2021-03-16', '2021-03-16', 25.00);
INSERT INTO `attraction` VALUES (10, 'Park Guell', 'Barcelona', 'Spain', 'Summer', 'Walk', '2021-03-17', '2021-03-17', 10.00);
INSERT INTO `attraction` VALUES (11, 'Royal Palace of Madrid', 'Madrid', 'Spain', 'Rainy', 'Metro', NULL, NULL, 10.00);
INSERT INTO `attraction` VALUES (12, 'El Retiro Park', 'Madrid', 'Spain', 'Summer', 'Walk', NULL, NULL, 0.00);
INSERT INTO `attraction` VALUES (13, 'The Grand Canyon', 'Arizona', 'America', 'Summer', 'Walk', NULL, NULL, 50.00);
INSERT INTO `attraction` VALUES (14, 'Great Barrier Reef', 'Queensland', 'Australia', 'Summer', 'Boat', NULL, NULL, 0.00);
COMMIT;


-- ----------------------------
-- Table hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `id_hotel` int NOT NULL,
  `name_hotel` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_hotel`)
) ENGINE=InnoDB;

-- ----------------------------
-- data hotel
-- ----------------------------
BEGIN;
INSERT INTO `hotel` VALUES (1, 'Burj Al Arab Jumeirah', '1 jumerirah beach road', '11800', 'Dubai', 'Arab', '17353834', NULL);
INSERT INTO `hotel` VALUES (2, 'Peking Yard Hotel', '28 rue Wangzhima', '200135', 'Beijing', 'China', '58305318', 'contact@pekinghotel.com');
INSERT INTO `hotel` VALUES (3, 'Corpo Santo Lisbon Historical Hotel', 'Largo do Corpo Santo 25', '1200129', 'Lisbon', 'Portugal', '12345678', 'contact@corpsanto.com');
INSERT INTO `hotel` VALUES (4, 'Hotel de tuilerie Paris', '10 Rue Saint-Hyacinthe', '75001', 'Paris', 'France', '0101010101', NULL);
INSERT INTO `hotel` VALUES (5, 'Hotel du Continent', '30 rue du mont thabor', '75002', 'Paris', 'France', '0202020202', 'contact@contient.com');
INSERT INTO `hotel` VALUES (6, 'CitizenM Paris Gare de Lyon', ' 8 Rue Van Gogh', '75012', 'Paris', 'France', NULL, 'contact@CitizenM.com');
INSERT INTO `hotel` VALUES (7, 'Hotel Example 2', '134 Rue San-Voc', 'TD9T2F', 'New York', 'America', '67853457', NULL);
INSERT INTO `hotel` VALUES (8, 'Hotel Example 2', '1 road beach road', '11810', 'Dubai', 'Arab', '17353834', NULL);
INSERT INTO `hotel` VALUES (9, 'Hotel Example 3', '28 rue Wangzhima', '200135', 'Beijing', 'China', '58305318', 'contact2@pekinghotel.com');
INSERT INTO `hotel` VALUES (10, 'Hotel Example 4', 'Largo do Corpo Santo 25', '1200129', 'Lisbon', 'Portugal', '12345608', 'contact2@corpsanto.com');
INSERT INTO `hotel` VALUES (11, 'Hotel Example 5', '17 Rue Saint-Hyacinthe', '75001', 'Paris', 'France', '389210101', NULL);
INSERT INTO `hotel` VALUES (12, 'Hotel Example 6', '30 avenue du mont thabor', '75002', 'Paris', 'France', '0202134202', 'contact2@contient.com');
INSERT INTO `hotel` VALUES (13, 'Hotel Example 7', '28 road beijing', '200125', 'Beijing', 'China', '0204020402', 'contact2@contient.com');
INSERT INTO `hotel` VALUES (14, 'Hotel Example 8', '1 road beach road', '11810', 'Beijing', 'China', '17353834', NULL);
INSERT INTO `hotel` VALUES (15, 'Hotel Example 9', '28 rue Wangzhima', '200135', 'Beijing', 'China', '58305318', 'contact2@pekinghotel.com');
INSERT INTO `hotel` VALUES (16, 'Hotel Example 10', 'Largo do Corpo Santo 25', 'Shanghai', 'China', 'Portugal', '12345608', 'contact3@corpsanto.com');
INSERT INTO `hotel` VALUES (17, 'Hotel Example 11', '17 Rue Saint-Hyacinthe', '98795', 'New York', 'America', '95423512', NULL);
INSERT INTO `hotel` VALUES (18, 'Hotel Example 12', '30 avenue du mont thabor', 'SGY76S', 'London', 'England', '739831457', 'contact3@contient.com');
INSERT INTO `hotel` VALUES (19, 'Hotel Example 13', '72B rue sunshine', '200125', 'Queen Land', 'Australia', NULL, 'contact3@contient.com');
INSERT INTO `hotel` VALUES (20, 'Hotel Example 14', '72B rue goodluck', '626781D', 'Madrid', 'Spain', NULL, 'contact3@coucou.com');
INSERT INTO `hotel` VALUES (21, 'Hotel Example 15', '72B rue havefun', 'HS7241', 'Madrid', 'Spain', '738534677', 'contact6@contient.com');
INSERT INTO `hotel` VALUES (22, 'Hotel Example 16', '72B rue sleeping', '5799D00', 'Barcelona', 'Spain', '738534947', NULL);
COMMIT;

-- ----------------------------
-- Table room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id_room` int NOT NULL,
  `id_hotel` int NOT NULL,
  `room_number` int NOT NULL,
  `name_room` varchar(255) DEFAULT NULL,
  `is_reserved` int NOT NULL COMMENT '0 = still available ; 1 = has already been reserved',
  `is_ready` int NOT NULL COMMENT '0 = the room is not prepared for reservation ; 1 = the room is ready',
  `room_type` varchar(255) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL COMMENT 'the cost of the room per night',
  PRIMARY KEY (`id_room`),
  KEY `fk_hotel_id` (`id_hotel`),
  CONSTRAINT `fk_hotel_id` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB;

-- ----------------------------
-- data room
-- ----------------------------
BEGIN;
INSERT INTO `room` VALUES (1, 1, 101, 'Number 1', 0, 0, 'Single', NULL, NULL, 44.00);
INSERT INTO `room` VALUES (2, 1, 102, 'Number 2', 1, 0, 'Single', '2021-03-16', '2021-03-20', 44.00);
INSERT INTO `room` VALUES (3, 1, 103, 'Number 3', 1, 1, 'Double', '2021-03-16', '2021-03-18', 112.67);
INSERT INTO `room` VALUES (4, 2, 202, 'Good Luck', 0, 1, 'Single', NULL, NULL, 35.00);
INSERT INTO `room` VALUES (5, 2, 203, 'Good Dream', 0, 0, 'Single', NULL, NULL, 27.00);
INSERT INTO `room` VALUES (6, 3, 706, 'Day dreaming', 0, 1, 'Royal', NULL, NULL, 291.80);
INSERT INTO `room` VALUES (7, 5, 207, 'Cou cou', 1, 1, 'Family', '2021-03-03', '2021-03-04', 459.89);
INSERT INTO `room` VALUES (8, 5, 707, 'Do do', 1, 1, 'Business', '2021-03-15', '2021-03-21', 376.00);
INSERT INTO `room` VALUES (9, 5, 708, 'Travail', 0, 1, 'Business', NULL, NULL, 376.00);
INSERT INTO `room` VALUES (10, 7, 102, 'Bla bla', 1, 1, 'Double', '2021-03-11', '2021-03-13', 199.00);
INSERT INTO `room` VALUES (11, 11, 305, 'Sweet Royal XXL', 1, 1, 'Royal', '2021-03-03', '2021-03-06', 1000.00);
INSERT INTO `room` VALUES (12, 21, 706, 'Sweet Dream', 0, 1, 'Business', NULL, NULL, 699.00);
COMMIT;

-- ----------------------------
-- Table booking
-- ----------------------------
DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
  `id_booking` int NOT NULL,
  `id_customer` int NOT NULL COMMENT 'the customer who does this booking',
  `id_staff` int NOT NULL COMMENT 'the staff who is reponsible for this booking',
  `created_at` date NOT NULL,
  `total_fee` float(10,2) NOT NULL,
  `status` int NOT NULL COMMENT '0 = isn''t completed ; 1 = is finished',
  PRIMARY KEY (`id_booking`),
  KEY `fk_customer_id` (`id_customer`),
  KEY `fk_staff_id` (`id_staff`),
  CONSTRAINT `fk_customer_id` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_staff_id` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB;

-- ----------------------------
-- data booking
-- ----------------------------
BEGIN;
INSERT INTO `booking` VALUES (1, 12, 1, '2021-03-03', 499.00, 1);
INSERT INTO `booking` VALUES (2, 7, 1, '2021-02-11', 791.47, 1);
INSERT INTO `booking` VALUES (3, 12, 1, '2021-02-14', 754.10, 1);
INSERT INTO `booking` VALUES (4, 12, 2, '2021-03-18', 577.00, 0);
INSERT INTO `booking` VALUES (5, 27, 4, '2021-02-25', 399.00, 1);
INSERT INTO `booking` VALUES (6, 16, 4, '2021-03-12', 450.12, 0);
INSERT INTO `booking` VALUES (7, 22, 2, '2021-03-02', 189.00, 1);
INSERT INTO `booking` VALUES (8, 23, 3, '2021-03-01', 213.73, 1);
COMMIT;

-- ----------------------------
-- Table booking_attraction
-- ----------------------------
DROP TABLE IF EXISTS `booking_attraction`;
CREATE TABLE `booking_attraction` (
  `bookingid_booking` int NOT NULL,
  `attractionid_attraction` int NOT NULL,
  PRIMARY KEY (`bookingid_booking`,`attractionid_attraction`),
  KEY `fk_attraction_id` (`attractionid_attraction`),
  CONSTRAINT `fk_attraction_id` FOREIGN KEY (`attractionid_attraction`) REFERENCES `attraction` (`id_attraction`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_booking_id` FOREIGN KEY (`bookingid_booking`) REFERENCES `booking` (`id_booking`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB;

-- ----------------------------
-- data booking_attraction
-- ----------------------------
BEGIN;
INSERT INTO `booking_attraction` VALUES (1, 1);
INSERT INTO `booking_attraction` VALUES (1, 2);
INSERT INTO `booking_attraction` VALUES (1, 3);
INSERT INTO `booking_attraction` VALUES (3, 7);
INSERT INTO `booking_attraction` VALUES (5, 7);
INSERT INTO `booking_attraction` VALUES (6, 7);
INSERT INTO `booking_attraction` VALUES (2, 8);
INSERT INTO `booking_attraction` VALUES (8, 8);
INSERT INTO `booking_attraction` VALUES (4, 9);
INSERT INTO `booking_attraction` VALUES (4, 10);
COMMIT;

-- ----------------------------
-- Table booking_room
-- ----------------------------
DROP TABLE IF EXISTS `booking_room`;
CREATE TABLE `booking_room` (
  `bookingid_booking` int NOT NULL,
  `roomid_room` int NOT NULL,
  PRIMARY KEY (`bookingid_booking`,`roomid_room`),
  KEY `fk_room_id` (`roomid_room`),
  CONSTRAINT `fk_room_id` FOREIGN KEY (`roomid_room`) REFERENCES `room` (`id_room`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkr_booking_id` FOREIGN KEY (`bookingid_booking`) REFERENCES `booking` (`id_booking`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB;

-- ----------------------------
-- data booking_room
-- ----------------------------
BEGIN;
INSERT INTO `booking_room` VALUES (2, 2);
INSERT INTO `booking_room` VALUES (1, 3);
INSERT INTO `booking_room` VALUES (3, 8);
INSERT INTO `booking_room` VALUES (4, 10);
INSERT INTO `booking_room` VALUES (5, 11);
COMMIT;

-- ----------------------------
-- Staff queries
-- ----------------------------

-- ----------------------------
-- Quels sont les noms des salariés ? 
-- ----------------------------
USE layxotravelagency;
SELECT lastName From Staff;

-- ----------------------------
-- Quel est le salaire le plus élevé parmi les salariés ? 
-- ----------------------------
SELECT MAX(salary) FROM Staff;

-- ----------------------------
-- Qui a le salaire le plus élevé (Nom, prénom) ? 
-- ----------------------------

SELECT lastName, firstName, MAX(salary) FROM Staff;

-- ----------------------------
-- Qui avons-nous embauché entre le 01 mars 2021 et le 20 mars 2021 ? 
-- ----------------------------
SELECT* FROM staff  WHERE hiring_date BETWEEN '2021-03-01' AND '2021-03-20';

-- ----------------------------
-- Qui parmi ceux embauchés entre le 01 mars 2021 et le 20 mars 2021 a le salaire le plus bas ? Classer par Ordre alphabétique 
-- ----------------------------

 SELECT lastName,firstName, MIN(salary)  FROM staff  WHERE hiring_date BETWEEN '2021-03-01' AND '2021-03-20';
 
 -- ----------------------------
-- Quel salarié a fait une réservation ? 
-- ----------------------------
SELECT *
FROM Staff
INNER JOIN Booking ON
Staff.firstname = Booking.id_staff;

-- ----------------------------
-- Quel salarié n’a jamais fait de réservation ? 
-- ----------------------------
SELECT *
FROM Staff
LEFT JOIN Booking ON
Staff.firstname = Booking.id_staff
WHERE Booking.id_staff IS NULL;

-- ----------------------------
-- Création d’un nouvelle utilisateur staff et lui donner tous les privilèges sur la table layxotravelagency
-- ----------------------------
CREATE USER 'staffuser'@'localhost' IDENTIFIED BY 'password';
SELECT USER FROM mysql.user;
GRANT ALL PRIVILEGES ON layxotravelagency.* to staffuser@localhost;

-- ----------------------------
-- Création d’une autre table pour sauvegarder les changements de salaire 
-- ----------------------------
CREATE TABLE staff_salary_update(
    id INT AUTO_INCREMENT PRIMARY KEY,
    salary INT NOT NULL,
    lastname VARCHAR(64) NOT NULL,
    changedat DATETIME DEFAULT NULL,
    action VARCHAR(50) DEFAULT NULL
     );

-- ----------------------------
-- Création du trigger pour les changements de salaire 
-- ----------------------------
DELIMITER $
CREATE TRIGGER before_staff_salary_update
    BEFORE UPDATE ON Staff
    FOR EACH ROW
    INSERT INTO staff_salary_update
    SET ACTION = 'update',
    salary = OLD.salary,
    lastname = OLD.lastname,
    changedat = NOW();
END$$
DELIMITER ;

-- ----------------------------
-- Création du trigger pour les changements de salaire 
-- ----------------------------
DELIMITER $

CREATE PROCEDURE GetNBStaff()
BEGIN 
DECLARE totalnbstaff INT DEFAULT 0;
SELECT COUNT(*)
INTO totalnbstaff
FROM Staff;
SELECT totalnbstaff;
END$$

DELIMITER $;

-- ----------------------------
-- Procédure GetPaidStaff() : ce que l’on dépense pour tous les salaire
-- ----------------------------
DELIMITER $

CREATE PROCEDURE GetNBStaff()
BEGIN 
DECLARE totalsalary INT DEFAULT 0;
SELECT SUM(salary)
INTO totalsalary
FROM Staff;
SELECT totalsalary;
END$$

DELIMITER $;
-- ----------------------------
-- Création d’une autre table pour sauvegarder les changements de nom, prénom
-- ----------------------------
CREATE TABLE staff_name_update(
    id INT AUTO_INCREMENT PRIMARY KEY,
    salary INT NOT NULL,
    lastname VARCHAR(64) NOT NULL,
    changedat DATETIME DEFAULT NULL,
    action VARCHAR(50) DEFAULT NULL
     );

-- ----------------------------
-- Création d’une autre table pour sauvegarder les changements de nom, prénom
-- ----------------------------
DELIMITER $
CREATE TRIGGER before_staff_salary_update
    BEFORE UPDATE ON Staff
    FOR EACH ROW
    INSERT INTO staff_salary_update
    SET ACTION = 'update',
    salary = OLD.salary,
    lastname = OLD.lastname,
    changedat = NOW();
END$$
DELIMITER ;
