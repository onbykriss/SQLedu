
use master;
go
drop database if exists zellamsee;
go
create database zellamsee;
go
use zellamsee;


create table stanovi(
idstanovi int not null primary key identity(1,1),
kvadratura int not null,
adresa varchar(100) not null,
oprema varchar(100),
slika varchar(100)
);

 create table zakupci(
 idzakupci int not null primary key identity(1,1),
 ime varchar(100),
 prezime varchar(100),
 email varchar(100) not null,
 telefon varchar(100)
 );

 create table najmovi(
 idnajmovi int not null primary key identity(1,1),
 idstanovi int not null,
 idzakupci int not null,
 datumpocetka date,
 datumzavrsetka date,
 cijenanajma money
);

alter table najmovi add foreign key (idstanovi) references stanovi(idstanovi);
alter table najmovi add foreign key (idzakupci) references zakupci(idzakupci);
