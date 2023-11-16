CREATE VIEW session_and_user AS
SELECT
    session.session_id,
    session.user_id,
    session.connected_at,
    "user".firstname,
    "user".lastname,
    "user".email,
    "user".username,
    "user".created_at
FROM
    session
JOIN
    "user" ON session.user_id = "user".user_id;