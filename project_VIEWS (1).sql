USE music_reservation; 

-- the user view shows all information that should be of interest to the average concert viewer 
CREATE VIEW user_view AS
	select artist_name, concert_name, concert_date, 
		concert.description as concert_description,
		occassion_name, occassion.description as occasion_description, 
        venue_name, street_number, street_name, city, zip_code
			from artists
				inner join concert 
					on concert.concert_id = artists.concert_id
				inner join occassion 
					on occassion.occassion_id = concert.occassion_id
				inner join venue 
					on venue.concert_id = concert.concert_id
				inner join address 
					on address.venue_id = venue.venue_id;
                    
SELECT * FROM user_view;
                    
-- purpose of admin view is for staff to be able to see sensitive user information that should be hidden from other users 
-- allows staff to see which concert each user is attending as well as what ticket/seat they bought 
create view admin_view as 
	select app_user.user_id, app_user.password, app_user.name, email, phone,
		tickets.ticket_id, seat.seat_number, tickets.price,
		concert.concert_id, 
		concert_name, concert_date,
		occassion.occassion_id, occassion_name, 
		venue.venue_id, venue_name
			from concert
				inner join occassion 
					on occassion.occassion_id = concert.occassion_id
				inner join seat 
					on seat.concert_id = concert.concert_id
				inner join tickets 
					on tickets.ticket_id = seat.ticket_id
				inner join venue 
					on venue.concert_id = concert.concert_id
				inner join app_user 
					on app_user.user_id = tickets.user_id;
                    
SELECT * FROM admin_view; 
