use ������;

--������� ��������
insert into horse_owner (name_owner, adress, phone)
values
('����','����� ���', '89178989899'),
('˸��','����� ������', '89659238002'),
('���','����� ������', '89659238002'),
('����','����� ������', '89659238002'),
('�����','����� ����', '89659238002'),
('����','����� ������������', '89659238002'),
('����','����� ������', '89659238002'),
('����','����� ���', '89659238002'),
('��������','����� ����������', '89659238002'),
('��������','����� ���', '89659238002')

insert into horse (id_owner, name_horse, sex, age)
values
(1,'��������','���',11),
(2,'������','���',4),
(3,'������','���',5),
(5,'������','���',5),
(7,'����','���',15),
(6,'����','���',10),
(4,'�����','���',2),
(8,'��������','���',11),
(10,'�������','���',7),
(9,'��������','���',11)

update h1
set name_owner=h2.name_owner
from horse h1
join horse_owner h2
on h1.id_owner=h2.id

insert into jockey (name_jockey, adress, age, rating)
values
('Ը���','����� ������',21,5.7),
('��������','����� ����',33,8.9),
('�����','����� ���',19,7.7),
('����','����� ������',21,9.7),
('�������','����� ������',26,5.1),
('��������','����� ������',21,9.0),
('����','����� ������',28,5.7),
('����','����� ����',21,5.7),
('���������','����� ����������',29,9.1),
('������','����� ���',21,5.7);

insert into participants (id_horse, id_jockey, id_check_in, time_participants)
values
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1)),3,3.8),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1)),5,2.5),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1)),2,3.5),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1)),1,4.5),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1)),4,2.8);

update h3
set name_jockey=h4.name_jockey
from participants h3
join jockey h4
on h3.id_jockey=h4.id
update h5
set name_horse=h6.name_horse
from participants h5
join horse h6
on h5.id_horse=h6.id


