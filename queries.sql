-- Total sales revenue
SELECT SUM(s.quantity * p.price) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id;

-- Supplier-wise product count
SELECT sp.supplier_name, COUNT(p.product_id) AS total_products
FROM suppliers sp
JOIN products p ON sp.supplier_id = p.supplier_id
GROUP BY sp.supplier_name;

-- Store inventory summary
SELECT st.store_name, SUM(i.quantity) AS total_stock
FROM inventory i
JOIN stores st ON i.store_id = st.store_id
GROUP BY st.store_name;

-- Top selling product
SELECT p.product_name, SUM(s.quantity) AS total_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 1;
