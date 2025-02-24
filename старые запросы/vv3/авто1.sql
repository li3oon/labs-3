use скачки;

SELECT        horse.name_horse AS [Кличка лошади], horse.age AS [Возраст лошади], horse.sex AS [Пол лошади], horse_owner.name_owner AS Владелец, horse_owner.phone AS [Телефон владельца], 
                         horse_owner.adress AS [Адрес владельца]
FROM            horse INNER JOIN
                         horse_owner ON horse.id_owner = horse_owner.id

--
UPDATE       check_in
SET                check_in_record_min = participants.time_participants
FROM            check_in INNER JOIN
                         participants ON check_in.id = participants.id_check_in

SELECT        check_in.id AS [Номер заезда], check_in.check_in_record_min AS [Время заезда], competition.name_competition AS [Название состязания], competition.hippodrome AS [Где было состязание]
FROM            competition CROSS JOIN
                         check_in


select *from horse_owner;
select *from horse;
select *from jockey;
select *from competition;
select *from check_in;
select *from participants;