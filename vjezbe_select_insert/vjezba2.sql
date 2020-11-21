#mysql -uedunova -pedunova </Users/natalis/vjezba2.sql
#Kreirati bazu vjezba2
#Baza ima dvije tablicu između kojih je 1:n veza. Svaka tablica ima 3 atributa
#Unijeti u jednu tablicu 2 reda a u drugu tablicu 4 reda



drop database if exists vjezba2;
create database vjezba2 CHARACTER SET utf8;

use vjezba2;


create table slikovnica (
sifra int not null primary key auto_increment,
naziv varchar (50) not null,
autor varchar (50) not null,
izdavac int not null
);

create table izdavac (
sifra int not null primary key auto_increment,
naziv varchar (50) not null,
adresa varchar (50) not null,
broj_telefona int
);


insert into slikovnica (naziv, autor, izdavac) values ('Čovpas', 'DavP',1);
insert into slikovnica (naziv, autor, izdavac) values ('Vuk', 'John', 2);
insert into slikovnica (naziv, autor, izdavac) values ('Mrljek_i_Prljek', 'Sanja_K', 1);
insert into slikovnica (naziv, autor, izdavac) values ('Bubamara', 'Marko_C', 2);

insert into izdavac (naziv, adresa, broj_telefona) values ('Mozaik_knjiga', 'Vukovarska 5', 031376987);
insert into izdavac (naziv, adresa, broj_telefona) values ('Školska_knjiga', 'Kapucinska 5', 0313734887);

alter table slikovnica add foreign key (izdavac) references izdavac (sifra);

select * from slikovnica;

select * from izdavac;
