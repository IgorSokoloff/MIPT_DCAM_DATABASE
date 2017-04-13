use lab_3_2

if exists(select name from sys.database_principals
where name like 'test')
begin
	alter role test_role drop member test
	drop role test_role
	drop user test
end

if exists(select name from sys.server_principals
where name like 'test')
drop login test

create login test with password = '1'
create user test for login test

/*
� ����� Microsoft Query Analyzer ��������� ������� ���������� ������ ������������ ���� ������� � ��������, ��������� � ������������ ������ �2. 
��� ���� ����� ������� � ��������� �������� ������ ���� ����������, � ������:
*/
--��� ����� ������� ������ ������������ ������������� ����� SELECT, INSERT, UPDATE � ������ ������
GRANT INSERT, SELECT, UPDATE ON ������� TO test

--��� ����� ������� ������ ������������ ������������� ����� SELECT � UPDATE ������ ��������� ��������.
GRANT SELECT, UPDATE ON �������(��������) TO test

--��� ����� ������� ������ ������������ ������������� ������ ����� SELECT.
GRANT SELECT ON ��������� TO test


/*
� ����� Microsoft Enterprise Manager ��������� ������ ������������ ����� ������� (SELECT) � �������������, ���������� � ������������ ������ �4.
*/
GRANT SELECT ON �������_����� to test


/*
� ����� Microsoft Enterprise Manager ������� ����������� ���� ������ ���� ������, 
��������� �� ����� ������� (UPDATE �� ��������� �������) � �������������, ���������� � ������������ ������ �4, 
��������� ������ ������������ ��������� ����.
*/

--select DATABASE_PRINCIPAL_ID('test')


if DATABASE_PRINCIPAL_ID('test_role') is not null
drop role test_role


create role test_role AUTHORIZATION test

grant update on ����_����(�������, ��������, �����_����,����, ����) to test_role

alter role test_role add member test

--select * from sys.database_role_members

--select * from sys.database_principals where name like 'test_role'

/*
� ����� Microsoft Query Analyzer ����������� � ��������� ����� ������ ��� ������ ������ ������������.
��������� �� ����� ������ ������������ ��������� ������� �� ������ � �������������, �������������� ��� ������������ ����� ��2,4. ��������� � ������������ �������� ���� �������.
��������� �� ����� ������ ������������ ��������� ��������� ������ � ������������� ������� �������. ��������� � ������������ �������� ���� �������.

*/

--������������ ��� test/test
use lab_3_2
--GRANT INSERT, SELECT, UPDATE ON ������� TO test
-------------------------------------
begin transaction
--DBCC CHECKIDENT (�������, RESEED, 3)
insert into ������� values ('�������_����')
update ������� set �������� = '�������_�����' where �������� like '�������_����'
select * from �������
delete from �������--false

rollback
-------------------------------------

--GRANT SELECT, UPDATE ON �������(��������) TO test
-------------------------------------
begin transaction
insert into ������� values ('�������_����')--false
update ������� set �������� = '�����1' where �������� like '�����'
select �������� from �������
rollback
-------------------------------------

--GRANT SELECT ON ��������� TO test
-------------------------------------
select * from ���������
delete from ���������

-------------------------------------

--GRANT SELECT ON �������_����� to test
-------------------------------------
select * from �������_�����
begin transaction
update �������_����� set ������ = '��������' where ������ like '����' --false
select * from �������_�����
rollback
-------------------------------------




