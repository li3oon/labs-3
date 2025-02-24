use скачки;

select *from horse_owner;
select *from horse;
select *from jockey;
select *from competition;
select *from check_in;
select *from participants;
select *from pair;

/*alter table horse
add constraint FK_horse_owner foreign key (id_owner)
references horse(id)
on delete cascade
on update cascade*/

/*alter table check_in
add constraint FK_check_in foreign key (id_competition)
references competition(id)
on delete cascade
on update cascade;

alter table participarts
add constraint FK_participarts foreign key (id_check_in)
references check_in(id)
on delete cascade
on update cascade;*/