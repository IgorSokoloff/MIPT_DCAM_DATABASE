SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTEDBEGIN TRANSACTION declare @�������_���� moneyset @�������_���� =  ( SELECT �������_���������.������_������� FROM �������_��������� with(xlock) WHERE ���������_�� = 1) --SELECT @�������_����WAITFOR DELAY '00:00:03';UPDATE �������_��������� SET ������_������� = @�������_���� + 500 
WHERE ���������_�� = 1
COMMIT--select @@TRANCOUNT--select * from �������_���������/*

UPDATE �������_��������� SET ������_������� = 1000 
WHERE ���������_�� in ( 1,2)

*/


