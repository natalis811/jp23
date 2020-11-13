# U muzeju postoji više izložaba. 
# Jedna izložba ima više djela. 
# Svaki kustos je zadužen za jednu izložbu. 
# Svaka izložba ima jednog sponzora.

# mysql -uedunova -pedunova </Users/natalis/muzej.sql

drop database if exists muzej;
create database muzej;

use muzej;

create table izlozba (
    sifra int not null primary key auto_increment,
    naziv varchar (45) not null,
    datum_pocetka datetime not null,
    datum_zavrsetka datetime not null,
    broj_djela int not null,
    kustos int not null,
    sponzor int not null
);

create table djelo (
    sifra int not null primary key auto_increment,
    naziv varchar (50)  not null,
    autor varchar (50) not null,
    izlozba int not null
);

create table kustos (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

create table sponzor (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    adresa varchar (50) not null
);

alter table djelo add foreign key (izlozba) references izlozba (sifra);
alter table izlozba add foreign key (kustos) references kustos (sifra);
alter table izlozba add foreign key (sponzor) references sponzor (sifra);

