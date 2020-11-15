# Jedan odvjetnik brani više klijenata. 
# Jednog klijenta može braniti više puta. 
# U obranama mu pomažu suradnici. 
# Na jednoj obrani može biti više suradnika a jedan suradnik može sudjelovati na više obrana.

# mysql -uedunova -pedunova </Users/natalis/odvjetnik.sql

drop database if exists odvjetnik;
create database odvjetnik;

use odvjetnik;

create table odvjetnik (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

create table klijent (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

 create table suradnik (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
 );

 create table obrana (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    odvjetnik int not null,
    klijent int not null 
 );

 create table obrana_suradnik (
     obrana int not null,
     suradnik int not null
 );

 alter table obrana add foreign key (odvjetnik) references odvjetnik (sifra);
 alter table obrana add foreign key (klijent) references klijent (sifra);
 alter table obrana_suradnik add foreign key (obrana) references obrana (sifra);
 alter table obrana_suradnik add foreign key (suradnik) references suradnik (sifra);
