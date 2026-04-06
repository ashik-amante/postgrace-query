CREATE Table orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    customer_id INTEGER,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders( order_date, customer_id, total_amount)
VALUES  ('2014-01-01', 1, 100.00),
        ('2012-01-02', 2, 200.00),
        ('2023-01-03', 3, 300.00),
        ('2023-01-04', 4, 400.00),
        ('2013-01-05', 5, 500.00),
        ('2013-01-06', 6, 600.00),
        ('2021-01-07', 7, 700.00),
        ('2021-01-08', 8, 800.00),
        ('2021-01-09', 9, 900.00),
        ('2022-01-10', 10, 1000.00),
        ('2023-01-11', 1, 1100.00),
        ('2027-01-12', 2, 1200.00),
        ('2026-01-13', 3, 1300.00),
        ('2025-01-14', 4, 1400.00),
        ('2024-01-15', 5, 1500.00),
        ('2024-01-16', 6, 1600.00);


SELECT * FROM orders

SELECT customer_id, count(order_id),sum(total_amount) as total_amount FROM orders
GROUP BY customer_id
HAVING count(order_id) > 2

SELECT extract(MONTH FROM order_date) as selling_month, count(order_id), sum(total_amount) FROM orders
WHERE extract(YEAR FROM order_date) = 2023
GROUP BY  selling_month


-- ২০২৩ সালের প্রতিটি মাসের জন্য মোট বিক্রির গড় বের করো, কিন্তু মাস অনুযায়ী একসাথে শুধু ২০২৩ সালের অর্ডার রাখবে, সেই মাসে মোট অর্ডারের সংখ্যা এবং গড় বিক্রির পরিমাণ বের করবে।
SELECT extract(MONTH FROM order_date) as order_month,
    sum(total_amount) as total_sell,
    count(order_id) as total_order,
    avg(total_amount) FROM orders
WHERE extract(YEAR FROM order_date) = 2023
GROUP BY order_month

-- ২০২৩ সালে প্রতি মাসে:total sales 👉 কিন্তু শুধু সেই মাস দেখাও যেগুলোর sales 1000 এর বেশি

SELECT extract(month from order_date) as pro_sell_month,
    count(order_id)as total_order,
    sum(total_amount) as total_amount_sold,
    avg(total_amount) as avg_amount
FROM orders
where extract(year from order_date) = 2023
GROUP BY pro_sell_month
HAVING sum(total_amount) > 1000
ORDER BY pro_sell_month

-- কোন মাসে সবচেয়ে বেশি order হয়েছে (top 1)

SELECT extract(month from order_date) as max_order_month,
    count(order_id)as total_order,
    sum(total_amount) as total_amount_sold
FROM orders
GROUP BY max_order_month
ORDER BY total_order DESC
LIMIT 1

-- প্রতিটা customer এর:total order amount 👉 তারপর descending order এ সাজাও

SELECT customer_id, sum(total_amount) as total_order_amount from orders
GROUP BY customer_id
ORDER BY sum(total_amount) DESC

-- order count ≥ 2

SELECT customer_id, count(order_id) FROM orders
GROUP BY customer_id
HAVING count(order_id) >= 2


-- find the customer who placed more thab 2 orders and calculate the total amount spent by each of these customers

SELECT customer_id , count (order_id), sum(total_amount) FROM orders
GROUP BY customer_id
HAVING count(order_id) > 2

SELECT * FROM orders




SELECT * FROM orders