SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTEDBEGIN TRANSACTION declare @�������_���� moneyset @�������_���� =  ( SELECT �������_���������.������_������� FROM �������_��������� WHERE ���������_�� = 1)UPDATE �������_��������� SET ������_������� = ������_������� + 200 
WHERE ���������_�� = 1
COMMITSELECT �������_���������.������_������� FROM �������_��������� WHERE ���������_�� = 1/*select * from �������_���������UPDATE �������_��������� SET ������_������� = 1500 
WHERE ���������_�� = 1
*/