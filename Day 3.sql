/*---------------------------------------------------------------Day 3---------------------------------------------------------------*/
use mayank_db;
SELECT * FROM order_details as t1
JOIN orders as t2 ON
t1.order_id=t2.order_id
JOIN users ON t2.user_id=users.user_id;

SELECT t1.name,t1.city,t2.order_id FROM users as t1
JOIN orders as t2 ON
t1.user_id=t2.user_id;

SELECT t1.name,t1.city,t1.user_id,t2.order_id FROM users as t1
JOIN orders as t2 ON
t1.user_id=t2.user_id
having t1.city='pune';

/* Find all profitable orders*/
SELECT t1.order_id,SUM(t2.profit) as 'profit' FROM orders as t1
JOIN order_details as t2
ON t1.order_id=t2.order_id
GROUP BY order_id
HAVING SUM(t2.profit)>0



