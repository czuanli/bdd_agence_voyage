use layxoTravelAgency

#Les hotels avec des chambres disponibles à [Nom de la ville]

select hotel.name_hotel,hotel.address, hotel.postal_code, hotel.phone, hotel.email
from hotel,room
where hotel.city like "Paris"
and room.is_reserved=0
and room.is_ready=1
group by hotel.id_hotel;


#Les chambres réservées dans l'hotel [nom de l'hotel]

select room.room_number, room.name_room
from hotel,room
where hotel.name_hotel like "%Corpo%"
and room.is_reserved = 1;


#Les chambres disponibles dans l'hotel [nom de l'hotel]

select room.room_number, room.name_room, room.price 
from hotel,room
where hotel.name_hotel like "%Corpo%"
and room.is_reserved = 0
and room.is_ready = 1
order by price;



#Les chambres qui ne sont ni réservées ni pretes a accueillir des clients dans l'hotel [nom de l'hotel]

select room.room_number, room.name_room
from hotel,room
where hotel.name_hotel like "%Corpo%"
and room.is_reserved = 0
and room.is_ready = 0;
