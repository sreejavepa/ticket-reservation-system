use music_reservation; 

-- function call number of songs released in a year 
delimiter $$
create function num_songs_in_year
	(
    target_year int
    ) 
    returns int 
	deterministic reads sql data
	begin
		declare count_song int; 
        
        select count(*) into count_song
			from songs
            where year(release_date) = target_year; 
            
		return count_song;
	end $$
delimiter ; 

select num_songs_in_year(2022) as num_songs; 

-- function find number of songs with a specific genre 
delimiter $$
create function num_songs_with_genre
	(
    target_genre varchar(64)
    )
    returns int 
    deterministic reads sql data 
    begin 
		declare num_genre int; 
        
        select count(*) into num_genre 
			from songs 
            where songs.genre = target_genre; 
            
		return num_genre; 
	end $$
delimiter ; 

select num_songs_with_genre('Rock');

-- function find number of songs released by a specific artist
delimiter $$
create function songs_by_artist
	(
    target_artist varchar(64)
    )
    returns int
    deterministic reads sql data 
    begin 
		declare num_songs int; 
        
        select count(*) into num_songs
			from songs 
            inner join artists 
				on artists.artist_id = songs.artist_id
			where artists.artist_name = target_artist; 
            
		return num_songs; 
	end $$
delimiter ; 

select songs_by_artist('Rebecca Cole');






















