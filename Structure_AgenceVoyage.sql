/*
 Navicat Premium Data Transfer

 Source Server         : LOCALHOST
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : BDD_AgenceVoyage

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 16/03/2021 16:12:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attraction
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for booking
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for booking_attraction
-- ----------------------------
DROP TABLE IF EXISTS `booking_attraction`;
CREATE TABLE `booking_attraction` (
  `bookingid_booking` int NOT NULL,
  `attractionid_attraction` int NOT NULL,
  PRIMARY KEY (`bookingid_booking`,`attractionid_attraction`),
  KEY `fk_attraction_id` (`attractionid_attraction`),
  CONSTRAINT `fk_attraction_id` FOREIGN KEY (`attractionid_attraction`) REFERENCES `attraction` (`id_attraction`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_booking_id` FOREIGN KEY (`bookingid_booking`) REFERENCES `booking` (`id_booking`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for booking_room
-- ----------------------------
DROP TABLE IF EXISTS `booking_room`;
CREATE TABLE `booking_room` (
  `bookingid_booking` int NOT NULL,
  `roomid_room` int NOT NULL,
  PRIMARY KEY (`bookingid_booking`,`roomid_room`),
  KEY `fk_room_id` (`roomid_room`),
  CONSTRAINT `fk_room_id` FOREIGN KEY (`roomid_room`) REFERENCES `room` (`id_room`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkr_booking_id` FOREIGN KEY (`bookingid_booking`) REFERENCES `booking` (`id_booking`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for customer
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for hotel
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for room
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for staff
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
