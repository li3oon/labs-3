use ������;

SELECT        horse.name_horse AS [������ ������], horse.age AS [������� ������], horse.sex AS [��� ������], horse_owner.name_owner AS ��������, horse_owner.phone AS [������� ���������], 
                         horse_owner.adress AS [����� ���������]
FROM            horse INNER JOIN
                         horse_owner ON horse.id_owner = horse_owner.id

--
UPDATE       check_in
SET                check_in_record_min = participants.time_participants
FROM            check_in INNER JOIN
                         participants ON check_in.id = participants.id_check_in

SELECT        check_in.id AS [����� ������], check_in.check_in_record_min AS [����� ������], competition.name_competition AS [�������� ����������], competition.hippodrome AS [��� ���� ����������]
FROM            competition CROSS JOIN
                         check_in


select *from horse_owner;
select *from horse;
select *from jockey;
select *from competition;
select *from check_in;
select *from participants;