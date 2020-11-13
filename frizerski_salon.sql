# U frizerskom salonu radi više djelatnica. 
# Jedna djelatnica radi s više korisnika. 
# Korisnik tijekom jednog posjeta koristi jednu uslugu.

# mysql -uedunova -pedunova </Users/natalis/frizerski_salon.sql

drop database if exists frizerski_salon;
create database frizerski_salon;

use frizerski_salon;

create table djelatnica(
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);
create table usluga(
    sifra int not null primary key auto_increment,
    cijena decimal (5,2)  not null,
    vrsta varchar (50) not null
);
create table posjeta (
  sifra int not null primary key auto_increment,
  djelatnica int not null,
  korisnik int not null,
  usluga int not null,
  vrijeme datetime  
);

alter table posjeta add foreign key (djelatnica) references djelatnica (sifra);
alter table posjeta add foreign key (korisnik) references korisnik (sifra);
alter table posjeta add foreign key (usluga) references usluga (sifra);


