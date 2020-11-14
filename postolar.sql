# Postolar popravlja obuću. 
# Jedan korisnik može postolaru donijeti više komada obuće na popravak dok jedan komad obuće može biti više puta na popravku. 
# Postolar ima šegrta koji sudjeluje u određenim popravcima obuće.

# mysql -uedunova -pedunova </Users/natalis/postolar.sql

drop database if exists postolar;
create database postolar;

use postolar;

create table postolar (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

create table segrt (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

create table korisnik (
   sifra int not null primary key auto_increment,
   ime varchar (50) not null,
   prezime varchar (50) not null,
   broj_telefona varchar (20) not null 
);

create table obuca (
    sifra int not null primary key auto_increment,
    naziv varchar (20) not null,
    usluga int not null  
);

create table usluga (
    sifra int not null primary key auto_increment,
    vrijeme datetime,
    cijena decimal (18,2),
    postolar int not null,
    segrt int null,
    korisnik int not null 
);

alter table usluga add foreign key (postolar) references postolar (sifra);
alter table usluga add foreign key (segrt) references segrt (sifra);
alter table usluga add foreign key (korisnik) references korisnik (sifra);
alter table obuca add foreign key (usluga) references usluga (sifra);
