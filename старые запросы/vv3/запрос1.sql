SELECT        horse.name_horse AS ������, horse_owner.name_owner AS [�������� ������]
FROM            horse INNER JOIN
                         horse_owner ON horse.id_owner = horse_owner.id

