#mysql -uedunova -pedunova </Users/natalis/vjezba1.sql

#Kreirati bazu vjezba1
#Baza ima jednu tablicu koja ima 4 atributa
#Unijeti 5 redova

drop database if exists vjezba1;
create database vjezba1 CHARACTER SET utf8;

use vjezba1;


create table slikovnica (
sifra int not null primary key auto_increment,
naziv varchar (50) not null,
autor varchar (50) not null,
izdavac varchar (50) not null,
godina_izdanja int (4) null
);


insert into slikovnica (naziv, autor, izdavac, godina_izdanja) values ('Čovpas', 'Dav_Pikley','Mozaik_knjiga', 2020);
insert into slikovnica(naziv, autor, izdavac, godina_izdanja) values ('Kapetan_Gaćeša', 'Dav_Pikley', 'Mozaik_knjiga', 2019);
insert into slikovnica (naziv, autor, izdavac, godina_izdanja) values ('Vuk', 'Nn','Znanje', 2015);
insert into slikovnica (naziv, autor, izdavac, godina_izdanja) values ('Svemir','Sk','Školska_knjiga', 2017);
insert into slikovnica (naziv, autor, izdavac, godina_izdanja) values ('Mrljek_i_Prljek','KP','Evenio', 2018);

select * from slikovnica;
#DELETE FROM slikovnica;
