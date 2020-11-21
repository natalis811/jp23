#Kreirati bazu vjezba3
#Baza ima dvije tablice:
#Programskijezik i kategorija
#Treba unijeti sljedeće podatke
#Java (oop, win, osx)
#Swift (osx)
#PHP (oop, linux, win)
#Go (linux,osx)

drop database if exists vjezba3;
create database vjezba3 CHARACTER SET utf8;

use vjezba3;

create table programski_jezik (
sifra int not null primary key auto_increment,
naziv varchar (50) not null
);

create table kategorija (
sifra int not null primary key auto_increment,
naziv varchar (50) not null
);

create table programski_jezik_kategorija (
sifra int not null primary key auto_increment,
programski_jezik int not null,
kategorija  int not null
);

insert into programski_jezik (naziv) values ('Java');
insert into programski_jezik (naziv) values ('Swift');
insert into programski_jezik (naziv) values ('PHP');
insert into programski_jezik (naziv) values ('Go');

insert into kategorija (naziv) values ('oop');
insert into kategorija (naziv) values ('win');
insert into kategorija (naziv) values ('osx');
insert into kategorija (naziv) values ('linux');

insert into programski_jezik_kategorija (programski_jezik, kategorija) 
values ( 
	(select sifra from programski_jezik where naziv = 'Java'), 
	(select sifra from kategorija where naziv = 'oop')
);
insert into programski_jezik_kategorija (programski_jezik, kategorija) 
values ( 
	(select sifra from programski_jezik where naziv = 'Java'), 
	(select sifra from kategorija where naziv = 'win')
);

insert into programski_jezik_kategorija (programski_jezik, kategorija) 
values ( 
	(select sifra from programski_jezik where naziv = 'Java'), 
	(select sifra from kategorija where naziv = 'osx')
);

insert into programski_jezik_kategorija (programski_jezik, kategorija) 
values ( 
	(select sifra from programski_jezik where naziv = 'Swift'), 
	(select sifra from kategorija where naziv = 'osx')
);

insert into programski_jezik_kategorija (programski_jezik, kategorija) 
values ( 
	(select sifra from programski_jezik where naziv = 'PHP'), 
	(select sifra from kategorija where naziv = 'oop')
);

insert into programski_jezik_kategorija (programski_jezik, kategorija) 
values ( 
	(select sifra from programski_jezik where naziv = 'PHP'), 
	(select sifra from kategorija where naziv = 'linux')
);

insert into programski_jezik_kategorija (programski_jezik, kategorija) 
values ( 
	(select sifra from programski_jezik where naziv = 'PHP'), 
	(select sifra from kategorija where naziv = 'win')
);

insert into programski_jezik_kategorija (programski_jezik, kategorija) 
values ( 
	(select sifra from programski_jezik where naziv = 'Go'), 
	(select sifra from kategorija where naziv = 'linux')
);

insert into programski_jezik_kategorija (programski_jezik, kategorija) 
values ( 
	(select sifra from programski_jezik where naziv = 'Go'), 
	(select sifra from kategorija where naziv = 'win')
);
select * from programski_jezik;
select * from kategorija;
select * from programski_jezik_kategorija;
