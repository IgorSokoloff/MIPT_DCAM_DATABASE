--������� �������� ��� �������, ���������� �� ������� ������������� ��������, �������������� � �.������ (DALLAS).

SELECT city, customer_id FROM customer, employee, department, location
	WHERE salesperson_id = employee_id 
		AND employee.department_id = department.department_id
		AND department.location_id = location.location_id
		AND regional_group = 'DALLAS'