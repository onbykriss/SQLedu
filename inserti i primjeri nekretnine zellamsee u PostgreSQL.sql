CREATE TABLE stanovi (
    idstanovi SERIAL PRIMARY KEY,
    kvadratura INT NOT NULL,
    adresa VARCHAR(100) NOT NULL,
    oprema VARCHAR(100),
    slika VARCHAR(100)
);

CREATE TABLE zakupci (
    idzakupci SERIAL PRIMARY KEY,
    ime VARCHAR(100),
    prezime VARCHAR(100),
    email VARCHAR(100) NOT NULL,
    telefon VARCHAR(100)
);

CREATE TABLE najmovi (
    idnajmovi SERIAL PRIMARY KEY,
    idstanovi INT NOT NULL REFERENCES stanovi(idstanovi),
    idzakupci INT NOT NULL REFERENCES zakupci(idzakupci),
    datumpocetka DATE,
    datumzavrsetka DATE,
    cijenanajma NUMERIC
);

ALTER TABLE najmovi
ADD CONSTRAINT fk_idstanovi FOREIGN KEY (idstanovi) REFERENCES stanovi(idstanovi);
ALTER TABLE najmovi
ADD CONSTRAINT fk_idzakupci FOREIGN KEY (idzakupci) REFERENCES zakupci(idzakupci);

INSERT INTO stanovi (kvadratura, adresa, oprema, slika) VALUES
(50, 'Zell am See', 'kuhinja,spavaonica,wc,terasa', 'slika.jpg'),
(73, 'Saalfelden', 'wc', 'slika.jpg'),
(105, 'Mittersil', 'kuhinja,kupatilo,ostava', 'slika.jpg'),
(23, 'Turnbach', 'terasa,kupatilo', 'slika.jpg');
SELECT * FROM stanovi;

INSERT INTO zakupci (ime, prezime, email, telefon) VALUES
('Kristina', 'Andric', 'fashionbykriss@gmail.com', '031511271'),
('Tomislav', 'Rogic', 'tomislav.rogic@gmail.com', '025485645'),
('Lara', 'Bakalar', 'larabakalar@gmail.com', '051425152'),
('Tihomir', 'Pametnjakovic', 'tihomir.pametnjakovic@gmail.com', '034253548');
SELECT * FROM zakupci;

INSERT INTO najmovi (idstanovi, idzakupci, datumpocetka, datumzavrsetka, cijenanajma) VALUES
(2, 3, '2024-02-07', '2024-02-07', 1560),
(4, 1, '2022-03-09', '2024-09-01', 900),
(1, 4, '2024-12-16', '2025-09-01', 3421),
(3, 2, '2021-04-18', '2024-11-01', 1155);
SELECT * FROM najmovi;