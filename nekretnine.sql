
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
adresa varchar(100) not null,  --ali se null ne piše nego se podrazumjeva
oprema varchar(100),
slika varchar(100)
);

 --create table zakupac(
 --idzakupca int primary key,
 --ime varchar(100),
 --prezime varchar(100),
 --email varchar(100),
 --telefon int
 --);

 --create table najam(
 --idnajma int primary key,
 --idstana int,
 --idzakupaca int,
 --datumpocetka date,
 --datumzavrsetka date,
 --cijenanajma money
 --);
