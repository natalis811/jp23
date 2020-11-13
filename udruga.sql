# U udruzi radi više osoba. 
# Jedna osoba se brine za jednog ili više štićenika udruge. 
# Štićenici udruge su životinje. 
# Svaki štićenik se nalazi u jednom prostoru.

# mysql -uedunova -pedunova </Users/natalis/udruga.sql

drop database if exists udruga;
create database udruga;

use udruga;

create table osoba (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

create table zivotinja (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    osoba int not null,
    prostor int not null
);

create table prostor (
    sifra int not null primary key auto_increment,
    oznaka varchar (50) not null
);

alter table zivotinja add foreign key (osoba) references osoba (sifra);
alter table zivotinja add foreign key (prostor) references prostor (sifra);