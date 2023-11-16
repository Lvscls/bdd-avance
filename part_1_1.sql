CREATE TABLE IF NOT EXISTS "user" (
    user_id SERIAL PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    email VARCHAR(100),
    username VARCHAR(50),
    password VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS user_email_verification (
    uev_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES "user"(user_id),
    verified_at TIMESTAMP
);

CREATE TABLE IF NOT EXISTS session(
    session_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES "user"(user_id),
    connected_at TIMESTAMP
);

ALTER TABLE "user"
ADD CONSTRAINT username_length CHECK (LENGTH(username) >= 8);

ALTER TABLE "user"
ADD CONSTRAINT email_unique UNIQUE(email);

ALTER TABLE "user"
ADD CONSTRAINT password_length CHECK (LENGTH(password) >= 8);