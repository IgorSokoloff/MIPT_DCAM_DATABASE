SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTEDBEGIN TRANSACTION declare @�������_���� moneyset @�������_���� =  ( SELECT �������_���������.������_������� FROM �������_��������� with(repeatableread) WHERE ���������_�� = 1)--SELECT @�������_����UPDATE �������_��������� SET ������_������� = @�������_���� + 200 
WHERE ���������_�� = 1
COMMITselect * from �������_���������/*UPDATE �������_��������� SET ������_������� = 1500 
WHERE ���������_�� = 1
*/