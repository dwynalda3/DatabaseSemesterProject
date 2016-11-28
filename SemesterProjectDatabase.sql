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
drop table PlayList;
drop table Track;
drop table Place;


create table Album
(
album_id integer not null, 
album_name char(15),
year_released integer,
CONSTRAINT I1 primary key (album_id)
);

create table Artist
(
artist_id integer,
artist_name char(15),
CONSTRAINT I2 primary key (artist_id)
);

create table Producer
(
experience char(10),
pname char(15),
location char(15),
pid integer,
CONSTRAINT I3 primary key (pid)
);
create table PlayList
(
playlist_id integer,
playlist_name char(15),
CONSTRAINT I4 primary key (playlist_id)
);
create table Track
(
tname char(25),
album_id integer not null, 
genre char(10),
length char(15),
CONSTRAINT I6 primary key (tname)
);
create table Place
(
address char(30),
zip_code integer,
state char(15),
CONSTRAINT I5 primary key (address)
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

insert into Album values (000001, 'Dark Despair', 1991);
insert into Album values (000002, 'Dark Memes', 2016);
insert into Album values (000003, 'Yellow Sky', 2010);
insert into Album values (000004, 'Scared for Lyfe', 2009);
insert into Album Values (000005, 'Survived W2K', 2001);
COMMIT;


insert into Artist values (000001, 'Gimbo Bean');
insert into Artist values (000002, 'Jambino Bobarino');
insert into Artist values (000003, 'Dylan Durke');
insert into Artist values (000004, 'Daniel Hamcorm');
insert into Artist values (000005, 'Steve Hammond');
COMMIT;

insert into Place values ('5555 Original Place', 45945, 'Ohio');
insert into Place values ('4525 Dance Dance', 22223, 'Florida');
insert into Place values ('2303 Dank Drive', 44342, 'Michigan');
insert into Place values ('8923 Miles Finch', 93453, 'Indiana');
insert into Place values ('3349 Mike Drive', 49534, 'Washington');
commit;

insert into Track values ('Depths Below', 000001, 'Punk Metal', '4:55');
insert into Track values ('Cannot Think', 000002, 'Punk Metal', '5:00');
insert into Track values ('Bleep Bloop Aftermath', 000005, 'Techno', '1:00');
insert into Track values ('Light Up the Sky', 000003, 'Bro Music', '4:00');
insert into Track values ('Darkness at Night', 000004, 'Emo', '3:00');
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
