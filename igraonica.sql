# U dječjoj igraonici djeca se igraju u skupinama.
# Jedno dijete se može igrati u više skupina a jedna skupina se sastoji od više djece. 
# Svaku skupinu vodi jedna teta.

# mysql -uedunova -pedunova </Users/natalis/igraonica.sql

drop database if exists igraonica;
create database igraonica;

use igraonica;

create table skupina (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    teta int not null
);

create table dijete (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null,
    starost int
);

create table skupina_dijete (
    sifra int not null primary key auto_increment,
    skupina int not null,
    dijete int not null
);

create table teta (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

alter table skupina add foreign key (teta) references teta (sifra);
alter table skupina_dijete add foreign key (skupina) references skupina (sifra);
alter table skupina_dijete add foreign key (dijete) references dijete (sifra);
