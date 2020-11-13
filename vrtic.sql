# U dječjem vrtiću postoji više odgojnih skupina. 
# Svaka odgojna skupina ima više djece i vodi ih jedna odgajateljica. 
# Odgajateljica ima jednu stručnu spremu.

# mysql -uedunova -pedunova </Users/natalis/vrtic.sql

drop database if exists vrtic;
create database vrtic;

use vrtic;


create table odgojna_skupina (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    odgajateljica int not null,
    dijete int not null
);

create table odgajateljica (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

create table dijete (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

alter table odgojna_skupina add foreign key (odgajateljica) references odgajateljica (sifra);
alter table odgojna_skupina add foreign key (dijete) references dijete (sifra);



