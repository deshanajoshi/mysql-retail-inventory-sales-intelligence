CREATE DATABASE retail_db;
USE retail_db;

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(50),
    city VARCHAR(30)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    supplier_id INT,
    price DECIMAL(10,2),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(50),
    city VARCHAR(30)
);

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    product_id INT,
    store_id INT,
    quantity INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    store_id INT,
    sale_date DATE,
    quantity INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id)
);
