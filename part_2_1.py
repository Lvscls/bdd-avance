from faker import Faker
import random
import datetime

fake = Faker()

insert_subscription_queries = []
for _ in range(60):
    user_id = random.randint(1, 85) 
    subscribed_at = fake.date_time_between_dates(datetime_start=datetime.datetime(2023, 1, 1),
                                                 datetime_end=datetime.datetime(2023, 6, 30))
    paid_amount = random.choice([10, 100, 1000])
    subscription_plan = random.choice(['monthly', 'yearly', 'lifetime'])

    insert_query = f"INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) " \
                   f"VALUES ('{subscribed_at}', {user_id}, {paid_amount}, '{subscription_plan}');"
    insert_subscription_queries.append(insert_query)

with open('part_2_1.sql', 'w') as file:
    file.write('\n'.join(insert_subscription_queries))
