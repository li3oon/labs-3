SELECT        competition.name_competition AS ����������, competition.date_competition AS [���� ����������], participants.id_check_in AS [����� ������], participants.id_pair AS [����� ����], 
                         participants.time_participants AS [����� ����], participants.place_participants AS [������� ����� ����]
FROM            competition INNER JOIN
                         check_in ON competition.id = check_in.id_competition INNER JOIN
                         participants ON check_in.id = participants.id_check_in
ORDER BY [������� ����� ����]