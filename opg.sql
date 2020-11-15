# OPG proizvodi proizvode od sirovina koje sami uzgoje. 
# Jedan proizvod se može sastojati od više sirovina. 
# Jedna sirovina se može nalaziti u više proizvoda. 
# Jedan djelatnik OPG-a je odgovoran za jedan ili više proizvoda.

# mysql -uedunova -pedunova </Users/natalis/opg.sql

drop database if exists opg;
create database opg;

use opg;

create table proizvod (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    cijena decimal (18,2) not null,
    djelatnik int not null
);

create table sirovina (
  sifra int not null primary key auto_increment,
  naziv varchar (50) not null
);

create table proizvod_sirovina (
    proizvod int not null,
    sirovina int not null
);

create table djelatnik (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50)
);

alter table proizvod add foreign key (djelatnik) references djelatnik (sifra);
alter table proizvod_sirovina add foreign key (proizvod) references proizvod (sifra);
alter table proizvod_sirovina add foreign key (sirovina) references sirovina (sifra);


