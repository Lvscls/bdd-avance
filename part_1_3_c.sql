CREATE VIEW very_active_users_may AS 
SELECT
    "user".username,
    COUNT(session.session_id) AS total_sessions
FROM
    "user"
JOIN
    session ON "user".user_id = session.user_id
WHERE
    EXTRACT(MONTH FROM session.connected_at) = 5 
GROUP BY
    "user".username
HAVING
    COUNT(session.session_id) > 0.6 * (
        SELECT AVG(session_count)
        FROM (
            SELECT
                "user".user_id,
                COUNT(session.session_id) AS session_count
            FROM
                "user"
            JOIN
                session ON "user".user_id = session.user_id
            WHERE
                EXTRACT(MONTH FROM session.connected_at) = 5
            GROUP BY
                "user".user_id
        ) AS user_session_counts
    );
