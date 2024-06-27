"""
Music Reservation System

DS5110 Project
"""

import pymysql
from faker import Faker
fake = Faker()
import cryptography
import datetime
import random
    
def user_info():
    
    # swap out connection parameters to match your own system
    cnx_host = 'localhost'
    cnx_user = 'root'
    cnx_pword = 'khwaja'
    cnx_db = 'music_reservation'
        
    cnx = pymysql.connect(host = cnx_host, user = cnx_user, password = cnx_pword, 
                       db = cnx_db, charset = 'utf8mb4', 
                           cursorclass = pymysql.cursors.DictCursor) 
    
    cursor = cnx.cursor()
    
    # insert fake data into the user table
    for user_id in range(1, 51): 
        username = fake.user_name()
        # can hash the password for security 
        password = fake.password(length=12) # Hash the password using bcrypthashed_password = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt())
        name = fake.name()
        email = fake.email()
        
        #truncate phone number for insert 
        phone = fake.phone_number()
        max_phone_length = 12
        truncated_phone = phone[:max_phone_length]
          
        cursor.execute("""
            INSERT INTO app_user (user_id, user_name, password, name, email, phone)
            VALUES (%s, %s, %s, %s, %s, %s)
        """, (user_id, username, password, name, email, truncated_phone))
    
    # test insert 
    query = "select * from app_user"
    cursor.execute(query)
    for row in cursor.fetchall():
        print()
        print(row)
        
    cnx.commit()
    cursor.close()
    cnx.close()

def ticket_info():
    # swap out connection parameters to match your own system
    cnx_host = 'localhost'
    cnx_user = 'root'
    cnx_pword = 'khwaja'
    cnx_db = 'music_reservation'
        
    cnx = pymysql.connect(host = cnx_host, user = cnx_user, password = cnx_pword, 
                       db = cnx_db, charset = 'utf8mb4', 
                           cursorclass = pymysql.cursors.DictCursor) 
    
    cursor = cnx.cursor() 
    
    price = [10, 15, 20, 25, 30, 45, 50, 60, 70, 80]
    user_id = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    for ticket_id in range(1, 11): 
        cursor.execute("""
            INSERT INTO tickets (ticket_id, price, user_id)
            VALUES (%s, %s, %s)
        """, (ticket_id, price[ticket_id - 1], user_id[ticket_id - 1]))
        
    '''
        
    # Insert fake data into the tickets table
    for ticket_id in range(1, 101):  
        price = fake.random_int(min=20, max=200)
        number_for_sale = fake.random_int(min=30, max=300)
        user_id = fake.random_int(min=1, max=50) # a user may have more than one ticket
    
        cursor.execute("""
            INSERT INTO tickets (ticket_id, price, number_for_sale, user_id)
            VALUES (%s, %s, %s, %s)
        """, (ticket_id, price, number_for_sale, user_id))
        
    '''
      
    # test query
    query = "select * from tickets"
    cursor.execute(query)
    for row in cursor.fetchall():
        print()
        print(row)
        
    cnx.commit()
    cursor.close()
    cnx.close()
    
def seating_info():
    cnx_host = 'localhost'
    cnx_user = 'root'
    cnx_pword = 'khwaja'
    cnx_db = 'music_reservation'
    
    cnx = pymysql.connect(host = cnx_host, user = cnx_user, password = cnx_pword,
                          db = cnx_db, charset = 'utf8mb4', 
                          cursorclass = pymysql.cursors.DictCursor)
    cursor = cnx.cursor()
    
    ticket_id = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    concert_id = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    for seat_id in range(1, 11):
        cursor.execute("""
                INSERT INTO seat (seat_number, ticket_id, concert_id)
                VALUES (%s, %s, %s) """, 
                (seat_id, ticket_id[seat_id - 1], concert_id[seat_id - 1]))
        
     # test query
    query = "select * from tickets"
    cursor.execute(query)
    for row in cursor.fetchall():
        print()
        print(row)   
        
    cnx.commit()
    cursor.close()
    cnx.close()
    
