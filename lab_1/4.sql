--����� ���������� �� ��� ����� ������� ������, � �������� �������� ������� �����'DUNK' �� ���������� �����.
--0
SELECT TOP(1) with ties CUSTOMER.Name, sum(item.total) AS TOTAL
FROM customer INNER JOIN sales_order ON customer.customer_id = sales_order.customer_id
			  INNER JOIN ITEM ON ITEM.order_id = SALES_ORDER.order_id
			  INNER JOIN PRODUCT ON PRODUCT.product_id = ITEM.product_id
			  WHERE PRODUCT.description LIKE '%DUNK%'
			  GROUP BY customer.Name
			  order by sum(item.total) desc


--1
select max(TOTAL) as total from (SELECT CUSTOMER.Name, sum(item.total) AS TOTAL
FROM customer INNER JOIN sales_order ON customer.customer_id = sales_order.customer_id
			  INNER JOIN ITEM ON ITEM.order_id = SALES_ORDER.order_id
			  INNER JOIN PRODUCT ON PRODUCT.product_id = ITEM.product_id
			  WHERE PRODUCT.description LIKE '%DUNK%'
			  GROUP BY customer.Name)as table1



--2
declare @total float(24)

Set @total = (select max(TOTAL) as total from(SELECT CUSTOMER.Name, sum(item.total) AS TOTAL
FROM customer INNER JOIN sales_order ON customer.customer_id = sales_order.customer_id
			  INNER JOIN ITEM ON ITEM.order_id = SALES_ORDER.order_id
			  INNER JOIN PRODUCT ON PRODUCT.product_id = ITEM.product_id
			  WHERE PRODUCT.description LIKE '%DUNK%'
			  GROUP BY customer.Name
			  )as table1)

SELECT CUSTOMER.Name, sum(item.total) AS TOTAL
FROM customer INNER JOIN sales_order ON customer.customer_id = sales_order.customer_id
			  INNER JOIN ITEM ON ITEM.order_id = SALES_ORDER.order_id
			  INNER JOIN PRODUCT ON PRODUCT.product_id = ITEM.product_id
			  WHERE PRODUCT.description LIKE '%DUNK%'
			  GROUP BY customer.Name
			  HAVING sum(item.total) = @total

--��� ��� ��� � top with ties


WITH TABLE1(name, total) AS
( 
SELECT CUSTOMER.Name, sum(item.total) AS TOTAL
FROM customer INNER JOIN sales_order ON customer.customer_id = sales_order.customer_id
			  INNER JOIN ITEM ON ITEM.order_id = SALES_ORDER.order_id
			  INNER JOIN PRODUCT ON PRODUCT.product_id = ITEM.product_id
			  WHERE PRODUCT.description LIKE '%DUNK%'
			  GROUP BY customer.Name
			  )
select name, total
from TABLE1
where total = (select max(total) from TABLE1)



--������� ������� �������� ������� ���� ����������� ������� �������� � ������� + �������� 

select avg(EMPLOYEE.salary) as avg 
from employee inner join DEPARTMENT on DEPARTMENT.department_id = EMPLOYEE.department_id
			  inner join LOCATION on LOCATION.location_id = DEPARTMENT.location_id
			  WHERE 
			  



--(�� �������, ������� �� ������) 
--������ ��� ���� ������ ��� � ����-�� ������� ����� ���� null � ������ ��� ������� ����� UNION