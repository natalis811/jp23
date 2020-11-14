# Doktor liječi pacijente. 
# Jednog pacijenta može liječiti više puta. 
# U liječenju pacijenta doktoru pomažu medicinske sestre.

# mysql -uedunova -pedunova </Users/natalis/doktor.sql

drop database if exists doktor;
create database doktor;

use doktor;

create table doktor (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

create table pacijent (
   sifra int not null primary key auto_increment,
   ime varchar (50) not null,
   prezime varchar (50) not null 
);

create table medicinska_sestra (
  sifra int not null primary key auto_increment,
  ime varchar (50) not null,
  prezime varchar (50) not null  
);

create table usluga_lijecenja (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    vrijeme datetime,
    doktor int not null,
    pacijent int not null
);

create table usluga_lijecenja_medicinska_sestra (
    sifra int not null primary key auto_increment,
    usluga_lijecenja int not null,
    medicinska_sestra int not null
);

alter table usluga_lijecenja add foreign key (doktor) references doktor (sifra);
alter table usluga_lijecenja add foreign key (pacijent) references pacijent (sifra);
alter table usluga_lijecenja_medicinska_sestra add foreign key (usluga_lijecenja) references usluga_lijecenja (sifra);
alter table usluga_lijecenja_medicinska_sestra add foreign key (medicinska_sestra) references medicinska_sestra (sifra);