-- 1. Добавление пользователей
INSERT INTO users (username, email, password, address, phone_number, is_admin)
VALUES
('marat_badamshin', 'marat_badamshin@mail.ru', 'yamarat1234', 'Moscow, Leninsky pr., 123', '+79847574574', FALSE),
('dima_bessonov', 'dima_bessonov@mail.ru', 'dimon2003228', 'Moscow, Butlerova st., 199', '+79847272535', FALSE),
('roman_abramov', 'roman_abramov@gmail.com', '_ssjd34345', 'Moscow, Nikolskaya st., 26', '+79847456789', TRUE),
('anna_ivanova', 'anna_ivanova@gmail.com', 'anna1985pass', 'Moscow, Tverskaya st., 5', '+79847654721', FALSE),
('nikita_petrov', 'nikita_petrov@mail.ru', 'nik123456', 'Moscow, Prospekt Mira, 17', '+79847653122', FALSE),
('svetlana_sokolova', 'svetlana_sokolova@yahoo.com', 'sokol_sveta', 'Moscow, Komsomolskaya st., 4', '+79847324556', FALSE),
('aleksandr_karpov', 'aleksandr_karpov@mail.ru', 'karpov777', 'Moscow, Zubovsky Blvd., 20', '+79847125487', FALSE),
('elena_kozlova', 'elena_kozlova@gmail.com', 'kozlenok92', 'Moscow, Bolshaya Yakimanka, 45', '+79847987645', FALSE),
('andrey_fedorov', 'andrey_fedorov@mail.ru', 'fedorovandr34', 'Moscow, Leningradsky pr., 55', '+79847435890', TRUE),
('irina_orlova', 'irina_orlova@gmail.com', 'orlovairina01', 'Moscow, Krasnaya Presnya st., 12', '+79847356781', FALSE),
('pavel_ivanov', 'pavel_ivanov@mail.ru', 'pavelpass123', 'Moscow, Kutuzovsky pr., 64', '+79847632145', FALSE),
('olga_belova', 'olga_belova@ya.ru', 'belova_olya', 'Moscow, Arbat st., 9', '+79847234567', FALSE),
('vladimir_egorov', 'vladimir_egorov@mail.ru', 'egorov555', 'Moscow, Varshavskoe shosse, 37', '+79847123678', FALSE);


-- 2. Добавление категорий
INSERT INTO categories (name)
VALUES
('Electronics'),      -- Для смартфонов, ноутбуков, планшетов и других электронных устройств
('Home Appliances'),  -- Для крупной бытовой техники, такой как холодильники, стиральные машины
('Accessories'),      -- Для аксессуаров, таких как наушники, умные часы
('Televisions'),      -- Для телевизоров
('Cameras'),          -- Для фото- и видеокамер
('Kitchen Appliances'); -- Для кухонной техники, такой как микроволновки, блендеры

-- 3. Добавление товаров
INSERT INTO products (name, description, price, stock, category_id, attributes)
VALUES
('Smartphone', 'Iphone 16 Pro Max 512 GB', 149990.99, 50, 1, '{"color": "black", "warranty": "1 year"}'),
('Laptop', '15-inch laptop with Intel i5 processor', 129990.99, 30, 1, '{"color": "silver", "warranty": "2 years"}'),
('Refrigerator', 'LG GC-B257JEYV', 139890.50, 10, 2, '{"color": "white", "energy_class": "A++"}'),
('Headphones', 'Sony XM4', 29990.99, 100, 3, '{"color": "black", "battery_life": "40 hours"}'),
('Smartphone', 'Samsung Galaxy S23 Ultra 256 GB', 124990.99, 40, 1, '{"color": "green", "warranty": "1 year"}'),
('Laptop', 'MacBook Air M2 13-inch 256 GB', 99990.99, 25, 1, '{"color": "space gray", "warranty": "1 year"}'),
('Refrigerator', 'Samsung RB38T676FB1', 119990.00, 15, 2, '{"color": "black", "energy_class": "A+"}'),
('Washing Machine', 'Bosch WAX32M40', 79990.99, 20, 2, '{"color": "white", "capacity": "10 kg", "energy_class": "A++"}'),
('Smartwatch', 'Apple Watch Series 9 GPS 45mm', 48990.00, 80, 3, '{"color": "starlight", "battery_life": "18 hours"}'),
('TV', 'Samsung QLED 65-inch Q70A', 89990.50, 12, 4, '{"resolution": "4K", "screen_type": "QLED"}'),
('Microwave', 'Panasonic NN-SN686S', 24990.00, 35, 2, '{"color": "stainless steel", "power": "1200W"}'),
('Camera', 'Canon EOS R6 Mark II Body', 179990.99, 5, 5, '{"sensor": "full-frame", "warranty": "2 years"}'),
('Vacuum Cleaner', 'Dyson V15 Detect', 69990.99, 40, 2, '{"type": "cordless", "battery_life": "60 minutes"}'),
('Air Conditioner', 'Daikin FTXB35C', 45990.99, 10, 2, '{"cooling_capacity": "12000 BTU", "energy_class": "A"}'),
('Tablet', 'iPad Pro 12.9-inch 128 GB', 119990.99, 30, 1, '{"color": "silver", "warranty": "1 year"}'),
('Blender', 'Philips HR3655', 8990.00, 50, 2, '{"power": "1400W", "capacity": "2 L"}');

