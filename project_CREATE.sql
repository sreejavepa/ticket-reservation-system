drop database if exists music_reservation;
create database music_reservation;
use music_reservation;

create table app_user (
    user_id int,
    user_name varchar(255),
    password varchar(255),
    name varchar(255),
    email varchar(255),
    phone varchar(16),
    primary key (user_id)
);

CREATE table review(
    rating INT,
    comment varchar(255),
    date_posted DATE,
    user_id INT,
    FOREIGN KEY(user_id) REFERENCES app_user(user_id) ON DELETE CASCADE
);

create table tickets(
    ticket_id int,
    price float,
    user_id int,
    primary key (ticket_id),
    FOREIGN KEY(user_id) REFERENCES app_user(user_id) ON DELETE CASCADE  
);

CREATE TABLE occassion(
    occassion_id INT,
    occassion_name VARCHAR(255),
    Description VARCHAR(255),
    PRIMARY KEY(occassion_id)
);

drop table if exists concert;
CREATE TABLE concert(
    concert_id INT,
    concert_name VARCHAR(255),
    concert_date DATE,
    description VARCHAR(255),
    occassion_id INT,
    PRIMARY KEY(concert_id),
    FOREIGN KEY(occassion_id) REFERENCES occassion(occassion_id) ON DELETE CASCADE
);

CREATE TABLE seat(
    seat_number INT,
    ticket_id INT,
    concert_id INT,
    PRIMARY KEY(seat_number),
    FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id) ON DELETE CASCADE,
    FOREIGN KEY(concert_id) REFERENCES concert(concert_id) ON DELETE CASCADE
);

CREATE TABLE artists(
    artist_id INT,
    artist_name VARCHAR(255),
    concert_id int, 
    PRIMARY KEY (artist_id),
    FOREIGN KEY(concert_id) REFERENCES concert(concert_id) ON DELETE CASCADE
);

CREATE TABLE songs(
    title VARCHAR(255),
    album VARCHAR(255),
    genre VARCHAR(255),
    release_date DATE,
    artist_id INT,
    FOREIGN KEY(artist_id) REFERENCES artists(artist_id) ON DELETE CASCADE
);

CREATE TABLE venue(
    venue_id INT,
    venue_name varchar(255),
    capacity INT,
    concert_id INT,
    PRIMARY KEY (venue_id),
    FOREIGN KEY(concert_id) REFERENCES concert(concert_id) ON DELETE CASCADE   
);

CREATE TABLE address(
    street_number INT,
    street_name VARCHAR(255),
    city VARCHAR(255),
    zip_code INT,
    venue_id INT,
    FOREIGN KEY(venue_id) REFERENCES venue(venue_id) ON DELETE CASCADE
);

CREATE TABLE staff(
    staff_id INT,
    name VARCHAR(255),
    email VARCHAR(255),
    phone varchar(16),
    venue_id INT,
    PRIMARY KEY(staff_id),
    FOREIGN KEY(venue_id) REFERENCES venue(venue_id) ON DELETE CASCADE
);

CREATE TABLE promotions(
    promotion VARCHAR(255),
    occassion_id INT, 
    FOREIGN KEY(occassion_id) REFERENCES occassion(occassion_id) ON DELETE CASCADE
);

