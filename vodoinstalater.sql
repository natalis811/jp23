# Vodoinstalater popravlja kvarove na vodovodnim instalacijama. 
# Tijekom jednog popravka može popraviti više kvarova a jedan kvar se može popravljati više puta. 
# Na određenim popravcima mu pomaže njegov šegrt.

# mysql -uedunova -pedunova </Users/natalis/vodoinstalater.sql

drop database if exists vodoinstalater;
create database vodoinstalater;

use vodoinstalater;

create table vodoinstalater (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

create table segrt (
   sifra int not null primary key auto_increment,
   ime varchar (50) not null,
   prezime varchar (50) not null
);

create table kvar (
   sifra int not null primary key auto_increment,
   naziv varchar (50) not null
);

create table popravak (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    datum datetime,
    cijena decimal (18,2) not null,
    vodoinstalater int not null,
    segrt int #stavlja se samo int zato sto on sudjeluje u samo nekim popravcima, a kad ne sudjeluje on moze biti null
);

create table kvar_popravak (
    sifra int not null primary key auto_increment,
    kvar int not null,
    popravak int not null
);

alter table popravak add foreign key (vodoinstalater) references vodoinstalater (sifra);
alter table popravak add foreign key (segrt) references segrt (sifra);
alter table kvar_popravak add foreign key (kvar) references kvar (sifra);
alter table kvar_popravak add foreign key (popravak) references popravak (sifra);