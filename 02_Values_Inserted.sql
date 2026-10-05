USE DB;

# POPULAR USERS 
INSERT INTO users (user_id, user_name, city, signup_date) VALUES
(1, 'Amit Sharma', 'Pune', '2026-01-15'),
(2, 'Neha Patil', 'Mumbai', '2026-02-20'),
(3, 'Rahul Verma', 'Pune', '2026-03-05'),
(4, 'Priya Joshi', 'Pune', '2026-04-12'),
(5, 'Vikram Singh', 'Mumbai', '2026-05-18');

# POPULATED ORDERS 
INSERT INTO orders (order_id, user_id, order_date, order_amount, status) VALUES
(1001, 1, '2026-10-01', 1500.00, 'Delivered'),
(1002, 1, '2026-10-02', 4500.00, 'Delivered'),
(1003, 2, '2026-10-02', 3000.00, 'Pending'),
(1004, 3, '2026-10-03', 500.00, 'Cancelled'),
(1005, 4, '2026-10-04', 6000.00, 'Delivered'),
(1006, 4, '2026-10-05', 1200.00, 'Delivered'),
(1007, 999, '2026-10-05', 2500.00, 'Delivered');

#POPULATED ORDER ITEMS
INSERT INTO order_items (order_id, product_name, category) VALUES
(1001, 'Mechanical Keyboard', 'Electronics'),
(1002, 'Ergonomic Chair', 'Furniture'),
(1003, 'Wireless Mouse', 'Electronics'),
(1004, 'Coffee Mug', 'Kitchen'),
(1005, '27-inch Monitor', 'Electronics'),
(1006, 'Laptop Stand', 'Electronics'),
(1007, 'Smart Watch', 'Electronics');
