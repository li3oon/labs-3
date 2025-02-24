use вариант2
insert into check_in (id_competition)
values
(1),
(2),
(3),
(4),
(5);
insert into participants(id_check_in)
values
(3),
(5),
(1),
(4),
(2);
update h3
set check_in_record_min=h4.time_participants
from check_in h3
join participants h4
on h4.id_check_in=h3.id
update h5
set record_min=h6.check_in_record_min
from competition h5
join check_in h6
on h6.id_competition=h5.id
