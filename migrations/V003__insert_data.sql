INSERT INTO product (id, name, picture_url, price) VALUES
(1, 'Сливочная', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/6.jpg', 320.00),
(2, 'Особая', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/5.jpg', 179.00),
(3, 'Молочная', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/4.jpg', 225.00),
(4, 'Нюренбергская', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/3.jpg', 315.00),
(5, 'Мюнхенская', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/2.jpg', 330.00),
(6, 'Русская', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/1.jpg', 189.00);


INSERT INTO orders (id, status, date_created)
SELECT i,
       (array['pending', 'shipped', 'cancelled'])[floor(random() * 3 + 1)],
       DATE(NOW() - (random() * (NOW()+'90 days' - NOW())))
FROM generate_series(1, 200000) s(i);

INSERT INTO order_product (quantity, order_id, product_id)
SELECT floor(1+random()*20)::int,
       floor(random() * (select count(*) from orders) + 1)::int,
       floor(random() * (select count(*) from product) + 1)::int
FROM generate_series(1, 300000) s(i);
