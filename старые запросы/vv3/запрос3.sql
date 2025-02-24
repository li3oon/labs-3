SELECT        participants.time_participants AS [����� ���� (�� 30 ���)], participants.id_pair AS [����� ����], jockey.name_jockey AS �����, horse.name_horse AS ������, participants.id_check_in AS [����� ������], 
                         competition.name_competition AS ����������, competition.date_competition AS [���� ����������]
FROM            participants INNER JOIN
                         pair ON participants.id_pair = pair.id INNER JOIN
                         horse ON pair.id_horse = horse.id INNER JOIN
                         jockey ON pair.id_jockey = jockey.id INNER JOIN
                         check_in ON participants.id_check_in = check_in.id INNER JOIN
                         competition ON check_in.id_competition = competition.id
WHERE        (participants.time_participants < '31.0')

