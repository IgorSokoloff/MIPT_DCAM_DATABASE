--������� ��� ���������� ��� ������� ������ �������� �� ������� '����� 2016-2017', ���� '����� ����'


with sportsman_tournament(���������_��, �������,�������)as--��������� ����������� �������
(
select ���������.���������_��, �������.�������� ,(YEAR(CURRENT_TIMESTAMP)-YEAR(���������.����_��������)) as ������� 
from ��������� inner join ������ on ���������.������_�� = ������.������_��
			   inner join ���� on ����.����_�� = ������.����_��
			   inner join ������� on ���������.�������_�� = �������.�������_��
	   		   inner join ��������� on ���������.���������_�� = ���������.���������_��
where  (����.�������� like '����� ����' and ������.�������� like '����� 2016-2017')
)
select ���������.�������, ���������.���, sportsman_tournament.������� as �������, ������� 
from ��������� inner join sportsman_tournament on ���������.���������_�� = sportsman_tournament.���������_��
where sportsman_tournament.������� > (select avg(sportsman_tournament.�������) from sportsman_tournament)

