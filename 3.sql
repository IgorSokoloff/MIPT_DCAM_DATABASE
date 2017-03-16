--���������� ���������� ���������� �����������, ������������� � 1990 ����.
--(������� ���������� ����� �����������)

SELECT COUNT(customer_id) number FROM customer
WHERE customer_id IN 
	(SELECT customer.customer_id
		FROM customer INNER JOIN sales_order ON customer.customer_id = sales_order.customer_id
		GROUP BY customer.customer_id
		HAVING MIN(order_date) > '1989-31-12' AND MIN(order_date) < '1991-01-01')

SELECT customer.customer_id
		FROM customer INNER JOIN sales_order ON customer.customer_id = sales_order.customer_id
		GROUP BY customer.customer_id
		HAVING MIN(order_date) > '1989-31-12' AND MIN(order_date) < '1991-01-01'

--task
--���������� ��� group by �  having
SELECT COUNT(customer_id) number FROM customer
WHERE customer_id IN
(
SELECT  distinct customer.customer_id
		FROM customer INNER JOIN sales_order ON customer.customer_id = sales_order.customer_id
		WHERE datepart(year ,order_date) = 1990
		and customer.customer_id NOT IN 
		(SELECT CUSTOMER.customer_id from customer INNER JOIN sales_order ON customer.customer_id = sales_order.customer_id 
		WHERE datepart(year ,order_date) <1990)
		)
		