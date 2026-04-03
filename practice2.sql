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


SELECT extract(MONTH FROM order_date) as order_month, count(order_id),avg(total_amount) FROM orders
WHERE extract(YEAR FROM order_date) = 2023
GROUP BY order_month