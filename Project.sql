/*Semester Database Project
Matt Noblett 
George Glessner
Dylan Durke
Daniel Wynalda
*/
SPOOL SemesterProjectDatabase.out
SET ECHO ON

drop table Album;
drop table Artist;
drop table Producer;
drop table Place;
drop table PlayList;
drop table Track;
drop table ProducerLocation;
drop table Performs;
drop table ListedOn;


create table Album
(
album_id integer not null, 
album_name char(15) not null,
year_released integer not null,
pid integer not null,
artist_id integer not null,
CONSTRAINT I1 primary key (album_id)
);

create table Artist
(
artist_id integer not null,
artist_name char(25) not null,
CONSTRAINT I2 primary key (artist_id)
);

create table Producer
(
experience char(10) not null,
pname char(15) not null,
location char(15) not null,
pid integer not null,
CONSTRAINT I3 primary key (pid)
);

create table PlayList
(
playlist_id integer not null,
playlist_name char(15) not null,
CONSTRAINT I4 primary key (playlist_id)
);

create table Track
(
tname char(25) not null,
album_id integer, 
genre char(10) not null,
length char(15) not null,
CONSTRAINT I6 primary key (tname, album_id)
);

create table Place
(
address char(30) not null,
zip_code integer not null,
state char(15) not null,
artist_id integer not null,
CONSTRAINT I5 primary key (address)
);

create table ProducerLocation
(
pid integer not null,
location char(25),
CONSTRAINT I9 primary key (pid, location)
);

create table Performs
(
artist_id integer not null,
tname char(25) not null,
CONSTRAINT I7 primary key (artist_id, tname)
);

create table ListedOn(
playlist_id integer,
tname char(25),
album_id integer,
CONSTRAINT I8 primary key (playlist_id, tname, album_id)
);


insert into Producer values ('High', 'Spin City', 'Washington', 23423);
insert into Producer values ('Low', 'Disco Blast', 'Ohio', 21554);
insert into Producer values ('Medium', 'Marginal Mancy', 'Texas', 55553);
insert into Producer values ('High', 'Bingo Bambo', 'Maryland', 45435);
insert into Producer values ('Medium', 'Make Me Dance', 'Florida', 64531);
commit;

insert into PlayList values (000012, 'Workout Mix');
insert into PlayList values (000043, 'Chill Session');
insert into Playlist values (000009, 'Drive Mix');
insert into PlayList values (000010, 'Shake and Bake');
insert into PlayList values (000013, 'Instrumental');
commit;

insert into Album values (000001, 'Dark Despair', 1991, 23423, 000001);
insert into Album values (000002, 'Dark Memes', 2016, 21554, 000002);
insert into Album values (000003, 'Yellow Sky', 2010, 55553, 000003);
insert into Album values (000004, 'Scared for Lyfe', 2009, 45435, 000004);
insert into Album Values (000005, 'Survived W2K', 2001, 64531, 000005);
COMMIT;


insert into Artist values (000001, 'Gimbo Bean');
insert into Artist values (000002, 'Jambino Bobarino');
insert into Artist values (000003, 'Dylan Durke');
insert into Artist values (000004, 'Daniel Hamcorm');
insert into Artist values (000005, 'Steve Hammond');
COMMIT;

insert into Place values ('5555 Original Place', 45945, 'Ohio', 000001);
insert into Place values ('4525 Dance Dance', 22223, 'Florida', 000002);
insert into Place values ('2303 Dank Drive', 44342, 'Michigan', 000003);
insert into Place values ('8923 Miles Finch', 93453, 'Indiana', 000004);
insert into Place values ('3349 Mike Drive', 49534, 'Washington', 000005);
commit;

insert into Track values ('Depths Below', 000001, 'Punk Metal', '4:55');
insert into Track values ('Cannot Think', 000001, 'Punk Metal', '5:00');
insert into Track values ('Bleep Bloop Aftermath', 000005, 'Techno', '1:00');
insert into Track values ('Light Up the Sky', 000003, 'Bro Music', '4:00');
insert into Track values ('Darkness at Night', 000004, 'Emo', '3:00');
commit;

insert into ProducerLocation values (23423, '5555 Original Place');
insert into ProducerLocation values (21554, '4525 Dance Dance');
insert into ProducerLocation values (55553, '2303 Dank Drive');
insert into ProducerLocation values (45435, '8923 Miles Finch');
insert into ProducerLocation values (64531, '3349 Mike Drive');
insert into ProducerLocation values (64531, '4525 Dance Dance');
commit;

insert into Performs values (000001, 'Depths Below');
insert into Performs values (000001, 'Cannot Think');
insert into Performs values (000002, 'Cannot Think');
insert into Performs values (000003, 'Bleep Bloop Aftermath');
insert into Performs values (000004, 'Light Up the Sky');
insert into Performs values (000005, 'Darkness at Night');
commit;

insert into ListedOn values (000012, 'Depths Below', 000001);
insert into ListedOn values (000043, 'Depths Below', 000001);
insert into ListedOn values (000009, 'Depths Below', 000001);
insert into ListedOn values (000012, 'Cannot Think', 000001);
insert into ListedOn values (000012, 'Bleep Bloop Aftermath', 000005);
commit;

/*
Queries Here
*/


select * from PlayList
order by playlist_id;

select * from PlayList;

select * from Producer;

select * from Producer 
where experience LIKE '%High%';

select * from Track;

select * from Track 
where tname LIKE '%Light%';

select * from Track 
order by tname;

select * from Track
where tname LIKE '%night%';

select * from Artist;

select * from Album
order by album_name;

select * from Artist
order by artist_name;

select * from Place
order by state;

select * from Place
where zip_code like '%44342%'
order by zip_code;


SPOOL OFF