use скачки;

insert into pair (id_horse, id_jockey)
values
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1))),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1))),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1))),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1))),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1)));

insert into participants (id_pair, id_check_in, time_participants, place_participants)
values
(1,3,3.8,4),
(3,5,2.5,1),
(2,2,3.5,3),
(4,1,4.5,1),
(5,4,2.8,5);