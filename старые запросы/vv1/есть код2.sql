use �������2;

insert into competition (id, name_competition, date_competition, time_competition, hippodrome)
values
(1,'�����','2013-06-06','10:00:00','���-��'),
(2,'�����','2013-06-06','10:00:00','���-��'),
(3,'�����','2013-06-06','10:00:00','���-��'),
(4,'�����','2013-06-06','10:00:00','���-��'),
(5,'�����','2017-05-26','12:30:12','��������');

set identity_insert check_in on
insert into check_in (id, id_competition)
values
(2,1),
(1,3),
(4,3),
(5,4),
(3,5);
update h7
set check_in_record_min=h8.time_participants
from check_in h7
join participants h8
on h8.id_check_in=h7.id
update h9
set record_min=h10.check_in_record_min
from competition h9
join check_in h10
on h10.id_competition=h9.id