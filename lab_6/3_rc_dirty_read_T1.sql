SET TRANSACTION ISOLATION LEVEL READ COMMITTEDBEGIN TRANSACTION 
UPDATE �������_��������� SET ������_������� = ������_������� + 100 
WHERE ���������_�� = 1WAITFOR DELAY '00:00:5';ROLLBACKselect ������_������� from �������_��������� WHERE ���������_�� = 1/*UPDATE �������_��������� SET ������_������� = 1500 
WHERE ���������_�� = 1
*/