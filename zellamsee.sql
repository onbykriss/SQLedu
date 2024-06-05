use zellamsee;

create table stanovi(
idstanovi int identity(1,1) not null primary key,
kvadratura int not null,
adresa varchar(100) not null,
oprema varchar(100),
slika varchar(100)
);

 create table zakupci(
 idzakupci int identity(1,1) not null primary key,
 ime varchar(100),
 prezime varchar(100),
 email varchar(100) not null,
 telefon varchar(100)
 );

 create table najmovi(
 idstanovi int not null,
 idzakupci int not null,
 datumpocetka date,
 datumzavrsetka date,
 cijenanajma money
);

alter table najmovi add foreign key (idstanovi) references stanovi(idstanovi);
alter table najmovi add foreign key (idzakupci) references zakupci(idzakupci);
