USE DB;

with GhostOrderAudit AS(
	SELECT 
    o.order_id,
    o.user_id as order_user_id,
    u.user_id as profile_user_id,
    o.order_amount,
    o.status
    
    FROM orders o
    LEFT JOIN users u 
    ON o.user_id = u.user_id
    )
    SELECT *
    FROM GhostOrderAudit
    WHERE profile_user_id is NULL;
