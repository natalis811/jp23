# Jedna srednja škola ima više razreda. 
# Jedan razred pohađa više učenika. 
# U jednom razredu predaje više profesora. 
# Jedan profesor može predavati u više razreda.

# mysql -uedunova -pedunova </Users/natalis/sskola.sql

drop database if exists sskola;
create database sskola;

use sskola;

create table razred (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null
);

create table ucenik (
    sifra  int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null,
    razred int not null
);

create table profesor (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

create table razred_profesor (
    razred int not null,
    profesor int not null
);

alter table ucenik add foreign key (razred) references razred (sifra);
alter table razred_profesor add foreign key (razred) references razred (sifra);
alter table razred_profesor add foreign key (profesor) references profesor (sifra);