def concert_occasion_info(): 
    # swap out connection parameters to match your own system
    cnx_host = 'localhost'
    cnx_user = 'root'
    cnx_pword = 'khwaja'
    cnx_db = 'music_reservation'
        
    cnx = pymysql.connect(host = cnx_host, user = cnx_user, password = cnx_pword, 
                       db = cnx_db, charset = 'utf8mb4', 
                           cursorclass = pymysql.cursors.DictCursor) 
    
    cursor = cnx.cursor() 
        
    # Create fake data
    for occassion_id in range(1, 11): 
        title = fake.text(max_nb_chars = 20)
        desc = fake.sentence()
    
    # insert data 
        cursor.execute(""" 
               INSERT INTO occassion (occassion_id, occassion_name, description)
               VALUES (%s, %s, %s) """, 
               (occassion_id, title, desc))
        
    # test query
    query = "select * from occassion"
    cursor.execute(query)
    for row in cursor.fetchall():
        print()
        print(row)
        
    cnx.commit()
    cursor.close()
    cnx.close()
    
def concert_info(): 
    # swap out connection parameters to match your own system
    cnx_host = 'localhost'
    cnx_user = 'root'
    cnx_pword = 'khwaja'
    cnx_db = 'music_reservation'
        
    cnx = pymysql.connect(host = cnx_host, user = cnx_user, password = cnx_pword, 
                       db = cnx_db, charset = 'utf8mb4', 
                           cursorclass = pymysql.cursors.DictCursor) 
    
    cursor = cnx.cursor() 
    
    # set start and end date parameters 
    start_date = datetime.date(2020, 1, 1)
    end_date = datetime.date(2022, 12, 31)
    
    occasion_id = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    for concert_id in range(1, 11):
        name = fake.text(max_nb_chars = 15)
        date = fake.date_between_dates(date_start = start_date, date_end = end_date)
        desc = fake.sentence()
        
        # insert data 
        cursor.execute(""" 
               INSERT INTO concert (concert_id, concert_name, concert_date, description, occassion_id)
               VALUES (%s, %s, %s, %s, %s) """, 
               (concert_id, name, date, desc, occasion_id[concert_id - 1]))
        
     # test query
    query = "select * from concert"
    cursor.execute(query)
    for row in cursor.fetchall():
        print()
        print(row)
        
    cnx.commit()
    cursor.close()
    cnx.close()
    
def reviews():
    # swap out connection parameters to match your own system
    cnx_host = 'localhost'
    cnx_user = 'root'
    cnx_pword = 'khwaja'
    cnx_db = 'music_reservation'
        
    cnx = pymysql.connect(host = cnx_host, user = cnx_user, password = cnx_pword, 
                       db = cnx_db, charset = 'utf8mb4', 
                           cursorclass = pymysql.cursors.DictCursor) 
    
    cursor = cnx.cursor() 
    
    # set start and end date parameters
    start_date = datetime.date(2020, 1, 1)
    end_date = datetime.date(2022, 12, 31)
    
    #create data 
    for _ in range(1, 41):
        rate = fake.random_int(min = 1, max = 10)
        comment = fake.sentence()
        date = fake.date_between_dates(date_start = start_date, date_end = end_date)
        user_id = fake.random_int(min = 1, max = 50) # a user can leave multiple reviews 
        
        # insert data 
        cursor.execute("""
            INSERT INTO review (rating, comment, date_posted, user_id)
            VALUES (%s, %s, %s, %s) """, 
            (rate, comment, date, user_id))
    
    # test insert 
    query = "select * from review"
    cursor.execute(query)
    for row in cursor.fetchall():
        print()
        print(row)
        
    cnx.commit()
    cursor.close()
    cnx.close()
    