-- 4. Связь товаров и категорий
INSERT INTO product_category (product_id, category_id)
VALUES
(1, 1),  -- Smartphone (Iphone 16 Pro Max) in Electronics
(2, 1),  -- Laptop (15-inch with Intel i5) in Electronics
(3, 2),  -- Refrigerator (LG GC-B257JEYV) in Home Appliances
(4, 3),  -- Headphones (Sony XM4) in Accessories
(5, 1),  -- Smartphone (Samsung Galaxy S23 Ultra) in Electronics
(6, 1),  -- Laptop (MacBook Air M2) in Electronics
(7, 2),  -- Refrigerator (Samsung RB38T676FB1) in Home Appliances
(8, 2),  -- Washing Machine (Bosch WAX32M40) in Home Appliances
(9, 3),  -- Smartwatch (Apple Watch Series 9) in Accessories
(10, 4), -- TV (Samsung QLED 65-inch Q70A) in Televisions
(11, 6), -- Microwave (Panasonic NN-SN686S) in Kitchen Appliances
(12, 5), -- Camera (Canon EOS R6 Mark II) in Cameras
(13, 2), -- Vacuum Cleaner (Dyson V15 Detect) in Home Appliances
(14, 2), -- Air Conditioner (Daikin FTXB35C) in Home Appliances
(15, 1), -- Tablet (iPad Pro 12.9-inch) in Electronics
(16, 6); -- Blender (Philips HR3655) in Kitchen Appliances


-- 5. Добавление корзин
INSERT INTO carts (user_id)
VALUES
(1),  -- marat_badamshin cart
(3),  -- roman_abramov cart
(4),  -- anna_ivanova cart
(5),  -- nikita_petrov cart
(6),  -- svetlana_sokolova cart
(7),  -- aleksandr_karpov cart
(8),  -- elena_kozlova cart
(9),  -- andrey_fedorov cart
(10), -- irina_orlova cart
(11), -- pavel_ivanov cart
(12), -- olga_belova cart
(13); -- vladimir_egorov cart


-- 6. Добавление элементов корзины
INSERT INTO cart_items (cart_id, product_id, quantity)
VALUES
(1, 1, 2),    -- 2 Smartphones in marat_badamshin cart
(1, 4, 1),    -- 1 Headphones in marat_badamshin cart
(1, 6, 1),    -- 1 MacBook Air M2 in marat_badamshin cart

(2, 2, 1),    -- 1 Laptop in roman_abramov cart
(2, 9, 2),    -- 2 Apple Watches in roman_abramov cart

(3, 5, 1),    -- 1 Samsung Galaxy S23 Ultra in anna_ivanova cart
(3, 7, 1),    -- 1 Samsung Refrigerator in anna_ivanova cart

(4, 6, 1),    -- 1 MacBook Air M2 in nikita_petrov cart
(4, 11, 1),   -- 1 Panasonic Microwave in nikita_petrov cart
(4, 15, 2),   -- 2 iPad Pro in nikita_petrov cart

(5, 9, 2),    -- 2 Apple Watch Series 9 in svetlana_sokolova cart
(5, 13, 1),   -- 1 Dyson Vacuum Cleaner in svetlana_sokolova cart

(6, 7, 1),    -- 1 Samsung Refrigerator in aleksandr_karpov cart
(6, 10, 1),   -- 1 Samsung QLED TV in aleksandr_karpov cart
(6, 12, 1),   -- 1 Canon EOS R6 Camera in aleksandr_karpov cart

(7, 10, 1),   -- 1 Samsung QLED TV in elena_kozlova cart
(7, 13, 2),   -- 2 Dyson Vacuum Cleaners in elena_kozlova cart

(8, 12, 1),   -- 1 Canon EOS R6 Camera in andrey_fedorov cart
(8, 16, 1),   -- 1 Philips Blender in andrey_fedorov cart

(9, 13, 1),   -- 1 Dyson Vacuum Cleaner in irina_orlova cart
(9, 11, 2),   -- 2 Panasonic Microwaves in irina_orlova cart

(10, 15, 1),  -- 1 iPad Pro in pavel_ivanov cart
(10, 4, 1),   -- 1 Sony Headphones in pavel_ivanov cart
(10, 8, 1),   -- 1 Bosch Washing Machine in pavel_ivanov cart

