CREATE TABLE username_history (
    username_history_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES "user"(user_id),
    username_new VARCHAR(255),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE OR REPLACE FUNCTION update_username_history()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' OR TG_OP = 'UPDATE' THEN
        INSERT INTO username_history (user_id, username_new)
        VALUES (NEW.user_id, NEW.username);
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_username
AFTER INSERT OR UPDATE ON "user"
FOR EACH ROW
EXECUTE FUNCTION update_username_history();


INSERT INTO "user" (firstname, lastname, email, username, password) VALUES
    ('John', 'Doe', 'john@example.com', 'john_doe123', 'password1'),
    ('Jane', 'Smith', 'jane@example.com', 'jane_smith123', 'password2'),
    ('Alice', 'Johnson', 'alice@example.com', 'alice_j123', 'password3'),
    ('Bob', 'Brown', 'bob@example.com', 'bob_brown123', 'password4'),
    ('Charlie', 'Chaplin', 'charlie@example.com', 'charlie_c123', 'password5');

UPDATE "user" SET username = 'john_doe_updated' WHERE user_id = 101;
UPDATE "user" SET username = 'jane_smith_updated' WHERE user_id = 102;
UPDATE "user" SET username = 'alice_j_updated' WHERE user_id = 103;
UPDATE "user" SET username = 'bob_brown_updated' WHERE user_id = 104;
UPDATE "user" SET username = 'charlie_c_updated' WHERE user_id = 105;

SELECT * FROM username_history;
