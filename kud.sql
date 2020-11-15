# KUD nastupa u zemlji i inozemstvu. 
# Na jedan nastup ide više članova KUD-a dok jedan član može nastupati na više nastupa. 
# Svaki nastup se odvija u jednom mjestu.

# mysql -uedunova -pedunova </Users/natalis/kud.sql

drop database if exists kud;
create database kud;

use kud;

create table clan (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

create table nastup (
    sifra int not null primary key auto_increment,
    datum datetime,
    mjesto int not null
);

create table mjesto (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    inozemstvo boolean
);

create table clan_nastup (
    sifra int not null primary key auto_increment,
    clan int not null,
    nastup int not null
);

alter table nastup add foreign key (mjesto) references mjesto (sifra);
alter table clan_nastup add foreign key (clan) references  clan (sifra);
alter table clan_nastup add foreign key (nastup) references nastup (sifra);