
# Taksi tvrtka ima više vozila. 
# Jedno vozilo vozi jedan vozač. 
# U jednoj vožnji vozač može prevesti više putnika. 
# Jedan putnik se naravno može tijekom vremena imati više vožnji.

# mysql -uedunova -pedunova </Users/natalis/taksi.sql

drop database if exists taksi;
create database taksi;

use taksi;

create table vozilo (
    sifra int not null primary key auto_increment,
    marka varchar (50)not null
);

create table vozac (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

create table putnik (
    sifra int not null primary key auto_increment,
    broj_telefona int
);

# jedna voznja s vise putnika - pretpostavka je da svi putnici zajedno ulaze na istom mjestu (pocetak) i da izlaze na istom mjestu (cilj)

create table voznja (
    sifra int not null primary key auto_increment,
    pocetak varchar (50) not null,
    cilj varchar (50) not null,
    vozac int not null,
    vozilo int not null
);

create table voznja_putnik (
    sifra int not null primary key auto_increment,
    voznja int not null,
    putnik int not null
);

# jedna voznja s vise putnika - pretpostavka je da ce vozac prevesti vise putnika kojima je razlicito mjesto ulaska (pocetak) i mjesto izlaska (cilj)

# create table voznja (
    #sifra int not null primary key auto_increment,
    #vozac int not null,
    #vozilo int not null
#);
# create table voznja_putnik (
    #sifra int not null primary key auto_increment,
    #voznja int not null,
    #putnik int not null
    #pocetak varchar (50) not null,
    #cilj varchar (50) not null,
#);

alter table voznja add foreign key (vozac) references vozac (sifra);
alter table voznja add foreign key (vozilo) references vozilo (sifra);
alter table voznja_putnik add foreign key (voznja) references voznja (sifra);
alter table voznja_putnik add foreign key (putnik) references putnik (sifra);


