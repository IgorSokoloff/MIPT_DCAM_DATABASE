SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTEDBEGIN TRANSACTION declare @�������_���� moneyset @�������_���� =  ( SELECT �������_���������.������_������� FROM �������_��������� WHERE ���������_�� = 1)WAITFOR DELAY '00:00:10';UPDATE �������_��������� SET ������_������� = @�������_���� + 500 
WHERE ���������_�� = 1
COMMITselect * from �������_���������/*UPDATE �������_��������� SET ������_������� = 1500 
WHERE ���������_�� = 1
*/