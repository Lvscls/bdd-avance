CREATE VIEW session_per_month AS
SELECT
    EXTRACT(MONTH FROM connected_at) AS month,
    COUNT(*) AS session_count
FROM
    session
GROUP BY
    EXTRACT(MONTH FROM connected_at)
ORDER BY
    month;
