# U jednom trgovačkom centru postoji više trgovina. 
# U svakoj trgovini radi više osoba. 
# Jedna osoba može raditi u više trgovina. 
# Svaka trgovina ima jednog šefa koji je ujedno i osoba.

# mysql -uedunova -pedunova </Users/natalis/trgovacki_centar.sql

drop database if exists trgovacki_centar;
create database trgovacki_centar;

use trgovacki_centar;

create table trgovina (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    broj_lokala varchar (50) not null
);

create table osoba (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null,
    sef boolean
);

create table trgovina_osoba (
    sifra int not null primary key auto_increment,
    osoba int not null,
    trgovina int not null
);

alter table trgovina_osoba add foreign key (osoba) references osoba (sifra);
alter table trgovina_osoba add foreign key (trgovina) references trgovina (sifra);