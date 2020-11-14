# U osnovnoj školi postoje dječje radionice. 
# Na jednoj radionici sudjeluje više djece. 
# Jedno dijete može sudjelovati na više radionica. 
# Radionicu vodi jedna učiteljica.

# mysql -uedunova -pedunova </Users/natalis/skola.sql

drop database if exists skola;
create database skola;

use skola;

create table radionica (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    vrijeme datetime,
    uciteljica int not null
);

create table uciteljica (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

create table dijete (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

create table radionica_dijete (
    sifra int not null primary key auto_increment,
    dijete int not null,
    radionica int not null
);

alter table radionica add foreign key (uciteljica) references uciteljica (sifra);
alter table radionica_dijete add foreign key (dijete) references dijete (sifra);
alter table radionica_dijete add foreign key (radionica) references radionica (sifra);