def promo_info(): 
    # swap out connection parameters to match your own system
    cnx_host = 'localhost'
    cnx_user = 'root'
    cnx_pword = 'khwaja'
    cnx_db = 'music_reservation'
        
    cnx = pymysql.connect(host = cnx_host, user = cnx_user, password = cnx_pword, 
                       db = cnx_db, charset = 'utf8mb4', 
                           cursorclass = pymysql.cursors.DictCursor) 
    
    cursor = cnx.cursor() 
    
    # define valid promotion types 
    promos = [
        "Social Media Marketing",
        "Email Marketing",
        "Online Ticketing Platforms",
        "Collaborations and Partnerships",
        "Street Team Promotion",
        "Search Engine Optimization (SEO)",
        "Radio and Podcast Advertising",
        "Giveaways",
        "Mobile Marketing",
        "Flash Sales and Limited-Time Offers",
        "Virtual Events and Livestreams"]
    
    # create data 
    for _ in range(1, 26):
        promotion = random.choice(promos)
        occasion_id = fake.random_int(min = 1, max = 10) # an occasion may have multiple promotions
        
        # insert data
        cursor.execute("""
               INSERT INTO promotions (promotion, occassion_id)
               VALUES (%s, %s) """,
               (promotion, occasion_id))
        
    query = "select * from promotions"
    cursor.execute(query)
    for row in cursor.fetchall():
        print()
        print(row)
        
    cnx.commit()
    cursor.close()
    cnx.close()
    
def artist_info():
    # swap out connection parameters to match your own system
    cnx_host = 'localhost'
    cnx_user = 'root'
    cnx_pword = 'khwaja'
    cnx_db = 'music_reservation'
        
    cnx = pymysql.connect(host = cnx_host, user = cnx_user, password = cnx_pword, 
                       db = cnx_db, charset = 'utf8mb4', 
                           cursorclass = pymysql.cursors.DictCursor) 
    
    cursor = cnx.cursor() 
    
    #create data
    for artist_id in range(1, 36):
        name = fake.name()
        concert_id = fake.random_int(min = 1, max = 10) # multiple artists may perform at the same concert 
    
        #insert data
        cursor.execute("""
               INSERT INTO artists (artist_id, artist_name, concert_id)
               VALUES (%s, %s, %s) """, 
               (artist_id, name, concert_id))
        
    q = "select * from artists"
    cursor.execute(q)
    for row in cursor.fetchall():
        print()
        print(row)
        
    cnx.commit()
    cursor.close()
    cnx.close()
    
def songs():
    # swap out connection parameters to match your own system
    cnx_host = 'localhost'
    cnx_user = 'root'
    cnx_pword = 'khwaja'
    cnx_db = 'music_reservation'
        
    cnx = pymysql.connect(host = cnx_host, user = cnx_user, password = cnx_pword, 
                       db = cnx_db, charset = 'utf8mb4', 
                           cursorclass = pymysql.cursors.DictCursor) 
    
    cursor = cnx.cursor() 
    
    # set start and end date parameters
    start_date = datetime.date(2020, 1, 1)
    end_date = datetime.date(2022, 12, 31)
    
    # predefine valid genres
    genres = [
        'pop', 'ska', 'punk', 
        'soul', 'folk', 'r&b', 
        'rock', 'alternative', 
        'hip hop', 'jazz', 'rap',
        'kpop', 'metal', 'classical']
    
    #create data
    for _ in range(1, 51):
        title = fake.text(max_nb_chars = 20)
        album = fake.sentence()
        genre = random.choice(genres)
        date = fake.date_between_dates(date_start = start_date, date_end = end_date)
        artist_id = fake.random_int(min = 1, max = 35) # a song may be performed by any artist more than once 
        
        # insert data 
        cursor.execute("""
               INSERT INTO songs (title, album, genre, release_date, artist_id)
               VALUES (%s, %s, %s, %s, %s) """, 
               (title, album, genre, date, artist_id))
        
    x = "select * from songs"
    cursor.execute(x)
    for row in cursor.fetchall():
        print()
        print(row)
        
    cnx.commit()
    cursor.close()
    cnx.close()
    
