# Nakladnik izdaje djela. 
# Jedan nakladnik može izdati više djela dok jedno djelo može izdati više nakladnika. 
# Nakladnik se nalazi u jednom mjestu dok jedno mjesto može imati više nakladnika.

# mysql -uedunova -pedunova </Users/natalis/nakladnik.sql

drop database if exists nakladnik;
create database nakladnik;

use nakladnik;

create table nakladnik (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    mjesto int not null
);

create table djelo (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    autor varchar (50) not null,
    cijena decimal (18,2) not null
);

create table mjesto (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null
);

create table nakladnik_djelo (
    nakladnik int not null,
    djelo int not null
);

alter table nakladnik add foreign key (mjesto) references mjesto (sifra);
alter table nakladnik_djelo add foreign key (nakladnik) references nakladnik (sifra);
alter table nakladnik_djelo add foreign key (djelo) references djelo (sifra);