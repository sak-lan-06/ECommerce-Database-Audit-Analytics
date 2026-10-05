use db;

with RankedTransactions as (
		SELECT
        order_id,
        user_id,
        order_amount,
        status,
        
        DENSE_RANK() OVER (PARTITION BY user_id ORDER BY order_amount DESC ) as purchase_rank
        FROM orders
        WHERE status = 'Delivered'
        )

SELECT 
 order_id,
 user_id,
 order_amount,
 purchase_rank
FROM RankedTransactions 
WHERE purchase_rank <= 2;
        