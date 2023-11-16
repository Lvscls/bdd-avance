CREATE VIEW subscription_per_plan_per_month AS
SELECT
    EXTRACT(MONTH FROM s.subscribed_at) AS month,
    s.subscription_plan,
    SUM(s.paid) AS total_paid,
    COUNT(s.subscription_id) AS total_subscriptions
FROM
    subscription s
GROUP BY
    EXTRACT(MONTH FROM s.subscribed_at),
    s.subscription_plan
ORDER BY
    month, s.subscription_plan;