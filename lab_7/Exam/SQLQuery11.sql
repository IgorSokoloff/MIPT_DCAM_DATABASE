--1
--������� ����� ������� ���� �������������
--1-�� ������������� ���� ����� �� ���������� �������� � ����� � ������� ����� �� ���������� �������� � dbo
--2-�� ������������ ���� ����� ������ �� �������� ������ � ��������	�����
--������������ �� 2-�� ������������ � ������ �������, �� ��� ������� ���� ����� 1-�� �� �������� ������������ � ��������� �����

--drop  table  
--drop schema schema_test



drop schema schema_test
drop user user1
drop user user2
drop login login1
drop login login2

create login login1 with password = '1'
create user user1 for login login1

create login login2 with password = '1'
create user user2 for login login2

go
CREATE SCHEMA schema_test --authorization n
create table table_test (A int, B int)

grant select on schema::schema_test to user1
deny select on schema::dbo to user1

grant create table on schema::schema_test to user2
GRANT ALTER ON SCHEMA::schema_test TO user2

go








