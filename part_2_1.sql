CREATE TABLE subscription(
    subscription_id SERIAL PRIMARY KEY ,
    subscribed_at TIMESTAMP,
    user_id INTEGER,
    paid INTEGER,
    subscription_plan VARCHAR(255)
);

INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-05-02 12:33:39.587291', 73, 10, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-01-19 07:38:07.659935', 17, 1000, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-06-04 17:58:27.614189', 75, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-02-15 19:03:43.009557', 79, 1000, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-06-26 05:00:58.216932', 9, 1000, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-04-05 06:27:27.767905', 50, 10, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-03-10 20:36:29.008207', 64, 1000, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-05-02 14:48:28.803519', 39, 1000, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-03-30 17:45:14.782458', 34, 10, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-02-01 00:11:19.597257', 46, 1000, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-04-13 22:11:07.221890', 17, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-01-07 23:18:22.156228', 55, 1000, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-04-05 10:03:36.091451', 43, 1000, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-02-25 10:29:34.552931', 63, 1000, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-06-06 04:30:52.402237', 1, 1000, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-02-09 22:30:34.286773', 23, 1000, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-05-13 14:19:38.855335', 45, 10, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-03-06 02:00:50.760038', 58, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-02-17 11:13:34.780578', 20, 1000, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-05-29 11:01:51.886267', 12, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-02-26 15:08:59.943060', 9, 10, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-03-24 08:38:22.087322', 76, 1000, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-04-24 11:34:20.577963', 82, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-03-22 07:13:26.299812', 75, 100, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-06-04 07:44:43.702958', 38, 1000, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-03-04 08:42:10.548957', 32, 1000, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-03-05 12:49:40.083852', 37, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-04-23 03:38:05.113889', 14, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-06-25 09:26:50.404555', 69, 10, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-06-25 23:03:50.361549', 64, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-04-21 14:58:37.049815', 32, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-03-19 05:38:18.729617', 6, 100, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-03-21 06:42:10.644612', 82, 100, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-04-21 05:17:20.557291', 75, 1000, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-02-22 11:47:26.569247', 47, 10, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-01-25 22:25:52.367841', 4, 1000, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-05-25 13:59:09.480573', 9, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-06-06 20:17:12.731521', 51, 10, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-02-13 03:47:53.935411', 63, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-05-18 09:37:00.668373', 17, 1000, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-05-20 21:15:50.270174', 57, 100, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-04-03 18:49:25.006243', 83, 100, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-02-06 00:47:58.375490', 33, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-06-03 09:43:40.861398', 61, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-02-24 00:06:05.597594', 13, 100, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-05-13 07:50:15.001675', 69, 10, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-01-19 20:17:55.874648', 47, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-04-09 21:38:21.597740', 58, 100, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-03-04 14:37:54.592330', 11, 10, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-04-24 01:29:47.180467', 3, 100, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-05-13 03:13:50.837394', 35, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-02-13 23:33:09.273567', 23, 100, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-06-12 02:13:21.360548', 13, 1000, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-04-28 17:47:13.793855', 24, 10, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-03-06 00:06:52.964109', 12, 10, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-02-10 18:16:28.441850', 49, 10, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-01-11 20:16:52.898511', 31, 1000, 'yearly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-03-29 23:55:51.979041', 52, 1000, 'monthly');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-03-11 05:17:38.242099', 5, 1000, 'lifetime');
INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('2023-05-10 01:36:08.548247', 17, 1000, 'monthly');