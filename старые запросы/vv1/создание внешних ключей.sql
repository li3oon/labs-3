alter table check_in
add constraint FK_check_in foreign key (id_competition)
references competition(id)
on delete cascade
on update cascade;

alter table participarts
add constraint FK_participarts foreign key (id_check_in)
references check_in(id)
on delete cascade
on update cascade;