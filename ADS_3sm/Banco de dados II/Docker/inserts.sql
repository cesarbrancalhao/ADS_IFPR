--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3 (Debian 16.3-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: cooler; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cooler (id, name, price, fans, fan_speed, noise_level) VALUES (1, 'Air Cooler WhiteLabel 50mm', 79.00, 1, 1000, 30);
INSERT INTO public.cooler (id, name, price, fans, fan_speed, noise_level) VALUES (2, 'Air Cooler WhiteLabel 70mm', 99.00, 2, 1500, 35);
INSERT INTO public.cooler (id, name, price, fans, fan_speed, noise_level) VALUES (3, 'Air Cooler WhiteLabel 90mm', 119.00, 3, 2000, 40);
INSERT INTO public.cooler (id, name, price, fans, fan_speed, noise_level) VALUES (4, 'Air Cooler WhiteLabel 110mm', 139.00, 4, 2500, 45);
INSERT INTO public.cooler (id, name, price, fans, fan_speed, noise_level) VALUES (5, 'Air Cooler WhiteLabel 130mm', 159.00, 5, 3000, 50);
INSERT INTO public.cooler (id, name, price, fans, fan_speed, noise_level) VALUES (6, 'Water Cooler WhiteLabel 120mm', 199.00, 2, 2000, 40);
INSERT INTO public.cooler (id, name, price, fans, fan_speed, noise_level) VALUES (7, 'Water Cooler WhiteLabel 140mm', 229.00, 3, 2500, 45);
INSERT INTO public.cooler (id, name, price, fans, fan_speed, noise_level) VALUES (8, 'Water Cooler WhiteLabel 160mm', 259.00, 4, 3000, 50);
INSERT INTO public.cooler (id, name, price, fans, fan_speed, noise_level) VALUES (9, 'Water Cooler WhiteLabel 180mm', 289.00, 5, 3500, 55);
INSERT INTO public.cooler (id, name, price, fans, fan_speed, noise_level) VALUES (10, 'Water Cooler WhiteLabel 240mm', 329.00, 6, 4000, 60);


--
-- Data for Name: cpu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (1, 'Intel Core i9-14900KS', 24, 4666.00, 63061, 4879, 150, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (2, 'AMD Ryzen 9 7950X', 16, 3258.00, 62772, 4279, 170, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (3, 'AMD Ryzen 9 7950X3D', 16, 3258.00, 62417, 4142, 120, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (4, 'Intel Core i9-13900KS', 24, 4346.00, 61726, 4753, 150, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (5, 'Intel Core i9-14900K', 24, 3955.00, 60515, 4749, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (6, 'Intel Core i9-14900KF', 24, 3889.00, 59821, 4717, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (7, 'Intel Core i9-13900K', 24, 3403.00, 59184, 4627, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (8, 'Intel Core i9-13900KF', 24, 3635.00, 58546, 4618, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (9, 'AMD Ryzen 9 9900X', 12, 3621.00, 53863, 4652, 120, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (10, 'Intel Core i7-14700K', 20, 2881.00, 53411, 4473, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (11, 'Intel Core i7-14700KF', 20, 2844.00, 53275, 4478, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (12, 'AMD Ryzen 9 7900X', 12, 2314.00, 51806, 4262, 170, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (13, 'Intel Core i9-13900F', 24, 3447.00, 51307, 4435, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (14, 'AMD Ryzen 9 7900X3D', 12, 2532.00, 50348, 4123, 120, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (15, 'AMD Ryzen 9 7900', 12, 2677.00, 48836, 4150, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (16, 'Intel Core i9-14900', 24, 4194.00, 47778, 4537, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (17, 'Intel Core i9-14900F', 24, 3831.00, 47527, 4551, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (18, 'Intel Core i9-13900', 24, 4194.00, 47357, 4344, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (19, 'Intel Core i7-13700K', 16, 2431.00, 46482, 4360, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (20, 'Intel Core i7-13790F', 16, 3330.00, 46309, 4159, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (21, 'Intel Core i7-13700KF', 16, 2169.00, 46242, 4351, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (22, 'AMD Ryzen 9 5950X', 16, 2598.00, 45638, 3469, 105, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (23, 'AMD Ryzen 9 5900XT', 16, 2532.00, 45340, 3301, 105, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (24, 'Intel Core i9-14900T', 24, 3984.00, 44248, 4192, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (25, 'Intel Core i7-14700F', 20, 2627.00, 44214, 4325, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (26, 'Intel Core i9-13900T', 24, 3984.00, 44059, 4209, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (27, 'Intel Core i9-12900KS', 16, 2822.00, 44012, 4345, 150, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (28, 'Intel Core i7-14700', 20, 2859.00, 43842, 4210, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (29, 'Intel Core i9-12900K', 16, 2235.00, 41489, 4165, 241, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (30, 'Intel Core i9-12900KF', 16, 2024.00, 41135, 4163, 241, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (31, 'Intel Core i5-14600KF', 14, 2206.00, 39399, 4295, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (32, 'Intel Core i5-14600K', 14, 2169.00, 39234, 4283, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (33, 'AMD Ryzen 9 5900X', 12, 1894.00, 39145, 3470, 105, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (34, 'Intel Core i7-13700F', 16, 2605.00, 38892, 4125, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (35, 'AMD Ryzen 9 3950X', 16, 3519.00, 38769, 2705, 105, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (36, 'Intel Core i7-14700T', 20, 2786.00, 38482, 4060, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (37, 'Intel Core i5-13600K', 14, 1654.00, 37983, 4139, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (38, 'Intel Core i5-13600KF', 14, 1741.00, 37833, 4133, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (39, 'Intel Core i7-13700', 16, 2314.00, 37118, 4136, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (40, 'Intel Core i9-12900F', 16, 2525.00, 36752, 4071, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (41, 'AMD Ryzen 7 7700X', 8, 1589.00, 35911, 4201, 105, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (42, 'Intel Core i5-14600', 14, 1850.00, 35047, 4073, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (43, 'Intel Core i7-12700K', 12, 2968.00, 34612, 4031, 190, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (44, 'AMD Ryzen 7 7700', 8, 2031.00, 34546, 4058, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (45, 'Intel Core i7-12700KF', 12, 1407.00, 34388, 4014, 190, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (46, 'Intel Core i9-12900', 16, 1879.00, 34297, 4048, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (47, 'AMD Ryzen 7 7800X3D', 8, 2307.00, 34238, 3748, 120, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (48, 'Intel Core i9-10980XE', 18, 6168.00, 32784, 2652, 165, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (49, 'AMD Ryzen 9 3900XT', 12, 2358.00, 32682, 2745, 105, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (50, 'Intel Core i5-14500', 14, 1734.00, 32669, 4007, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (51, 'AMD Ryzen 9 3900X', 12, 1516.00, 32636, 2706, 105, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (52, 'Intel Core i5-13600', 14, 1850.00, 32148, 4044, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (53, 'Intel Core i9-9980XE', 18, 7619.00, 32067, 2564, 165, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (54, 'Intel Core i5-13500', 14, 1763.00, 31981, 3887, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (55, 'AMD Ryzen 7 8700G', 8, 2155.00, 31707, 3928, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (56, 'AMD Ryzen 9 3900', 12, 3657.00, 30801, 2622, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (57, 'Intel Core i7-12700', 12, 1915.00, 30776, 3912, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (58, 'Intel Core i7-12700F', 12, 1799.00, 30661, 3873, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (59, 'AMD Ryzen 5 9600X', 6, 2024.00, 30510, 4512, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (60, 'AMD Ryzen 7 8700F', 8, 1894.00, 30508, 3880, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (61, 'Intel Core i9-9960X', 16, 3621.00, 30360, 2608, 165, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (62, 'Intel Core i9-9990XE', 14, 15696.00, 30162, 2970, 255, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (63, 'Intel Core i9-7980XE', 18, 6937.00, 30117, 2476, 165, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (64, 'Intel Core i9-12900T', 16, 3548.00, 30056, 3819, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (65, 'Intel Core i5-14600T', 14, 1850.00, 29449, 4153, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (66, 'Intel Core i9-7960X', 16, 2902.00, 28833, 2497, 165, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (67, 'AMD Ryzen 5 7600X', 6, 1393.00, 28479, 4147, 105, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (68, 'AMD Ryzen 7 5800X3D', 8, 2387.00, 28280, 3230, 105, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (69, 'Intel Core i9-9940X', 14, 6959.00, 27983, 2630, 165, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (70, 'Intel Core i9-10940X', 14, 5225.00, 27907, 2666, 165, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (71, 'AMD Ryzen 7 5800X', 8, 1240.00, 27866, 3445, 105, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (72, 'Intel Core i5-12600K', 10, 1269.00, 27712, 3948, 150, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (73, 'Intel Core i5-12600KF', 10, 1059.00, 27606, 3927, 150, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (74, 'Intel Core i5-13490F', 10, 1444.00, 27496, 3894, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (75, 'Intel Core i7-13700T', 16, 2786.00, 27185, 3882, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (76, 'Intel Core i5-13600T', 14, 1850.00, 27166, 3731, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (77, 'AMD Ryzen 5 7600', 6, 1320.00, 27112, 3912, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (78, 'AMD Ryzen 7 5700X', 8, 1117.00, 26674, 3383, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (79, 'AMD Ryzen 7 5700X3D', 8, 1480.00, 26338, 2981, 105, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (80, 'Intel Core i9-10920X', 12, 4782.00, 26238, 2724, 165, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (81, 'Intel Core i9-7940X', 14, 2300.00, 26025, 2488, 165, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (82, 'Intel Core i5-14400', 10, 1589.00, 25815, 3785, 148, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (83, 'Intel Core i5-14400T', 10, 1603.00, 25774, 3741, 82, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (84, 'Intel Core i5-14400F', 10, 1444.00, 25667, 3695, 148, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (85, 'AMD Ryzen 5 8600G', 6, 1313.00, 25287, 3865, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (86, 'Intel Core i9-11900K', 8, 1806.00, 25271, 3517, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (87, 'Intel Core i5-13400F', 10, 1349.00, 25207, 3651, 148, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (88, 'Intel Core i9-9920X', 12, 4172.00, 25163, 2639, 165, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (89, 'Intel Core i9-11900KF', 8, 1618.00, 25071, 3541, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (90, 'Intel Core i7-11700K', 8, 1516.00, 24620, 3406, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (91, 'AMD Ryzen 7 5700G', 8, 1146.00, 24553, 3283, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (92, 'AMD Ryzen 5 8400F', 6, 1139.00, 24359, 3668, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (93, 'Intel Core i7-11700KF', 8, 1661.00, 23965, 3383, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (94, 'Intel Core i5-14500T', 14, 1683.00, 23809, 3721, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (95, 'Intel Core i9-7920X', 12, 2169.00, 23680, 2508, 140, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (96, 'AMD Ryzen 7 3800XT', 8, 4056.00, 23622, 2802, 105, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (97, 'Intel Core i5-13500T', 14, 1683.00, 23282, 3639, 92, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (98, 'AMD Ryzen 7 3800X', 8, 1146.00, 23157, 2718, 105, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (99, 'Intel Core i5-13400', 10, 1299.00, 23120, 3439, 154, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (100, 'Intel Core i9-11900', 8, 1923.00, 22932, 3426, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (101, 'AMD Ryzen 7 PRO 3700', 8, 2387.00, 22902, 2685, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (102, 'Intel Core i9-11900KB', 8, 3911.00, 22894, 3303, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (103, 'Intel Core i9-10900K', 10, 2750.00, 22837, 3132, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (104, 'Intel Core i9-10900KF', 10, 1806.00, 22566, 3119, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (105, 'AMD Ryzen 7 3700X', 8, 703.00, 22555, 2660, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (106, 'Intel Core i9-10900X', 10, 4390.00, 22472, 2681, 165, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (107, 'Intel Core i9-10850K', 10, 1886.00, 22418, 3079, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (108, 'Intel Core i9-11900F', 8, 1523.00, 22337, 3409, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (109, 'AMD Ryzen 5 5600X', 6, 863.00, 21891, 3360, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (110, 'Intel Core i9-9900X', 10, 4034.00, 21823, 2561, 165, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (111, 'AMD Ryzen 5 8500G', 6, 1146.00, 21643, 3907, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (112, 'AMD Ryzen 5 5600', 6, 718.00, 21571, 3258, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (113, 'Intel Core i7-12700T', 12, 2460.00, 21561, 3629, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (114, 'Intel Core i5-12600', 6, 1966.00, 21264, 3812, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (115, 'Intel Core i5-13400T', 10, 1603.00, 21105, 3503, 82, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (116, 'Intel Core i9-7900X', 10, 2358.00, 21099, 2559, 140, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (117, 'Intel Core i7-11700F', 8, 1052.00, 21016, 3286, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (118, 'AMD Ryzen 7 PRO 4750G', 8, 2503.00, 20467, 2714, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (119, 'Intel Core i5-12490F', 6, 863.00, 20418, 3720, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (120, 'AMD Ryzen 5 5500GT', 6, 907.00, 20287, 3217, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (121, 'AMD Ryzen 5 5600GT', 6, 994.00, 20173, 3348, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (122, 'AMD Ryzen 7 4700G', 8, 1705.00, 20149, 2742, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (123, 'Intel Core i9-9820X', 10, 3265.00, 20114, 2456, 165, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (124, 'Intel Core i9-10900F', 10, 1574.00, 19978, 3030, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (125, 'Intel Core i5-12500', 6, 1465.00, 19888, 3689, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (126, 'AMD Ryzen 5 5600G', 6, 1030.00, 19888, 3191, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (127, 'Intel Core i9-10900', 10, 2895.00, 19837, 3030, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (128, 'Intel Core i7-11700', 8, 1371.00, 19755, 3118, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (129, 'Intel Core i5-11600KF', 6, 841.00, 19633, 3342, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (130, 'Intel Core i5-11600K', 6, 1001.00, 19603, 3350, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (131, 'Intel Core i5-12400F', 6, 645.00, 19537, 3503, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (132, 'Intel Core i9-9900KS', 8, 2895.00, 19495, 3037, 127, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (133, 'AMD Ryzen 5 5500', 6, 631.00, 19423, 3059, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (134, 'Intel Core i5-12400', 6, 1393.00, 19387, 3524, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (135, 'Intel Core i9-11900T', 8, 3185.00, 18968, 3326, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (136, 'Intel Core i7-10700K', 8, 1806.00, 18801, 3052, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (137, 'AMD Ryzen 5 3600XT', 6, 2677.00, 18646, 2760, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (138, 'Intel Core i7-10700KF', 8, 1415.00, 18603, 3042, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (139, 'Intel Core i9-9900KF', 8, 2169.00, 18290, 2930, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (140, 'Intel Core i9-9900K', 8, 2293.00, 18282, 2930, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (141, 'AMD Ryzen 5 3600X', 6, 573.00, 18199, 2652, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (142, 'Intel Core i7-9800X', 8, 1081.00, 18070, 2569, 165, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (143, 'Intel Core i5-11600', 6, 921.00, 18070, 3289, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (144, 'AMD Ryzen 5 3600', 6, 580.00, 17752, 2567, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (145, 'AMD Ryzen 7 2700X', 8, 1378.00, 17524, 2421, 105, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (146, 'Intel Core i7-6950X', 10, 1589.00, 17392, 2337, 140, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (147, 'Intel Core i5-11500', 6, 1226.00, 17376, 3137, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (148, 'Intel Core i7-7820X', 8, 645.00, 17134, 2522, 140, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (149, 'Intel Core i5-11400F', 6, 682.00, 17042, 2999, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (150, 'Intel Core i5-11400', 6, 791.00, 17028, 3030, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (151, 'Intel Core i5-12500T', 6, 1465.00, 16591, 3519, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (152, 'Intel Core i9-9900', 8, 2895.00, 16506, 2833, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (153, 'Intel Core i7-10700F', 8, 1509.00, 16430, 2879, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (154, 'Intel Core i7-10700', 8, 1770.00, 16429, 2906, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (155, 'AMD Ryzen 7 1800X', 8, 645.00, 16376, 2198, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (156, 'AMD Ryzen 5 PRO 4650G', 6, 740.00, 16176, 2655, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (157, 'Intel Core i5-12400T', 6, 1081.00, 16175, 3374, 74, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (158, 'AMD Ryzen 5 4500', 6, 529.00, 16137, 2597, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (159, 'AMD Ryzen 5 4600G', 6, 645.00, 16066, 2658, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (160, 'AMD Ryzen 7 2700', 8, 616.00, 15705, 2179, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (161, 'AMD Ryzen 7 1700X', 8, 1415.00, 15670, 2101, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (162, 'Intel Core i3-14100F', 4, 645.00, 15375, 3763, 110, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (163, 'Intel Core i7-11700T', 8, 2344.00, 15341, 2910, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (164, 'Intel Core i3-14100', 4, 972.00, 15016, 3732, 60, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (165, 'Intel Core i9-10900T', 10, 2532.00, 14822, 2469, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (166, 'AMD Ryzen 7 1700', 8, 500.00, 14821, 2001, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (167, 'Intel Core i3-12300', 4, 1037.00, 14695, 3630, 60, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (168, 'Intel Core i5-11600T', 6, 1545.00, 14679, 2870, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (169, 'Intel Core i3-13100F', 4, 870.00, 14627, 3606, 58, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (170, 'Intel Core i7-6900K', 8, 870.00, 14476, 2336, 140, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (171, 'Intel Core i7-9700K', 8, 1661.00, 14462, 2876, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (172, 'Intel Core i5-10600K', 6, 885.00, 14311, 2922, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (173, 'Intel Core i7-8086K', 6, 1661.00, 14287, 2852, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (174, 'Intel Core i7-9700KF', 8, 1226.00, 14266, 2876, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (175, 'Intel Core i5-10600KF', 6, 791.00, 14230, 2918, 125, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (176, 'Intel Core i3-12100F', 4, 573.00, 14123, 3463, 58, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (177, 'AMD Ryzen 5 2600X', 6, 573.00, 13910, 2384, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (178, 'Intel Core i5-11400T', 6, 1320.00, 13684, 2569, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (179, 'Intel Core i5-10600', 6, 943.00, 13684, 2932, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (180, 'Intel Core i7-8700K', 6, 1190.00, 13634, 2729, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (181, 'Intel Core i3-14100T', 4, 972.00, 13587, 3463, 69, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (182, 'Intel Core i3-12100', 4, 885.00, 13582, 3435, 60, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (183, 'Intel Core i3-12300T', 4, 1139.00, 13558, 3404, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (184, 'Intel Core i3-13100', 4, 870.00, 13423, 3377, 60, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (185, 'Intel Core i9-9900T', 8, 3185.00, 13312, 2457, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (186, 'Intel Core i7-9700F', 8, 1734.00, 13254, 2754, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (187, 'AMD Ryzen 5 2600', 6, 428.00, 13195, 2245, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (188, 'Intel Core i5-10500', 6, 1473.00, 13180, 2805, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (189, 'Intel Core i7-9700', 8, 1233.00, 13178, 2746, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (190, 'AMD Ryzen 5 3500X', 6, 478.00, 13177, 2505, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (191, 'AMD Ryzen 5 1600X', 6, 493.00, 13062, 2198, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (192, 'Intel Core i3-13100T', 4, 972.00, 13058, 3407, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (193, 'Intel Core i5-11500T', 6, 1393.00, 13054, 2556, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (194, 'Intel Core i7-7800X', 6, 1589.00, 12882, 2394, 140, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (195, 'Intel Core i7-8700', 6, 899.00, 12848, 2642, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (196, 'Intel Core i7-10700T', 8, 1915.00, 12839, 2586, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (197, 'AMD Ryzen 5 3500', 6, 791.00, 12791, 2501, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (198, 'Intel Core i7-5960X', 8, 1516.00, 12744, 1987, 140, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (199, 'Intel Core i3-12100T', 4, 885.00, 12650, 3291, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (200, 'AMD Ryzen 3 3300X', 4, 573.00, 12632, 2672, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (201, 'Intel Core i7-9700E', 8, 2344.00, 12600, 2559, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (202, 'AMD Ryzen 5 1600', 6, 885.00, 12281, 2066, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (203, 'Intel Core i5-10400F', 6, 645.00, 12197, 2546, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (204, 'Intel Core i5-10400', 6, 892.00, 12134, 2571, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (205, 'AMD Ryzen 3 3100', 4, 515.00, 11604, 2420, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (206, 'Intel Core i7-6850K', 6, 834.00, 11475, 2405, 140, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (207, 'Intel Core i5-10600T', 6, 1545.00, 11341, 2438, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (208, 'AMD Ryzen 3 4100', 4, 478.00, 11077, 2529, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (209, 'AMD Ryzen 3 4300G', 4, 754.00, 10920, 2556, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (210, 'Intel Core i7-9700T', 8, 2344.00, 10782, 2435, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (211, 'Intel Core i7-6800K', 6, 573.00, 10766, 2270, 140, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (212, 'Intel Core i5-9600KF', 6, 1153.00, 10692, 2741, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (213, 'Intel Core i5-9600K', 6, 979.00, 10675, 2740, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (214, 'Intel Core i5-9600', 6, 1161.00, 10417, 2740, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (215, 'Intel Core i7-5930K', 6, 1611.00, 10326, 2051, 140, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (216, 'Intel Core i3-10325', 4, 1378.00, 10268, 2863, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (217, 'Intel Core i5-8600K', 6, 718.00, 10200, 2592, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (218, 'Intel Core i7-8700T', 6, 2162.00, 10168, 2300, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (219, 'Intel Core i7-4960X', 6, 9071.00, 10099, 2084, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (220, 'Intel Core i5-10500T', 6, 718.00, 10057, 2290, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (221, 'Intel Core i5-9500F', 6, 812.00, 10028, 2601, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (222, 'Intel Core i3-10320', 4, 1008.00, 10011, 2839, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (223, 'Intel Core i5-8600', 6, 761.00, 9956, 2579, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (224, 'Intel Core i7-5820K', 6, 1008.00, 9840, 1994, 140, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (225, 'Intel Core i5-9500', 6, 892.00, 9805, 2574, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (226, 'Intel Core i5-10400T', 6, 1320.00, 9766, 2154, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (227, 'Intel Core i7-7700K', 4, 791.00, 9652, 2720, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (228, 'Intel Core i7-7740X', 4, 928.00, 9635, 2688, 112, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (229, 'Intel Core i5-9600T', 6, 1545.00, 9600, 2422, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (230, 'Intel Core i5-8500', 6, 718.00, 9549, 2455, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (231, 'Intel Core i7-4930K', 6, 428.00, 9403, 1961, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (232, 'Intel Core i5-9400', 6, 921.00, 9370, 2437, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (233, 'Intel Core i5-8600T', 6, 1444.00, 9339, 2281, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (234, 'Intel Core i3-10300', 4, 1153.00, 9316, 2696, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (235, 'Intel Core i3-10305', 4, 1690.00, 9291, 2815, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (236, 'AMD Ryzen 5 3400G', 4, 703.00, 9264, 2334, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (237, 'Intel Core i5-8400', 6, 653.00, 9232, 2382, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (238, 'AMD Ryzen 5 1500X', 4, 326.00, 9099, 2113, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (239, 'Intel Core i3-10105F', 4, 522.00, 8993, 2655, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (240, 'Intel Core i7-6700K', 4, 791.00, 8928, 2504, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (241, 'AMD Ryzen 5 3400GE', 4, 2576.00, 8907, 2295, 35, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (242, 'Intel Core i3-10100F', 4, 515.00, 8766, 2592, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (243, 'AMD Ryzen 5 2400G', 4, 537.00, 8729, 2148, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (244, 'Intel Core i3-10100', 4, 573.00, 8653, 2616, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (245, 'Intel Core i7-7700', 4, 776.00, 8645, 2454, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (246, 'Intel Core i3-10105', 4, 624.00, 8568, 2679, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (247, 'Intel Core i7-3970X', 6, 1770.00, 8541, 1850, 150, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (248, 'Intel Core i7-3960X', 6, 1988.00, 8446, 1800, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (249, 'Intel Core i5-9400T', 6, 1320.00, 8367, 2116, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (250, 'Intel Core i5-9500T', 6, 1393.00, 8211, 2167, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (251, 'Intel Core i7-3930K', 6, 355.00, 8203, 1747, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (252, 'Intel Core i3-10305T', 4, 1037.00, 8136, 2457, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (253, 'Intel Core i7-6700', 4, 558.00, 8084, 2291, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (254, 'Intel Core i7-4790K', 4, 718.00, 8070, 2466, 88, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (255, 'Intel Core i3-10105T', 4, 645.00, 7992, 2353, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (256, 'Intel Core i3-10300T', 4, 718.00, 7975, 2337, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (257, 'AMD Ryzen 5 1400', 4, 798.00, 7752, 1895, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (258, 'Intel Core i5-8500T', 6, 1661.00, 7724, 2013, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (259, 'Intel Core i3-9350K', 4, 863.00, 7700, 2783, 91, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (260, 'Intel Core i7-5775C', 4, 1262.00, 7670, 2267, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (261, 'Intel Core i7-7700T', 4, 1088.00, 7613, 2151, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (262, 'AMD Ryzen 3 2300X', 4, 1291.00, 7563, 2357, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (263, 'Intel Core i3-9350KF', 4, 1074.00, 7549, 2668, 91, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (264, 'Intel Core i5-8400T', 6, 1008.00, 7423, 1917, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (265, 'Intel Core i3-9320', 4, 1560.00, 7358, 2711, 62, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (266, 'Intel Core i7-4790', 4, 428.00, 7268, 2233, 84, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (267, 'Intel Core i7-6700T', 4, 718.00, 7220, 2073, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (268, 'Intel 300', 2, 595.00, 7160, 3235, 46, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (269, 'Intel Core i7-4771', 4, 936.00, 7145, 2195, 84, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (270, 'Intel Core i3-9300', 4, 1727.00, 7137, 2561, 62, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (271, 'AMD Ryzen 3 3200G', 4, 609.00, 7132, 2207, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (272, 'Intel Core i7-4770K', 4, 979.00, 7129, 2162, 84, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (273, 'Intel Core i7-990X', 6, 1291.00, 7110, 1579, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (274, 'Intel Core i7-4770', 4, 435.00, 7059, 2170, 84, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (275, 'Intel Core i7-4790S', 4, 899.00, 7015, 2208, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (276, 'AMD Ryzen 3 1300X', 4, 449.00, 6970, 2125, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (277, 'Intel Core i7-980', 6, 2104.00, 6926, 1539, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (278, 'Intel Core i3-8350K', 4, 1153.00, 6866, 2476, 91, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (279, 'Intel Core i5-7640X', 4, 2648.00, 6844, 2532, 112, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (280, 'Intel Core i7-980X', 6, 413.00, 6808, 1528, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (281, 'Intel Core i5-7600K', 4, 703.00, 6804, 2548, 91, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (282, 'AMD FX-9590 Eight-Core', 4, 2162.00, 6785, 1812, 220, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (283, 'AMD Ryzen 3 2200G', 4, 682.00, 6761, 2050, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (284, 'Intel Core i7-4770S', 4, 631.00, 6746, 2122, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (285, 'Intel Core i3-9100F', 4, 355.00, 6738, 2499, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (286, 'Intel Pentium Gold G7400', 2, 631.00, 6727, 2997, 46, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (287, 'Intel Core i3-9100', 4, 653.00, 6622, 2483, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (288, 'Intel Core i7-970', 6, 3795.00, 6553, 1467, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (289, 'Intel Core i5-7600', 4, 645.00, 6544, 2462, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (290, 'Intel Core i7-4820K', 4, 580.00, 6493, 1958, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (291, 'Intel Core i7-3770K', 4, 464.00, 6465, 2072, 77, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (292, 'Intel Core i7-3770', 4, 355.00, 6411, 2073, 77, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (293, 'Intel Core i7-4790T', 4, 1806.00, 6346, 2094, 45, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (294, 'Intel Core i5-6600K', 4, 507.00, 6326, 2328, 91, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (295, 'Intel Core i3-8300', 4, 863.00, 6297, 2262, 62, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (296, 'AMD Ryzen 3 1200', 4, 689.00, 6284, 1931, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (297, 'AMD FX-8370 Eight-Core', 4, 1357.00, 6185, 1626, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (298, 'Intel Core i7-3770S', 4, 435.00, 6184, 2042, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (299, 'AMD FX-9370 Eight-Core', 4, 1386.00, 6167, 1691, 220, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (300, 'Intel Core i3-9300T', 4, 1037.00, 6164, 2302, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (301, 'Intel Core i3-8100', 4, 355.00, 6109, 2217, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (302, 'AMD FX-8350 Eight-Core', 4, 645.00, 6062, 1581, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (303, 'Intel Core i5-6600', 4, 355.00, 6045, 2258, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (304, 'Intel Core i5-7500', 4, 449.00, 6034, 2264, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (305, 'Intel Core i7-4770T', 4, 537.00, 5973, 1931, 45, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (306, 'Intel Core i5-7600T', 4, 1066.00, 5919, 2162, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (307, 'Intel Core i7-3820', 4, 246.00, 5760, 1745, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (308, 'Intel Core i3-8300T', 4, 1146.00, 5749, 1987, 25, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (309, 'Intel Pentium Gold G7400T', 2, 464.00, 5737, 2549, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (310, 'Intel Core i7-2700K', 4, 645.00, 5725, 1818, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (311, 'Intel Core i5-4690K', 4, 362.00, 5683, 2192, 88, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (312, 'Intel Core i5-6600T', 4, 820.00, 5639, 2071, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (313, 'Intel Core i5-6500', 4, 283.00, 5624, 2108, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (314, 'Intel Core i5-5675C', 4, 653.00, 5579, 2232, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (315, 'Intel Core i5-4690', 4, 420.00, 5571, 2193, 84, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (316, 'Intel Core i5-4670K', 4, 377.00, 5566, 2146, 84, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (317, 'Intel Core i5-4690S', 4, 428.00, 5515, 2200, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (318, 'Intel Core i7-2600K', 4, 355.00, 5489, 1745, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (319, 'Intel Core i5-4670', 4, 283.00, 5488, 2136, 84, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (320, 'Intel Core i5-7400', 4, 413.00, 5473, 2084, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (321, 'Intel Core i3-9100T', 4, 885.00, 5458, 2067, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (322, 'Intel Core i7-3770T', 4, 1132.00, 5444, 1830, 45, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (323, 'AMD FX-8320 Eight-Core', 4, 355.00, 5443, 1467, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (324, 'Intel Core i5-6402P', 4, 537.00, 5369, 2003, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (325, 'Intel Core i5-4590', 4, 130.00, 5365, 2084, 84, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (326, 'Intel Core i7-2600', 4, 645.00, 5348, 1741, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (327, 'AMD FX-8370E Eight-Core', 4, 181.00, 5306, 1463, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (328, 'AMD FX-8300 Eight-Core', 4, 297.00, 5303, 1493, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (329, 'Intel Core i3-8100T', 4, 1480.00, 5276, 1881, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (330, 'AMD FX-8150 Eight-Core', 4, 304.00, 5238, 1429, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (331, 'Intel Core i5-4670R', 4, 2002.00, 5233, 2164, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (332, 'Intel Core i5-7500T', 4, 464.00, 5226, 1920, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (333, 'Intel Core i5-4570', 4, 399.00, 5220, 2032, 84, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (334, 'Intel Core i5-6400', 4, 500.00, 5165, 1956, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (335, 'AMD FX-8310 Eight-Core', 4, 1190.00, 5149, 1416, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (336, 'Intel Core i5-4670S', 4, 1545.00, 5148, 2089, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (337, 'Intel Core i5-4590S', 4, 94.00, 5132, 2046, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (338, 'Intel Core i7-4765T', 4, 3613.00, 5123, 1627, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (339, 'AMD FX-8320E Eight-Core', 4, 645.00, 5087, 1433, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (340, 'Intel Core i5-4570S', 4, 1436.00, 5016, 2004, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (341, 'Intel Core i3-7350K', 2, 326.00, 4965, 2575, 60, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (342, 'Intel Core i5-3570K', 4, 718.00, 4953, 2048, 77, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (343, 'Intel Core i5-3570', 4, 500.00, 4929, 2046, 77, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (344, 'Intel Core i5-4460', 4, 399.00, 4888, 1905, 84, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (345, 'AMD FX-8140 Eight-Core', 4, 1074.00, 4860, 1273, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (346, 'Intel Core i3-7320', 2, 769.00, 4844, 2504, 51, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (347, 'Intel Core i5-3550', 4, 2431.00, 4810, 1997, 77, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (348, 'Intel Core i5-6500T', 4, 1603.00, 4791, 1792, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (349, 'Intel Core i5-4440', 4, 638.00, 4786, 1858, 84, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (350, 'Intel Core i5-6500TE', 4, 3548.00, 4772, 1837, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (351, 'Intel Core i5-7400T', 4, 544.00, 4734, 1766, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (352, 'Intel Core i5-3470', 4, 246.00, 4675, 1940, 77, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (353, 'Intel Core i5-4430', 4, 500.00, 4659, 1799, 84, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (354, 'AMD FX-8120 Eight-Core', 4, 566.00, 4643, 1336, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (355, 'Intel Core i7-2600S', 4, 863.00, 4628, 1733, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (356, 'Intel Core i5-3570S', 4, 428.00, 4625, 1990, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (357, 'Intel Core i5-4460S', 4, 1153.00, 4579, 1845, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (358, 'Intel Celeron G6900', 2, 283.00, 4550, 2728, 46, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (359, 'AMD FX-6350 Six-Core', 3, 399.00, 4546, 1559, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (360, 'AMD Athlon 240GE', 2, 711.00, 4534, 1968, 35, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (361, 'Intel Core i3-7300', 2, 674.00, 4526, 2410, 51, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (362, 'Intel Pentium Gold G6605', 2, 1299.00, 4509, 2619, 58, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (363, 'Intel Core i5-3450', 4, 689.00, 4499, 1871, 77, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (364, 'AMD Athlon 3000G', 2, 645.00, 4487, 1985, 35, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (365, 'Intel Core i3-6320', 2, 696.00, 4473, 2308, 51, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (366, 'Intel Core i5-4670T', 4, 1879.00, 4441, 1771, 45, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (367, 'Intel Core i3-7101E', 2, 849.00, 4430, 2407, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (368, 'Intel Core i5-3550S', 4, 1081.00, 4422, 1961, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (369, 'Intel Core i5-4440S', 4, 892.00, 4391, 1804, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (370, 'Intel Core i5-3470S', 4, 522.00, 4387, 1890, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (371, 'Intel Core i5-3450S', 4, 645.00, 4375, 1873, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (372, 'Intel Pentium Gold G6505', 2, 544.00, 4371, 2649, 58, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (373, 'Intel Core i3-6300', 2, 537.00, 4343, 2280, 51, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (374, 'Intel Core i5-4430S', 4, 1371.00, 4329, 1766, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (375, 'Intel Core i3-7100', 2, 391.00, 4326, 2303, 51, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (376, 'Intel Core i5-3350P', 4, 435.00, 4287, 1794, 69, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (377, 'Intel Core i5-6400T', 4, 1153.00, 4282, 1639, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (378, 'Intel Pentium Gold G6600', 2, 1734.00, 4273, 2507, 58, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (379, 'Intel Pentium Gold G5620', 2, 870.00, 4272, 2461, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (380, 'Intel Core i5-3475S', 4, 1806.00, 4264, 1832, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (381, 'Intel Pentium Gold G6405', 2, 566.00, 4251, 2524, 58, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (382, 'Intel Core i5-3340', 4, 936.00, 4227, 1769, 77, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (383, 'Intel Core i3-7300T', 2, 928.00, 4211, 2136, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (384, 'AMD FX-6300 Six-Core', 3, 166.00, 4209, 1489, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (385, 'Intel Core i5-2450P', 4, 936.00, 4203, 1679, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (386, 'Intel Core i3-6100', 2, 616.00, 4141, 2189, 51, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (387, 'Intel Pentium Gold G6500', 2, 507.00, 4140, 2488, 58, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (388, 'Intel Core i5-2550K', 4, 500.00, 4134, 1755, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (389, 'Intel Pentium Gold G6400', 2, 682.00, 4124, 2467, 58, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (390, 'Intel Pentium Gold G5600F', 2, 283.00, 4124, 2255, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (391, 'Intel Core i5-2500', 4, 210.00, 4119, 1705, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (392, 'Intel Core i5-2500K', 4, 210.00, 4117, 1698, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (393, 'AMD Athlon 200GE', 2, 892.00, 4115, 1803, 35, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (394, 'Intel Core i5-3330', 4, 769.00, 4100, 1721, 77, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (395, 'AMD FX-6200 Six-Core', 3, 2024.00, 4100, 1407, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (396, 'Intel Core i5-4590T', 4, 566.00, 4074, 1655, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (397, 'AMD FX-8100 Eight-Core', 4, 711.00, 4046, 1137, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (398, 'Intel Core i3-6098P', 2, 428.00, 4017, 2113, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (399, 'Intel Celeron G6900T', 2, 304.00, 4003, 2343, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (400, 'Intel Core i3-6300T', 2, 943.00, 4002, 2018, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (401, 'Intel Core i3-7101TE', 2, 849.00, 3957, 2020, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (402, 'Intel Core i5-3340S', 4, 725.00, 3928, 1752, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (403, 'AMD FX-6120 Six-Core', 3, 420.00, 3887, 1409, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (404, 'Intel Core i5-3330S', 4, 1444.00, 3882, 1706, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (405, 'Intel Pentium Gold G6500T', 2, 544.00, 3874, 2238, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (406, 'Intel Core i5-2400', 4, 515.00, 3868, 1580, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (407, 'Intel Core i3-4370', 2, 297.00, 3857, 2156, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (408, 'AMD Phenom II X6 1100T', 6, 791.00, 3856, 1499, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (409, 'Intel Pentium Gold G5600', 2, 2307.00, 3825, 2276, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (410, 'Intel Pentium Gold G5500', 2, 718.00, 3823, 2247, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (411, 'Intel Core i5-2380P', 4, 595.00, 3797, 1607, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (412, 'AMD Athlon X4 845', 2, 253.00, 3797, 1680, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (413, 'AMD Phenom II X6 1090T', 6, 384.00, 3759, 1455, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (414, 'Intel Core i3-7100T', 2, 1052.00, 3756, 1944, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (415, 'Intel Pentium G4620', 2, 1008.00, 3754, 2249, 51, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (416, 'Intel Pentium Gold G5400', 2, 595.00, 3736, 2200, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (417, 'Intel Pentium Gold G5420', 2, 573.00, 3717, 2245, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (418, 'AMD PRO A12-9800', 4, 1226.00, 3705, 1686, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (419, 'Intel Pentium Gold G6505T', 2, 653.00, 3698, 2271, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (420, 'AMD FX-6100 Six-Core', 3, 319.00, 3683, 1316, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (421, 'Intel Core i5-2320', 4, 979.00, 3662, 1519, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (422, 'Intel Core i3-6100T', 2, 304.00, 3659, 1869, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (423, 'AMD Athlon X4 880K', 2, 682.00, 3659, 1633, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (424, 'AMD PRO A10-9700', 2, 1226.00, 3652, 1644, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (425, 'Intel Core i5-2310', 4, 341.00, 3650, 1490, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (426, 'Intel Core i3-4360', 2, 493.00, 3636, 2088, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (427, 'Intel Pentium G4600', 2, 645.00, 3609, 2169, 51, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (428, 'AMD A12-9800', 2, 689.00, 3597, 1668, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (429, 'AMD Athlon X4 950', 4, 210.00, 3591, 1640, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (430, 'Intel Core i3-4170', 2, 544.00, 3583, 2054, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (431, 'AMD A10-9700', 4, 863.00, 3548, 1616, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (432, 'Intel Core i3-4330', 2, 667.00, 3542, 1973, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (433, 'Intel Pentium Gold G6400T', 2, 464.00, 3541, 2101, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (434, 'Intel Pentium G4560', 2, 493.00, 3533, 2094, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (435, 'Intel Core i3-4350', 2, 812.00, 3527, 1961, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (436, 'Intel Core i3-4160', 2, 333.00, 3518, 1997, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (437, 'Intel Core i7-975', 4, 3323.00, 3493, 1499, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (438, 'AMD A10-7890K', 2, 986.00, 3484, 1560, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (439, 'AMD A12-9800E', 4, 4862.00, 3471, 1617, 35, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (440, 'Intel Core i3-4340', 2, 1306.00, 3460, 1979, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (441, 'AMD A10 PRO-7850B APU', 2, 1074.00, 3453, 1572, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (442, 'Intel Pentium Gold G5420T', 2, 464.00, 3452, 1956, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (443, 'AMD A10-7870K', 2, 3751.00, 3436, 1503, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (444, 'AMD Athlon X4 860K', 2, 500.00, 3428, 1527, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (445, 'Intel Core i5-2300', 4, 152.00, 3426, 1428, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (446, 'Intel Core i7-965', 4, 8185.00, 3424, 1475, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (447, 'AMD Phenom II X6 1075T', 6, 471.00, 3423, 1379, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (448, 'AMD Athlon X4 870K', 2, 246.00, 3410, 1558, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (449, 'Intel Core i3-4150', 2, 297.00, 3399, 1940, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (450, 'AMD A10-7850K APU', 2, 500.00, 3398, 1499, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (451, 'Intel Core i5-2500S', 4, 399.00, 3391, 1644, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (452, 'AMD Phenom II X6 1065T', 6, 478.00, 3387, 1362, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (453, 'Intel Core i3-4370T', 2, 1001.00, 3361, 1911, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (454, 'Intel Pentium Gold G6405T', 2, 464.00, 3341, 1936, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (455, 'Intel Core i7-960', 4, 355.00, 3340, 1458, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (456, 'AMD PRO A8-9600', 2, 863.00, 3322, 1513, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (457, 'Intel Core i7-880', 4, 500.00, 3319, 1442, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (458, 'AMD Athlon X4 840', 2, 899.00, 3319, 1488, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (459, 'AMD Phenom II X6 1055T', 6, 246.00, 3318, 1328, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (460, 'Intel Core i3-4130', 2, 297.00, 3312, 1882, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (461, 'Intel Pentium Gold G5500T', 2, 544.00, 3311, 1951, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (462, 'AMD A8-9600', 4, 812.00, 3304, 1487, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (463, 'AMD A10-7860K', 2, 384.00, 3281, 1498, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (464, 'Intel Core i5-4400E', 2, 1930.00, 3251, 1804, 37, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (465, 'Intel Core i5-4570T', 2, 507.00, 3224, 1915, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (466, 'AMD A8-7600 APU', 2, 210.00, 3219, 1447, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (467, 'Intel Core i3-4170T', 2, 1444.00, 3218, 1824, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (468, 'Intel Core i7-950', 4, 725.00, 3212, 1379, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (469, 'AMD A10-9700E', 4, 645.00, 3211, 1493, 35, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (470, 'AMD A10-7800 APU', 2, 355.00, 3208, 1463, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (471, 'AMD A10-6800K APU', 2, 341.00, 3208, 1605, 100, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (472, 'AMD A10-7700K APU', 2, 928.00, 3201, 1434, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (473, 'AMD A8-7670K', 4, 573.00, 3192, 1485, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (474, 'AMD Phenom II X6 1045T', 6, 341.00, 3189, 1279, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (475, 'AMD PRO A12-9800E', 4, 1226.00, 3171, 1518, 35, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (476, 'Intel Core i5-2400S', 4, 507.00, 3158, 1473, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (477, 'Intel Core i5-2405S', 4, 1567.00, 3157, 1434, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (478, 'AMD A8-7650K', 2, 268.00, 3129, 1403, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (479, 'Intel Core i7-870', 4, 283.00, 3127, 1384, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (480, 'Intel Core i3-4160T', 2, 428.00, 3115, 1753, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (481, 'AMD A10-6700 APU', 4, 783.00, 3110, 1606, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (482, 'AMD A10-6800B APU', 2, 928.00, 3106, 1654, 100, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (483, 'Intel Pentium Silver J5005', 4, 3780.00, 3102, 1206, 10, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (484, 'AMD FX-4330', 2, 5319.00, 3098, 1559, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (485, 'Intel Core i7-875K', 4, 1451.00, 3090, 1352, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (486, 'Intel Core i5-4570TE', 2, 2474.00, 3074, 1622, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (487, 'AMD A10-6790K APU', 2, 304.00, 3071, 1551, 100, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (488, 'Intel Pentium G4600T', 2, 849.00, 3062, 1775, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (489, 'AMD A10-5800B APU', 2, 319.00, 3034, 1579, 100, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (490, 'AMD A8-6600K APU', 2, 638.00, 3007, 1538, 100, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (491, 'Intel Core i5-3470T', 2, 1952.00, 3001, 1837, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (492, 'AMD Phenom II X6 1035T', 6, 783.00, 3000, 1226, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (493, 'Intel Core i7-860', 4, 348.00, 2992, 1329, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (494, 'AMD PRO A10-9700E', 2, 1008.00, 2985, 1418, 35, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (495, 'Intel Pentium G4560T', 2, 573.00, 2974, 1708, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (496, 'Intel Core i7-930', 4, 108.00, 2965, 1271, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (497, 'AMD A10-5800K APU', 2, 145.00, 2965, 1494, 100, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (498, 'Intel Core i7-940', 4, 2525.00, 2947, 1310, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (499, 'Intel Core i5-2500T', 4, 645.00, 2929, 1485, 45, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (500, 'Intel Celeron J4105', 4, 776.00, 2907, 1093, 10, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (501, 'AMD Athlon X4 830', 2, 1465.00, 2901, 1292, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (502, 'Intel Core i3-4130T', 2, 137.00, 2885, 1623, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (503, 'AMD A8-6500B APU', 2, 355.00, 2875, 1499, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (504, 'AMD A8-5600K APU', 4, 500.00, 2854, 1430, 100, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (505, 'Intel Celeron G5925', 2, 435.00, 2849, 2229, 58, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (506, 'AMD Phenom II X4 980', 4, 943.00, 2839, 1511, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (507, 'Intel Core i7-920', 4, 653.00, 2838, 1216, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (508, 'Intel Core i3-4150T', 2, 3026.00, 2835, 1575, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (509, 'AMD A8-6500 APU', 2, 195.00, 2822, 1473, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (510, 'Intel Celeron G5905', 2, 275.00, 2803, 2178, 58, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (511, 'Intel Core2 Extreme X9775', 4, 13098.00, 2780, 1451, 150, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (512, 'Intel Pentium G4500', 2, 696.00, 2768, 2148, 51, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (513, 'AMD A10-5700 APU', 2, 493.00, 2740, 1430, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (514, 'AMD Phenom II X4 970', 4, 304.00, 2739, 1417, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (515, 'Intel Celeron G4950', 2, 457.00, 2714, 2041, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (516, 'Intel Pentium G4520', 2, 2068.00, 2707, 2008, 51, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (517, 'Intel Core2 Extreme X9770', 4, 11669.00, 2689, 1395, 136, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (518, 'Intel Celeron G5900', 2, 348.00, 2643, 2107, 58, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (519, 'Intel Core i5-760', 4, 725.00, 2634, 1293, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (520, 'AMD Phenom II X4 965', 4, 464.00, 2631, 1363, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (521, 'Intel Core i5-680', 2, 2249.00, 2618, 1580, 73, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (522, 'AMD A8-5500B APU', 2, 355.00, 2616, 1327, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (523, 'AMD A8-5500 APU', 2, 420.00, 2607, 1335, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (524, 'Intel Celeron G4930', 2, 355.00, 2591, 1987, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (525, 'Intel Pentium G4400', 2, 645.00, 2582, 2005, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (526, 'Intel Celeron G5920', 2, 573.00, 2577, 2123, 58, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (527, 'AMD Phenom II X4 B97', 4, 573.00, 2539, 1320, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (528, 'Intel Core i5-750', 4, 435.00, 2536, 1232, 95, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (529, 'AMD Phenom II X4 975', 4, 500.00, 2536, 1350, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (530, 'Intel Core i5-670', 2, 2119.00, 2533, 1530, 73, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (531, 'AMD Phenom II X4 955', 4, 428.00, 2506, 1292, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (532, 'Intel Celeron G4920', 2, 290.00, 2500, 1960, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (533, 'Intel Core i5-2390T', 2, 718.00, 2493, 1516, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (534, 'Intel Core i5-661', 2, 580.00, 2469, 1446, 87, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (535, 'Intel Core i3-3250', 2, 355.00, 2442, 1837, 55, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (536, 'Intel Pentium G3470', 2, 2278.00, 2428, 2089, 53, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (537, 'AMD Athlon II X4 650', 4, 1204.00, 2426, 1305, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (538, 'Intel Core2 Extreme X9650', 4, 6233.00, 2410, 1262, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (539, 'AMD Phenom II X4 B95', 4, 449.00, 2401, 1242, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (540, 'AMD Phenom II X4 850', 4, 464.00, 2400, 1230, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (541, 'AMD Phenom II X4 840', 4, 217.00, 2399, 1297, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (542, 'Intel Celeron G4900', 2, 210.00, 2388, 1834, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (543, 'Intel Core i5-660', 2, 1806.00, 2386, 1421, 73, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (544, 'AMD Phenom II X4 945', 4, 319.00, 2384, 1233, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (545, 'Intel Core i3-3245', 2, 435.00, 2379, 1791, 55, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (546, 'AMD A8-3850 APU', 4, 493.00, 2361, 1212, 100, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (547, 'Intel Celeron G3920', 2, 7859.00, 2358, 1781, 51, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (548, 'AMD Phenom II X4 960T', 4, 377.00, 2353, 1299, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (549, 'Intel Pentium G4400T', 2, 1074.00, 2345, 1757, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (550, 'AMD Phenom II X4 940', 4, 1531.00, 2345, 1212, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (551, 'AMD Athlon II X4 645', 4, 464.00, 2340, 1255, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (552, 'AMD Phenom II X4 840T', 4, 420.00, 2330, 1264, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (553, 'Intel Celeron G3950', 2, 1037.00, 2322, 1851, 51, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (554, 'Intel Core i3-3240', 2, 101.00, 2320, 1786, 55, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (555, 'AMD A8-3870K APU', 4, 493.00, 2319, 1210, 100, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (556, 'Intel Core2 Extreme Q6850', 4, 10849.00, 2304, 1231, 130, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (557, 'AMD A10-6700T APU', 2, 638.00, 2299, 1290, 45, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (558, 'Intel Celeron G4930T', 2, 304.00, 2297, 1769, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (559, 'Intel Core i7-860S', 4, 725.00, 2280, 1093, 82, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (560, 'AMD Phenom II X4 925', 4, 145.00, 2270, 1152, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (561, 'Intel Core i3-3220', 2, 471.00, 2264, 1728, 55, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (562, 'Intel Celeron J3455', 4, 2532.00, 2256, 812, 10, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (563, 'Intel Core i5-650', 2, 152.00, 2247, 1368, 73, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (564, 'Intel Celeron G3930', 2, 413.00, 2247, 1780, 51, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (565, 'AMD Athlon II X4 640', 4, 79.00, 2244, 1212, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (566, 'Intel Celeron G4900T', 2, 428.00, 2239, 1737, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (567, 'AMD Athlon II X4 635', 4, 420.00, 2237, 1168, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (568, 'Intel Pentium G3460', 2, 907.00, 2231, 1986, 53, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (569, 'Intel Core i3-3225', 2, 1211.00, 2229, 1693, 55, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (570, 'Intel Core i3-3210', 2, 507.00, 2224, 1704, 55, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (571, 'Intel Celeron G3930TE', 2, 304.00, 2218, 1706, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (572, 'AMD Phenom II X4 920', 4, 195.00, 2209, 1132, 125, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (573, 'Intel Celeron G5905T', 2, 304.00, 2206, 1809, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (574, 'Intel Pentium G3440', 2, 370.00, 2202, 1917, 53, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (575, 'AMD A8-3820 APU', 4, 319.00, 2174, 1131, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (576, 'AMD A6-3670 APU', 4, 391.00, 2171, 1144, 100, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (577, 'Intel Pentium G3450', 2, 377.00, 2167, 1887, 53, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (578, 'Intel Celeron G3900', 2, 108.00, 2165, 1706, 51, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (579, 'Intel Celeron G5900T', 2, 304.00, 2155, 1640, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (580, 'AMD Athlon II X4 630', 4, 348.00, 2148, 1128, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (581, 'Intel Core2 Extreme Q6800', 4, 8164.00, 2145, 1124, 75, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (582, 'AMD Phenom II X4 910e', 4, 500.00, 2131, 1082, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (583, 'Intel Pentium G3430', 2, 667.00, 2127, 1912, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (584, 'AMD Phenom II X4 820', 4, 449.00, 2096, 1121, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (585, 'Intel Pentium G2140', 2, 326.00, 2092, 1842, 55, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (586, 'Intel Pentium G3260', 2, 101.00, 2090, 1867, 53, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (587, 'Intel Core i3-2125', 2, 1117.00, 2083, 1570, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (588, 'Intel Pentium G3258', 2, 370.00, 2076, 1857, 53, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (589, 'AMD Phenom II X4 830', 4, 137.00, 2070, 1084, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (590, 'AMD A6-3650 APU', 4, 928.00, 2070, 1038, 100, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (591, 'AMD A8-3800 APU', 4, 791.00, 2049, 1068, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (592, 'Intel Core i3-2130', 2, 355.00, 2040, 1562, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (593, 'Intel Celeron G3930T', 2, 283.00, 2040, 1657, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (594, 'Intel Core i3-2102', 2, 420.00, 2029, 1400, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (595, 'Intel Celeron G3900T', 2, 812.00, 2020, 1560, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (596, 'Intel Core i5-655K', 2, 551.00, 2017, 1446, 73, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (597, 'AMD Athlon II X4 620', 4, 391.00, 2015, 1063, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (598, 'AMD Athlon II X3 460', 3, 116.00, 2008, 1395, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (599, 'AMD Phenom II X4 810', 4, 1545.00, 2003, 1047, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (600, 'AMD Athlon II X4 615e', 4, 428.00, 2000, 1037, 45, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (601, 'Intel Pentium G3250', 2, 442.00, 1986, 1803, 53, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (602, 'AMD Athlon II X4 610e', 4, 116.00, 1964, 1037, 45, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (603, 'AMD Athlon II X4 605e', 4, 108.00, 1963, 986, 45, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (604, 'AMD Phenom II X4 805', 4, 1255.00, 1959, 1017, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (605, 'Intel Core i3-2120', 2, 435.00, 1956, 1511, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (606, 'Intel Pentium G3240', 2, 587.00, 1940, 1747, 53, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (607, 'Intel Core i3-3220T', 2, 580.00, 1940, 1489, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (608, 'AMD Phenom II X4 905e', 4, 384.00, 1936, 1012, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (609, 'Intel Pentium G3420', 2, 725.00, 1933, 1753, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (610, 'AMD A8-6500T APU', 2, 428.00, 1929, 1111, 45, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (611, 'Intel Pentium G2130', 2, 312.00, 1926, 1748, 55, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (612, 'Intel Celeron G1850', 2, 428.00, 1915, 1692, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (613, 'Intel Pentium G3420T', 2, 1153.00, 1912, 1570, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (614, 'Intel Pentium G3220', 2, 210.00, 1894, 1702, 54, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (615, 'Intel Pentium G2120', 2, 377.00, 1892, 1715, 55, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (616, 'AMD Athlon II X3 455', 3, 181.00, 1879, 1332, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (617, 'AMD A6-9500', 2, 362.00, 1869, 1624, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (618, 'AMD Athlon 5370 APU', 4, 4339.00, 1867, 755, 25, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (619, 'Intel Core i3-2100', 2, 355.00, 1854, 1421, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (620, 'AMD A6-3620 APU', 4, 159.00, 1851, 985, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (621, 'AMD Athlon II X3 450', 3, 181.00, 1847, 1301, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (622, 'AMD Phenom II X3 B77', 3, 159.00, 1844, 1310, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (623, 'Intel Pentium G3260T', 2, 355.00, 1837, 1609, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (624, 'Intel Core i3-2105', 2, 812.00, 1837, 1415, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (625, 'AMD A6-7480', 2, 246.00, 1836, 1558, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (626, 'AMD Athlon II X3 445', 3, 101.00, 1823, 1274, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (627, 'Intel Pentium G3250T', 2, 355.00, 1809, 1594, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (628, 'AMD A6-7470K', 1, 645.00, 1799, 1576, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (629, 'AMD Athlon II X4 600e', 4, 137.00, 1795, 913, 45, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (630, 'AMD Phenom II X3 B75', 3, 355.00, 1781, 1256, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (631, 'AMD Athlon 5350 APU', 4, 1066.00, 1779, 699, 25, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (632, 'Intel Celeron G1840', 2, 849.00, 1777, 1582, 53, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (633, 'AMD Phenom II X4 910', 4, 725.00, 1776, 988, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (634, 'AMD PRO A6-9500', 2, 537.00, 1770, 1520, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (635, 'AMD A6-9500E', 2, 413.00, 1756, 1347, 35, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (636, 'Intel Pentium G2030', 2, 428.00, 1747, 1606, 55, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (637, 'AMD Athlon II X3 440', 3, 101.00, 1712, 1194, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (638, 'Intel Celeron G1820', 2, 333.00, 1709, 1538, 53, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (639, 'Intel Celeron G1630', 2, 500.00, 1707, 1553, 55, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (640, 'AMD A6-3600 APU', 4, 174.00, 1697, 909, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (641, 'Intel Pentium G2020', 2, 246.00, 1684, 1554, 55, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (642, 'Intel Core i3-560', 2, 435.00, 1662, 1359, 73, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (643, 'AMD PRO A6-9500E', 2, 537.00, 1662, 1493, 35, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (644, 'AMD PRO A4-8350B', 1, 203.00, 1651, 1433, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (645, 'AMD Athlon II X3 435', 3, 1153.00, 1644, 1171, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (646, 'Intel Celeron G1820T', 2, 304.00, 1631, 1394, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (647, 'AMD A6-7400K APU', 2, 616.00, 1625, 1435, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (648, 'Intel Pentium G3220T', 2, 290.00, 1609, 1466, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (649, 'Intel Core i3-550', 2, 87.00, 1607, 1338, 73, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (650, 'Intel Pentium G2010', 2, 159.00, 1586, 1497, 55, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (651, 'Intel Pentium G2030T', 2, 943.00, 1581, 1442, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (652, 'AMD Athlon II X3 425', 3, 420.00, 1576, 1084, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (653, 'AMD A6-6420K APU', 2, 1081.00, 1576, 1553, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (654, 'Intel Celeron G1830', 2, 471.00, 1560, 1513, 53, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (655, 'Intel Celeron G1620', 2, 355.00, 1560, 1451, 55, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (656, 'AMD Athlon II X3 420e', 3, 841.00, 1557, 1058, 45, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (657, 'AMD Phenom II X3 720', 3, 464.00, 1554, 1103, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (658, 'AMD Phenom II X3 710', 3, 1226.00, 1551, 1070, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (659, 'Intel Celeron J4005', 2, 1219.00, 1550, 1082, 10, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (660, 'Intel Celeron G1620T', 2, 304.00, 1541, 1332, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (661, 'AMD Phenom II X3 B73', 3, 544.00, 1538, 1056, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (662, 'Intel Pentium G870', 2, 558.00, 1537, 1465, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (663, 'Intel Core i3-540', 2, 435.00, 1537, 1272, 73, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (664, 'AMD A4-6320 APU', 1, 500.00, 1530, 1529, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (665, 'AMD A4-7300 APU', 1, 130.00, 1528, 1479, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (666, 'Intel Core i3-2120T', 2, 435.00, 1524, 1162, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (667, 'Intel Celeron G1610', 2, 268.00, 1518, 1376, 55, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (668, 'Intel Core i3-530', 2, 326.00, 1499, 1167, 73, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (669, 'AMD A6-6400K APU', 1, 544.00, 1499, 1448, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (670, 'Intel Core i3-2100T', 2, 1552.00, 1488, 1088, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (671, 'AMD Phenom 8600B Triple-Core', 3, 101.00, 1464, 969, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (672, 'Intel Pentium G860', 2, 507.00, 1459, 1393, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (673, 'AMD A6-5400B APU', 1, 203.00, 1459, 1408, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (674, 'AMD Phenom II X2 565', 2, 1219.00, 1442, 1376, 80, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (675, 'AMD Athlon II X3 415e', 3, 544.00, 1441, 1028, 45, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (676, 'Intel Pentium G850', 2, 239.00, 1435, 1349, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (677, 'AMD Phenom II X2 B59', 2, 348.00, 1431, 1395, 80, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (678, 'Intel Pentium G2020T', 2, 341.00, 1430, 1298, 35, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (679, 'AMD Phenom II X3 740', 3, 638.00, 1424, 982, 95, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (680, 'AMD A4-6300 APU', 1, 304.00, 1424, 1402, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (681, 'Intel Pentium G645', 2, 507.00, 1418, 1337, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (682, 'AMD A6-3500 APU', 3, 435.00, 1417, 964, 65, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (683, 'Intel Celeron G555', 2, 399.00, 1388, 1289, 65, 'Intel_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (684, 'AMD Athlon 5150 APU', 4, 711.00, 1388, 546, 25, 'AMD_Socket');
INSERT INTO public.cpu (id, name, cores, price, totalbench, threadbench, tdp, socket) VALUES (685, 'Intel Pentium G6951', 2, 537.00, 1383, 1173, 73, 'Intel_Socket');


--
-- Data for Name: gpu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (1, 'GeForce RTX 4090', 450, 24, 35966, 15825.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (2, 'Radeon RX 7900 XTX', 355, 24, 29246, 8890.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (3, 'GeForce RTX 4080 SUPER', 320, 16, 28531, 9214.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (4, 'GeForce RTX 4080', 320, 16, 28063, 9534.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (5, 'Radeon RX 7900 XT', 315, 20, 25617, 6531.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (6, 'GeForce RTX 4070 Ti SUPER', 285, 16, 24426, 7430.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (7, 'GeForce RTX 4070 Ti', 285, 12, 22706, 7100.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (8, 'GeForce RTX 3090 Ti', 450, 24, 21741, 14970.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (9, 'Radeon RX 7900 GRE', 260, 16, 21644, 4974.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (10, 'GeForce RTX 4070 SUPER', 220, 12, 21214, 5308.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (11, 'Radeon RX 6900 XT', 300, 16, 20621, 3451.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (12, 'GeForce RTX 3090', 350, 24, 19901, 7951.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (13, 'Radeon RX 7800 XT', 263, 16, 19839, 4349.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (14, 'GeForce RTX 3080 Ti', 350, 12, 19592, 6150.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (15, 'Radeon RX 6800 XT', 300, 16, 19187, 4434.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (16, 'GeForce RTX 4070', 200, 12, 17846, 4747.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (17, 'GeForce RTX 3080', 320, 10, 17656, 7015.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (18, 'Radeon RX 7700 XT', 245, 12, 17245, 3380.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (19, 'Radeon RX 6800', 250, 16, 15972, 3194.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (20, 'GeForce RTX 3070 Ti', 290, 8, 14831, 3645.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (21, 'GeForce RTX 2080 Ti', 250, 11, 14628, 11064.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (22, 'GeForce RTX 3070', 220, 8, 13663, 3545.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (23, 'Radeon RX 6750 XT', 250, 12, 13595, 2597.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (24, 'GeForce RTX 4060 Ti', 160, 8, 13462, 3163.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (25, 'Radeon RX 6700 XT', 230, 12, 12808, 2629.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (26, 'GeForce RTX 3060 Ti', 200, 8, 11744, 2463.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (27, 'Radeon RX 7600 XT', 190, 16, 11379, 2610.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (28, 'Radeon RX 7600', 165, 8, 10817, 2032.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (29, 'GeForce RTX 4060', 115, 8, 10630, 2252.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (30, 'GeForce RTX 2070 SUPER', 215, 8, 10182, 4322.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (31, 'Radeon RX 6650 XT', 176, 8, 10027, 1665.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (32, 'Radeon RX 6600 XT', 160, 8, 9707, 1891.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (33, 'GeForce RTX 2060 SUPER', 175, 8, 8781, 3206.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (34, 'GeForce RTX 3060', 170, 12, 8739, 1562.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (35, 'Radeon RX 6600', 132, 8, 8158, 1543.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (36, 'GeForce RTX 2060', 160, 6, 7601, 3481.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (37, 'GeForce RTX 3050', 130, 8, 6205, 1523.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (38, 'GeForce GTX 1660 SUPER', 125, 6, 6078, 2022.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (39, 'GeForce GTX 980 Ti', 250, 6, 5792, 4364.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (40, 'GeForce GTX 1660', 120, 6, 5454, 2992.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (41, 'Radeon RX 6500 XT', 107, 4, 4973, 1170.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (42, 'Radeon RX 5500', 150, 4, 4781, 4803.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (43, 'GeForce GTX 1650 SUPER', 100, 4, 4702, 1632.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (44, 'Radeon RX 580', 185, 8, 4346, 949.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (45, 'GeForce GTX 1060', 120, 6, 4215, 2458.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (46, 'Radeon RX 6400', 53, 4, 3622, 1109.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (47, 'GeForce GTX 1650', 75, 4, 3552, 1031.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (48, 'GeForce GTX 780 Ti', 250, 3, 3373, 3803.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (49, 'Radeon R9 380', 190, 4, 2754, 1687.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (50, 'Radeon R9 280X', 250, 3, 2390, 1831.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (51, 'GeForce GTX 1050 Ti', 75, 4, 2356, 1324.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (52, 'GeForce GTX 960', 120, 4, 2303, 920.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (53, 'Radeon R9 280', 250, 3, 2076, 1795.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (54, 'GeForce GTX 950', 90, 2, 1909, 806.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (55, 'GeForce GTX 1050', 75, 2, 1861, 1722.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (56, 'Radeon RX 560', 80, 4, 1860, 1455.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (57, 'Radeon RX 460', 75, 4, 1760, 1453.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (58, 'Radeon Pro WX 4100', 50, 4, 1541, 904.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (59, 'Radeon R7 260X', 115, 2, 1469, 1506.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (60, 'Radeon R9 370', 150, 4, 1456, 1489.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (61, 'Radeon R7 360', 100, 2, 1368, 952.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (62, 'Radeon HD 7850', 130, 2, 1337, 1567.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (63, 'GeForce GTX 750 Ti', 60, 4, 1278, 1292.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (64, 'Radeon RX 550', 50, 4, 1195, 480.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (65, 'GeForce GTX 650 Ti BOOST', 134, 2, 1111, 838.00);
INSERT INTO public.gpu (id, name, tdp, vram, benchmark, price) VALUES (66, 'GeForce GTX 750', 55, 2, 1062, 1008.00);


--
-- Data for Name: hdd; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.hdd (id, name, price, reading_speed, storage_size) VALUES (1, 'HDD WhiteLabel 500GB', 110.00, 150, 500);
INSERT INTO public.hdd (id, name, price, reading_speed, storage_size) VALUES (2, 'HDD WhiteLabel 1TB', 180.00, 150, 1000);
INSERT INTO public.hdd (id, name, price, reading_speed, storage_size) VALUES (3, 'HDD WhiteLabel 2TB', 290.00, 150, 2000);
INSERT INTO public.hdd (id, name, price, reading_speed, storage_size) VALUES (4, 'SSD WhiteLabel 500GB', 195.00, 3000, 500);
INSERT INTO public.hdd (id, name, price, reading_speed, storage_size) VALUES (5, 'SSD WhiteLabel 1TB', 300.00, 3500, 1000);
INSERT INTO public.hdd (id, name, price, reading_speed, storage_size) VALUES (6, 'SSD WhiteLabel 2TB', 440.00, 4000, 2000);
INSERT INTO public.hdd (id, name, price, reading_speed, storage_size) VALUES (7, 'NVMe SSD WhiteLabel 500GB', 210.00, 4500, 500);
INSERT INTO public.hdd (id, name, price, reading_speed, storage_size) VALUES (8, 'NVMe SSD WhiteLabel 1TB', 350.00, 5500, 1000);
INSERT INTO public.hdd (id, name, price, reading_speed, storage_size) VALUES (9, 'NVMe SSD WhiteLabel 2TB', 500.00, 6500, 2000);


--
-- Data for Name: motherboard; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.motherboard (id, name, socket, price, sata_slots, nvme_slots, ram_slots, tdp) VALUES (1, 'WhiteLabel Motherboard A', 'AMD_Socket', 299.00, 7, 2, 4, 105);
INSERT INTO public.motherboard (id, name, socket, price, sata_slots, nvme_slots, ram_slots, tdp) VALUES (2, 'WhiteLabel Motherboard B', 'AMD_Socket', 329.00, 8, 3, 4, 107);
INSERT INTO public.motherboard (id, name, socket, price, sata_slots, nvme_slots, ram_slots, tdp) VALUES (3, 'WhiteLabel Motherboard C', 'AMD_Socket', 359.00, 9, 3, 4, 109);
INSERT INTO public.motherboard (id, name, socket, price, sata_slots, nvme_slots, ram_slots, tdp) VALUES (4, 'WhiteLabel Motherboard D', 'AMD_Socket', 389.00, 10, 3, 4, 111);
INSERT INTO public.motherboard (id, name, socket, price, sata_slots, nvme_slots, ram_slots, tdp) VALUES (5, 'WhiteLabel Motherboard E', 'AMD_Socket', 419.00, 11, 3, 4, 113);
INSERT INTO public.motherboard (id, name, socket, price, sata_slots, nvme_slots, ram_slots, tdp) VALUES (6, 'WhiteLabel Motherboard F', 'Intel_Socket', 299.00, 7, 2, 4, 105);
INSERT INTO public.motherboard (id, name, socket, price, sata_slots, nvme_slots, ram_slots, tdp) VALUES (7, 'WhiteLabel Motherboard G', 'Intel_Socket', 329.00, 8, 3, 4, 107);
INSERT INTO public.motherboard (id, name, socket, price, sata_slots, nvme_slots, ram_slots, tdp) VALUES (8, 'WhiteLabel Motherboard H', 'Intel_Socket', 359.00, 9, 3, 4, 109);
INSERT INTO public.motherboard (id, name, socket, price, sata_slots, nvme_slots, ram_slots, tdp) VALUES (9, 'WhiteLabel Motherboard I', 'Intel_Socket', 389.00, 10, 3, 4, 111);
INSERT INTO public.motherboard (id, name, socket, price, sata_slots, nvme_slots, ram_slots, tdp) VALUES (10, 'WhiteLabel Motherboard J', 'Intel_Socket', 419.00, 11, 3, 4, 113);


--
-- Data for Name: psu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.psu (id, name, wattage, price, efficiency) VALUES (1, 'PSU WhiteLabel 400W', 400, 129.00, 80);
INSERT INTO public.psu (id, name, wattage, price, efficiency) VALUES (2, 'PSU WhiteLabel 500W', 500, 149.00, 82);
INSERT INTO public.psu (id, name, wattage, price, efficiency) VALUES (3, 'PSU WhiteLabel 600W', 600, 169.00, 84);
INSERT INTO public.psu (id, name, wattage, price, efficiency) VALUES (4, 'PSU WhiteLabel 700W', 700, 189.00, 86);
INSERT INTO public.psu (id, name, wattage, price, efficiency) VALUES (5, 'PSU WhiteLabel 800W', 800, 209.00, 88);
INSERT INTO public.psu (id, name, wattage, price, efficiency) VALUES (6, 'PSU WhiteLabel 900W', 900, 229.00, 90);
INSERT INTO public.psu (id, name, wattage, price, efficiency) VALUES (7, 'PSU WhiteLabel 1000W', 1000, 249.00, 92);
INSERT INTO public.psu (id, name, wattage, price, efficiency) VALUES (8, 'PSU WhiteLabel 1100W', 1100, 269.00, 94);
INSERT INTO public.psu (id, name, wattage, price, efficiency) VALUES (9, 'PSU WhiteLabel 1200W', 1200, 289.00, 96);


--
-- Data for Name: ram; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ram (id, name, memory, frequency, price) VALUES (1, 'WhiteLabel DDR4 1600MHz 4GB', 4, 1600, 53.00);
INSERT INTO public.ram (id, name, memory, frequency, price) VALUES (2, 'WhiteLabel DDR4 1600MHz 8GB', 8, 1600, 95.00);
INSERT INTO public.ram (id, name, memory, frequency, price) VALUES (3, 'WhiteLabel DDR4 2133MHz 8GB', 8, 2133, 115.00);
INSERT INTO public.ram (id, name, memory, frequency, price) VALUES (4, 'WhiteLabel DDR4 2400MHz 8GB', 8, 2400, 130.00);
INSERT INTO public.ram (id, name, memory, frequency, price) VALUES (5, 'WhiteLabel DDR4 2400MHz 16GB', 16, 2400, 215.00);
INSERT INTO public.ram (id, name, memory, frequency, price) VALUES (6, 'WhiteLabel DDR4 2666MHz 8GB', 8, 2666, 155.00);
INSERT INTO public.ram (id, name, memory, frequency, price) VALUES (7, 'WhiteLabel DDR4 2666MHz 16GB', 16, 2666, 270.00);
INSERT INTO public.ram (id, name, memory, frequency, price) VALUES (8, 'WhiteLabel DDR4 2666MHz 32GB', 32, 2666, 455.00);
INSERT INTO public.ram (id, name, memory, frequency, price) VALUES (9, 'WhiteLabel DDR4 3200MHz 8GB', 8, 3200, 170.00);
INSERT INTO public.ram (id, name, memory, frequency, price) VALUES (10, 'WhiteLabel DDR4 3200MHz 16GB', 16, 3600, 340.00);
INSERT INTO public.ram (id, name, memory, frequency, price) VALUES (11, 'WhiteLabel DDR4 3200MHz 32GB', 32, 3200, 620.00);


--
-- Name: cooler_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cooler_id_seq', 10, true);


--
-- Name: cpu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cpu_id_seq', 685, true);


--
-- Name: gpu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gpu_id_seq', 66, true);


--
-- Name: hdd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hdd_id_seq', 9, true);


--
-- Name: motherboard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.motherboard_id_seq', 10, true);


--
-- Name: psu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.psu_id_seq', 9, true);


--
-- Name: ram_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ram_id_seq', 11, true);


--
-- PostgreSQL database dump complete
--

