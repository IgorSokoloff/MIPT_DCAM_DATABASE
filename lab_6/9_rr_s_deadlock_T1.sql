SET TRANSACTION ISOLATION LEVEL repeatable READ--SET TRANSACTION ISOLATION LEVEL serializableBEGIN TRANSACTION SELECT �������_���������.������_������� FROM �������_��������� WHERE ���������_�� = 2WAITFOR DELAY '00:00:05';UPDATE �������_��������� SET ������_������� = ������_������� + 500 
WHERE ���������_�� = 1
COMMITSELECT �������_���������.������_������� FROM �������_��������� WHERE ���������_�� = 1select @@TRANCOUNT--select * from �������_���������/*UPDATE �������_��������� SET ������_������� = 1500 
WHERE ���������_�� = 1
*/
