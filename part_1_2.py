from faker import Faker
import random
import datetime

fake = Faker()
user_creation_dates = []
email_verification_dates = []

insert_user_queries = []
for _ in range(100):
    firstname = fake.first_name()
    lastname = fake.last_name()
    email = fake.email()
    username = fake.user_name() + str(random.randint(100, 999))  
    password = fake.password(length=random.randint(8, 20))
    created_at = fake.date_time_between_dates(datetime_start=datetime.datetime(2023, 1, 1),
                                              datetime_end=datetime.datetime(2023, 6, 30))
    user_creation_dates.append(created_at)
    insert_query = f"INSERT INTO \"user\" (firstname, lastname, email, username, password, created_at) VALUES ('{firstname}', '{lastname}', '{email}', '{username}', '{password}', '{created_at}');"
    insert_user_queries.append(insert_query)

insert_email_verification_queries = []
for user_id in range(1, min(86, len(user_creation_dates) + 1)):
    created_at = user_creation_dates[user_id - 1]
    verified_at = fake.date_time_between_dates(datetime_start=created_at,
                                               datetime_end=datetime.datetime(2023, 6, 30))
    email_verification_dates.append(verified_at)
    insert_query = f"INSERT INTO user_email_verification (user_id, verified_at) VALUES ({user_id}, '{verified_at}');"
    insert_email_verification_queries.append(insert_query)

insert_session_queries = []
for _ in range(1000):
    user_id = random.randint(1, 85) 
    verification_date = email_verification_dates[user_id - 1]
    created_at = user_creation_dates[user_id - 1]
    connected_at = fake.date_time_between_dates(datetime_start=max(created_at, verification_date),
                                                datetime_end=datetime.datetime(2023, 6, 30))
    insert_query = f"INSERT INTO session (user_id, connected_at) VALUES ({user_id}, '{connected_at}');"
    insert_session_queries.append(insert_query)

with open('part_1_2.sql', 'w') as file:
    file.write('\n'.join(insert_user_queries + insert_email_verification_queries + insert_session_queries))
