# USERS TABLE
CREATE TABLE IF NOT EXISTS users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(50),
    city VARCHAR(50),
    signup_date DATE
);

# select * from users;

# ORDERS TABLE
CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    order_amount DECIMAL(10, 2),
    status VARCHAR(20)
);

# ORDER ITEMS TABLE
CREATE TABLE IF NOT EXISTS order_items (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50)
);
