use скачки;

--вставка отвратно
insert into horse_owner (name_owner, adress, phone)
values
('Иван','город Уфа', '89178989899'),
('Лёша','город Тюмень', '89659238002'),
('Юра','город Москва', '89659238002'),
('Катя','город Москва', '89659238002'),
('Диана','город Сочи', '89659238002'),
('Саша','город Екатеринбург', '89659238002'),
('Эрик','город Казань', '89659238002'),
('Вова','город Уфа', '89659238002'),
('Вячеслав','город Красноярск', '89659238002'),
('Антонина','город Уфа', '89659238002')

insert into horse (id_owner, name_horse, sex, age)
values
(1,'Звёздочка','муж',11),
(2,'Мигель','жен',4),
(3,'Дружба','муж',5),
(5,'Любава','жен',5),
(7,'Мира','жен',15),
(6,'Рысь','жен',10),
(4,'Малыш','муж',2),
(8,'Звёздочка','муж',11),
(10,'Попугай','муж',7),
(9,'Сердечко','жен',11)

update h1
set name_owner=h2.name_owner
from horse h1
join horse_owner h2
on h1.id_owner=h2.id

insert into jockey (name_jockey, adress, age, rating)
values
('Фёдор','город Тюмень',21,5.7),
('Мирослав','город Сочи',33,8.9),
('Антон','город Уфа',19,7.7),
('Саша','город Москва',21,9.7),
('Ипполит','город Тюмень',26,5.1),
('Феодосия','город Казань',21,9.0),
('Влад','город Тюмень',28,5.7),
('Даша','город Сочи',21,5.7),
('Мирослава','город Красноярск',29,9.1),
('Ульяна','город Уфа',21,5.7);

insert into participants (id_horse, id_jockey, id_check_in, time_participants)
values
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1)),3,3.8),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1)),5,2.5),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1)),2,3.5),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1)),1,4.5),
(CEILING(1+rand()*(10-1)),CEILING(1+rand()*(10-1)),4,2.8);

update h3
set name_jockey=h4.name_jockey
from participants h3
join jockey h4
on h3.id_jockey=h4.id
update h5
set name_horse=h6.name_horse
from participants h5
join horse h6
on h5.id_horse=h6.id