(11, 11, 1),  -- 1 Panasonic Microwave in olga_belova cart
(11, 16, 2),  -- 2 Philips Blenders in olga_belova cart

(12, 16, 1),  -- 1 Philips Blender in vladimir_egorov cart
(12, 5, 1),   -- 1 Samsung Galaxy S23 Ultra in vladimir_egorov cart
(12, 10, 1);  -- 1 Samsung QLED TV in vladimir_egorov cart


-- 7. Добавление заказов
INSERT INTO orders (user_id, total_price, status, order_date, delivery_date)
VALUES
(1, 329972.97, 'new', NOW(), NULL),  -- Order by marat_badamshin
(3, 129990.99, 'shipped', NOW() - INTERVAL '5 days', NOW() + INTERVAL '2 days'),  -- Order by roman_abramov
(4, 89990.99, 'completed', NOW() - INTERVAL '15 days', NOW() - INTERVAL '10 days'),  -- Order by anna_ivanova
(5, 258990.99, 'cancelled', NOW() - INTERVAL '8 days', NULL),  -- Order by nikita_petrov
(6, 159980.99, 'new', NOW(), NULL),  -- Order by svetlana_sokolova
(7, 197890.50, 'shipped', NOW() - INTERVAL '3 days', NOW() + INTERVAL '4 days'),  -- Order by aleksandr_karpov
(8, 205990.99, 'completed', NOW() - INTERVAL '20 days', NOW() - INTERVAL '15 days'),  -- Order by elena_kozlova
(9, 89990.50, 'new', NOW(), NULL),  -- Order by andrey_fedorov
(10, 229990.99, 'completed', NOW() - INTERVAL '25 days', NOW() - INTERVAL '20 days'),  -- Order by irina_orlova
(11, 309890.99, 'shipped', NOW() - INTERVAL '1 day', NOW() + INTERVAL '3 days'),  -- Order by pavel_ivanov
(12, 119980.50, 'new', NOW(), NULL),  -- Order by olga_belova
(13, 389980.99, 'processing', NOW() - INTERVAL '2 days', NULL);  -- Order by vladimir_egorov


-- 8. Добавление элементов заказов
INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES
(1, 1, 2, 149990.99),    -- 2 Smartphones in marat_badamshin order
(1, 4, 1, 29990.99),     -- 1 Headphones in marat_badamshin order

(2, 2, 1, 129990.99),    -- 1 Laptop in roman_abramov order

(3, 5, 1, 99990.99),     -- 1 Samsung Galaxy S23 Ultra in anna_ivanova order
(3, 7, 1, 39990.00),     -- 1 Samsung Refrigerator in anna_ivanova order

(4, 6, 1, 129990.99),    -- 1 MacBook Air M2 in nikita_petrov order
(4, 9, 1, 29990.99),     -- 1 Apple Watch in nikita_petrov order
(4, 8, 1, 48990.99),     -- 1 Bosch Washing Machine in nikita_petrov order

(5, 9, 2, 29990.99),     -- 2 Apple Watches in svetlana_sokolova order
(5, 13, 1, 45990.99),    -- 1 Dyson Vacuum Cleaner in svetlana_sokolova order

(6, 7, 1, 39990.99),     -- 1 Samsung Refrigerator in aleksandr_karpov order
(6, 10, 1, 119990.99),   -- 1 Samsung QLED TV in aleksandr_karpov order
(6, 12, 1, 109990.99),   -- 1 Canon Camera in aleksandr_karpov order

(7, 10, 1, 119990.99),   -- 1 Samsung QLED TV in elena_kozlova order
(7, 13, 2, 45990.99),    -- 2 Dyson Vacuum Cleaners in elena_kozlova order

(8, 12, 1, 109990.99),   -- 1 Canon Camera in andrey_fedorov order
(8, 16, 1, 5990.99),     -- 1 Philips Blender in andrey_fedorov order

(9, 13, 1, 45990.99),    -- 1 Dyson Vacuum Cleaner in irina_orlova order
(9, 11, 2, 15990.99),    -- 2 Panasonic Microwaves in irina_orlova order

(10, 15, 1, 99990.99),   -- 1 iPad Pro in pavel_ivanov order
(10, 4, 1, 29990.99),    -- 1 Sony Headphones in pavel_ivanov order
(10, 8, 1, 48990.99),    -- 1 Bosch Washing Machine in pavel_ivanov order

(11, 11, 1, 15990.99),   -- 1 Panasonic Microwave in olga_belova order
(11, 16, 2, 5990.99),    -- 2 Philips Blenders in olga_belova order

(12, 16, 1, 5990.99),    -- 1 Philips Blender in vladimir_egorov order
(12, 5, 1, 99990.99),    -- 1 Samsung Galaxy S23 Ultra in vladimir_egorov order
(12, 10, 1, 119990.99);  -- 1 Samsung QLED TV in vladimir_egorov order