def venue_info():
    # swap out connection parameters to match your own system
    cnx_host = 'localhost'
    cnx_user = 'root'
    cnx_pword = 'khwaja'
    cnx_db = 'music_reservation'
        
    cnx = pymysql.connect(host = cnx_host, user = cnx_user, password = cnx_pword, 
                       db = cnx_db, charset = 'utf8mb4', 
                           cursorclass = pymysql.cursors.DictCursor) 
    
    cursor = cnx.cursor() 
    
    concert_id = [1, 2, 3, 4, 5, 6, 7, 8 ,9, 10]
    
    # create data 
    for venue_id in range(1, 11):
        name = fake.text(max_nb_chars = 15)
        capacity = fake.random_int(min = 200, max = 2000)
   
        # insert data 
        cursor.execute("""
               INSERT INTO venue (venue_id, venue_name, capacity, concert_id)
               VALUES (%s, %s, %s, %s) """, 
               (venue_id, name, capacity, concert_id[venue_id - 1]))
    
    # test
    x = "select * from venue"
    cursor.execute(x)
    for row in cursor.fetchall():
        print()
        print(row)
        
    cnx.commit()
    cursor.close()
    cnx.close()
    
def venue_staff(): 
    # swap out connection parameters to match your own system
    cnx_host = 'localhost'
    cnx_user = 'root'
    cnx_pword = 'khwaja'
    cnx_db = 'music_reservation'
        
    cnx = pymysql.connect(host = cnx_host, user = cnx_user, password = cnx_pword, 
                       db = cnx_db, charset = 'utf8mb4', 
                           cursorclass = pymysql.cursors.DictCursor) 
    
    cursor = cnx.cursor() 
    
    #create data
    for staff_id in range(1, 81):
        name = fake.name()
        email = fake.email()
        venue_id = fake.random_int(min = 1, max = 10)
        
        phone = fake.phone_number()
        max_phone_length = 12
        truncated_phone = phone[:max_phone_length]
        
        # insert data
        cursor.execute("""
               INSERT INTO staff(staff_id, name, email, phone, venue_id)
               VALUES (%s, %s, %s, %s, %s)""", 
               (staff_id, name, email, truncated_phone, venue_id))
        
     # test
    x = "select * from staff"
    cursor.execute(x)
    for row in cursor.fetchall():
        print()
        print(row)
         
    cnx.commit()
    cursor.close()
    cnx.close()
    
def venue_address(): 
    # swap out connection parameters to match your own system
    cnx_host = 'localhost'
    cnx_user = 'root'
    cnx_pword = 'khwaja'
    cnx_db = 'music_reservation'
        
    cnx = pymysql.connect(host = cnx_host, user = cnx_user, password = cnx_pword, 
                       db = cnx_db, charset = 'utf8mb4', 
                           cursorclass = pymysql.cursors.DictCursor)
    
    cursor = cnx.cursor()
    
    # create data 
    for venue_id in range(1, 11): 
        st_num = fake.building_number()
        st_name = fake.street_name()
        city = fake.city()
        zip_code = fake.postcode()
        
        # insert data 
        cursor.execute("""
               INSERT INTO address(street_number, street_name, city, zip_code, venue_id)
               VALUES (%s, %s, %s, %s, %s)""", 
               (st_num, st_name, city, zip_code, venue_id))
    
    # test
    x = "select * from address"
    cursor.execute(x)
    for row in cursor.fetchall():
        print()
        print(row)
        
    cnx.commit()
    cursor.close()
    cnx.close()
    
def main():
    # in this order
    
    user_info()
    ticket_info()
    concert_occasion_info()
    concert_info()
    reviews()
    promo_info()
    artist_info()
    songs()
    venue_info()
    venue_staff()
    venue_address()
    seating_info()
    
if __name__ == "__main__":
     main() 
    
    
    
    
    
    
    
    
    
    
    
    
    
    