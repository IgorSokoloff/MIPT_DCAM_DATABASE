SET TRANSACTION ISOLATION LEVEL repeatable READ--SET TRANSACTION ISOLATION LEVEL serializableBEGIN TRANSACTION SELECT �������_���������.������_������� FROM �������_��������� WHERE ���������_�� = 1UPDATE �������_��������� SET ������_������� = ������_������� + 200 
WHERE ���������_�� = 2
COMMITSELECT �������_���������.������_������� FROM �������_��������� WHERE ���������_�� = 1select @@TRANCOUNT/*select * from �������_���������UPDATE �������_��������� SET ������_������� = 1000 
WHERE ���������_�� = 1
*/