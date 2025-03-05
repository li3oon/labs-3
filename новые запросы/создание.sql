--create database option_2;
use option_2;

create table horse_owner(
id int identity(1,1) primary key not null,
name_owner varchar(60),
adress varchar(70),
phone varchar(11)
);

create table horse(
id int identity(1,1) primary key not null,
id_owner int references horse_owner(id) not null,
name_horse varchar (20),
sex varchar(3),
age int,
check ((age > 1 and age < 31) and (sex='муж' or sex='жен'))
);

create table jockey(
id int identity(1,1) primary key not null,
name_jockey varchar (60),
adress varchar(70),
age int,
rating decimal(3,1),
check((age > 18 and age < 55) and (rating > 0.0 and rating < 11.0))
);

create table competition(
id int identity(1,1) primary key not null,
name_competition varchar(25),
date_competition date,
time_competition time(0),
hippodrome varchar(25),
check (date_competition <= getdate() and date_competition > '1999-12-31')
);

create table check_in(
id int identity(1,1) primary key not null,
id_competition int references competition(id) not null
);

create table pair(
id int identity(1,1) primary key not null,
id_horse int references horse(id) not null,
id_jockey int references jockey(id) not null
);

create table participants(
--id int identity(1,1) primary key not null,
id_pair int references pair(id) not null,
id_check_in int references check_in(id) not null,
time_participants decimal(3,1),
place_participants int,
check ((time_participants > 0.0 and time_participants < 60.0) and (place_participants > 0 and place_participants < 11))
);

select *from horse_owner;
select *from horse;
select *from jockey;
select *from competition;
select *from check_in;
select *from participants;