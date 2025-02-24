use вариант2;
insert into participants (id_horse, id_jockey)
values
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1))),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1))),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1))),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1))),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1)));

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