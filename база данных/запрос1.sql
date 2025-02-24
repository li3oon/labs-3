SELECT        horse.name_horse AS Лошадь, horse_owner.name_owner AS [Владелец лошади]
FROM            horse INNER JOIN
                         horse_owner ON horse.id_owner = horse_owner.id

