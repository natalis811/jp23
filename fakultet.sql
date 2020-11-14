# Studenti polažu kolegije kroz rokove. 
# Student može rok prijaviti više puta a na jedan rok može izaći više studenata.

# mysql -uedunova -pedunova </Users/natalis/fakultet.sql

drop database if exists fakultet;
create database fakultet;

use fakultet;

create table student (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

create table kolegij (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    predavac varchar (50) not null
);

create table ispitni_rok (
    sifra int not null primary key auto_increment,
    datum datetime,
    kolegij int not null
);

create table prijavnica (
    sifra int not null primary key auto_increment,
    datum datetime,
    student int not null,
    ispitni_rok int not null
);

alter table ispitni_rok add foreign key (kolegij) references kolegij (sifra);
alter table prijavnica add foreign key (student) references student (sifra);
alter table prijavnica add foreign key (ispitni_rok) references ispitni_rok (sifra);
