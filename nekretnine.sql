
use master;
go
drop database if exists nekretnine;
go
create database nekretnine;
go
use nekretnine;

create table stan(
idstana int not null primary key identity(1,1),
kvadratura int not null,
adresa varchar(100) not null,  -- kad ne pisemo not null, se podrazumjeva da je null
oprema varchar(100),
slika varchar(100)
);

 create table zakupac(
 idzakupca int not null primary key identity(1,1),
 ime varchar(100),
 prezime varchar(100),
 email varchar(100) not null,
 telefon int
 );

 create table najam(
 idstana int not null,
 idzakupaca int not null,
 datumpocetka date,
 datumzavrsetka date,
 cijenanajma money
 );
