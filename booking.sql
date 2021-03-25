/* 1 - Quel employé s’occupe de la réservation 1? */
Select id_staff, lastname, firstname
From staff Natural Join booking
Where id_booking = 1;

/*2 - Quel est le chiffre d’affaires total de l’agence de voyages en Mars?*/
Select Sum(total_fee)
From booking
Where created_at >= "2021-03-01" and created_at <= "2021-03-31"; 

/*3 - Quel est le chiffre d’affaires de l’agence du 14 Février  au 27 Février?*/
Select Sum(total_fee)
From booking
Where created_at >= "2021-02-14" and created_at <= "2021-02-27";

/*4 - Trouver l’employé qui a le plus haut montant total des commandes traitées dans l’agence. ( Afficher ses ids, noms et prénoms)*/
Select staff, lastname, firstname
From staff
Where Not In
(Select staff, lastname, firstname
From 
(Select id_staff As staff, lastname, firstname, Sum(total_fee) As fee1
From staff Natural Join booking
Group by id_staff, lastname, firstname), (Select id_staff, Sum(total_fee) As fee2
From staff Natural Join booking
Group by id_staff, lastname, firstname)
Where fee1 < fee2);

/*5 - Lister les réservations qui ne sont pas encore payées.*/
Select id_booking 
From booking
Where status = 0;

/*6 - Lister les clients qui n’ont pas encore payé leurs réservations.*/
Select id_customer, lastname, firstname
From booking Natural Join customer
Where status = 0;

/*7 - Calculez le nombre de fois où différentes attractions sont visitées dans toutes les réservations de l’agence et classez-les de haut en bas.*/
Select id_attraction, Count(*) As num
From booking, booking_attraction, attraction
Where booking.id_booking = booking_attraction.bookingid_booking and booking_attraction.attractionid_attraction = attraction.id_attraction
Group By id_attraction
Order By num Desc;

/*8 - Calculez le nombre d’hôtels différents réservés dans toutes les réservations de l’agence et classez-les de haut en bas.*/
Select hotel.id_hotel, Count(*) As num
From booking, booking_room, room, hotel
Where booking.id_booking = booking_room.bookingid_booking and 
booking_room.roomid_room = room.id_room and room.id_hotel = hotel.id_hotel
Group By hotel.id_hotel
Order By num Desc;

/*9 - Trouver les attractions visitées et les hôtels restés par le client 2.*/
Select attractionid_attraction, id_hotel
From booking, booking_attraction, booking_room, room
Where booking.id_booking = booking_attraction.bookingid_booking 
and booking.id_booking = booking_room.bookingid_booking 
and booking_room.roomid_room = room.id_room
and booking.id_customer = 2;

/*10 - Quelles sont les attractions visitées dans la réservation 1?*/
Select id_attraction, name
From booking, booking_attraction, attraction
Where booking.id_booking = booking_attraction.bookingid_booking 
and booking_attraction.attractionid_attraction = attraction.id_attraction
and booking.id_booking = 1;

/*11 - Combien de chambres est réservé pour la réservation 1?*/
Select Count(Distinct roomid_room)
From booking, booking_room
Where booking.id_booking = booking_room.bookingid_booking; 

/*12 - Le client 2 a appris combien de réservation?*/
Select Count(id_booking)
From booking
Where id_customer = 2;

/*13 - Quelles  sont les réservations qui ont un prix inférieur à 500?*/
Select id_booking
From booking
Where total_fee < 500;

/*14 - Le trigger si on supprime un client, ça va supprimer les booking liés à ce client*/
DELIMITER $

    create trigger tri_custDelete after delete
    on customer for each row
    begin
    declare c VARCHAR(20) DEFAULT NULL;
    update `booking` set  `id_customer`= c where id_customer = OLD.id_customer;

end$
DELIMITER ;


