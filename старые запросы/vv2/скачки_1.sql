use скачки;

create table horse_owner(
id int identity primary key,
name_owner varchar(60),
adress varchar(70),
phone varchar(11)
);

create table horse(
id int identity primary key,
id_owner int references horse_owner(id),
name_owner varchar(60),
name_horse varchar (20),
sex varchar(3),
age int,
check ((age > 1 and age < 31) and (sex='муж' or sex='жен'))
);

create table jockey(
id int identity primary key,
name_jockey varchar (60),
adress varchar(70),
age int,
rating decimal(2,1),
check((age > 18 and age < 55) and (rating > 0.0 and rating < 11.0))
);

create table competition(
id int primary key,
name_competition varchar(25),
date_competition date,
time_competition time(0),
hippodrome varchar(25),
record_min decimal(2,1),
check ((date_competition <= getdate()) and (record_min > 0.0 and record_min < 5.0))
);

create table participants(
id int identity primary key,
id_horse int unique references horse(id),
id_jockey int unique references jockey(id),
id_check_in int,
name_jockey varchar(60),
name_horse varchar(20),
time_participants decimal(2,1),
check (time_participants > 0.0 and time_participants < 5.0)
);

create table check_in(
id int identity primary key,
id_competition int references competition(id),
number_pair int references participants(id), 
check_in_record_min decimal(2,1),
check (check_in_record_min > 0.0 and check_in_record_min <  5.0)
);
