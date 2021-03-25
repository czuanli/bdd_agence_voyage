drop database layxoTravelAgency;
create database layxoTravelAgency;
use layxoTravelAgency;

DROP TABLE IF EXISTS customer ;
CREATE TABLE customer (
id_customer INT NOT NULL,
address VARCHAR DEFAULT NULL,
zipcode VARCHAR DEFAULT NULL,
city VARCHAR DEFAULT NULL,
email VARCHAR NOT NULL,
pwd VARCHAR NOT NULL,
phone VARCHAR DEFAULT NULL,
firstname VARCHAR NOT NULL,
lastname VARCHAR NOT NULL,
PRIMARY KEY (id_customer)
);

UPDATE customer 
         SET pwd= md5(pwd);
         
SELECT * FROM customer;

ALTER TABLE customer ADD COLUMN membership VARCHAR(50);

DELIMITER $$

CREATE PROCEDURE calcul_membership(IN par_id_customer INT, OUT par_membership VARCHAR(50))

BEGIN
SELECT COUNT(booking.id_booking) count from customer
INNER JOIN booking ON customer.id_customer=booking.id_customer
GROUP BY customer.id_customer;

IF count >= 5 AND count < 10 THEN
	SET par_membership = 'Silver';
ELSE IF count >= 10 AND count < 30 THEN 
     SET par_membership='Gold';
ELSE IF count >= 30 THEN 
     SET par_membership='Platinum';
ELSE SET par_membership= 'Novice';

ENDIF;


END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE calcul_montant ()
BEGIN
SELECT customer.id_customer, customer.firstname, customer.lastname, SUM(booking.total_fee) total_fee_total  FROM customer
INNER JOIN booking ON booking.id_customer=customer.id_customer
GROUP BY customer.id_customer;

END $$

DELIMITER ;


SELECT COUNT(*) countParisClient FROM customer
WHERE city = ‘Paris’;

SELECT COUNT(*) countClient2020 FROM customer
INNER JOIN booking ON booking.id_customer=customer.id_customer
WHERE booking.createdAt >= ‘2020-01-01’ AND booking.createdAt <= ‘2020-12-31’
GROUP BY customer.customer;

CREATE INDEX membership ON client (membership);

ALTER TABLE customer ADD COLUMN statut VARCHAR(50);
ALTER TABLE customer ADD COLUMN created_at DATE;

DELIMITER $$

CREATE TRIGGER inscription_client
BEFORE INSERT
ON customer FOR EACH ROW
BEGIN

SET NEW.statut=’new’;
SET NEW.created_at=NOW();
END$$

DELIMITER ;


