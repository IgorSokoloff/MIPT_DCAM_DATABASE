Set transaction isolation level read uncommitted
--Set transaction isolation level read committed

BEGIN TRANSACTION

UPDATE �������_��������� set ������_������� = ������_������� + 100
where ���������_�� = 2
--WAITFOR DELAY '00:00:05';

UPDATE �������_��������� set ������_������� = ������_������� + 200
where ���������_�� = 1

COMMIT 

select * from �������_���������
select @@TRANCOUNT/*UPDATE �������_��������� SET ������_������� = 1000 
WHERE ���������_�� = 1
UPDATE �������_��������� SET ������_������� = 1000 
WHERE ���������_�� = 2

select * from �������_���������
*/