Set transaction isolation level read uncommitted
--Set transaction isolation level read committed


BEGIN TRANSACTION

UPDATE �������_��������� set ������_������� = ������_������� + 200
where ���������_�� in (1, 2)

COMMIT select @@TRANCOUNT/*UPDATE �������_��������� SET ������_������� = 1500 
WHERE ���������_�� in (1,2)
*/