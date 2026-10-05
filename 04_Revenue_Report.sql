
use db;

SELECT  u.city, count(o.order_id) as total_orders , sum(o.order_amount) as total_revenue
FROM users u INNER JOIN orders o 
ON o.user_id = u.user_id
WHERE o.status = "Delivered"
GROUP BY 1
ORDER BY total_revenue DESC;
