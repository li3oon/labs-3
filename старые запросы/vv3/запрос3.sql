SELECT        participants.time_participants AS [Время пары (до 30 сек)], participants.id_pair AS [Номер пары], jockey.name_jockey AS Жокей, horse.name_horse AS Лошадь, participants.id_check_in AS [Номер заезда], 
                         competition.name_competition AS Состязание, competition.date_competition AS [Дата состязания]
FROM            participants INNER JOIN
                         pair ON participants.id_pair = pair.id INNER JOIN
                         horse ON pair.id_horse = horse.id INNER JOIN
                         jockey ON pair.id_jockey = jockey.id INNER JOIN
                         check_in ON participants.id_check_in = check_in.id INNER JOIN
                         competition ON check_in.id_competition = competition.id
WHERE        (participants.time_participants < '31.0')

