SELECT        competition.name_competition AS Состязание, competition.date_competition AS [Дата состязания], participants.id_check_in AS [Номер заезда], participants.id_pair AS [Номер пары], 
                         participants.time_participants AS [Время пары], participants.place_participants AS [Занятое место пары]
FROM            competition INNER JOIN
                         check_in ON competition.id = check_in.id_competition INNER JOIN
                         participants ON check_in.id = participants.id_check_in
ORDER BY [Занятое место пары]