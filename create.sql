create TABLE prowadzacy (
    ID serial PRIMARY KEY,
    imię varchar(20) not null,
    nazwisko varchar(30) not null,
    nr_tel varchar(11) not null,
    e_mail varchar(50) not null
    CONSTRAINT CHe_mail CHECK (e_mail ~ '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$')
);
create TABLE kursy(
    ID serial PRIMARY KEY,
    jezyk varchar(20) not null,
    poziom varchar(2) not null,
    ilosc_godz int not null,
    cena numeric not null
    CONSTRAINT ch_poziom CHECK (poziom ~'^[A-C][1-2]$')
);
create TABLE grupy_jezykowe(
    ID serial PRIMARY KEY,
    godz_przer int not null,
    data_rozp date not null,
    egz_ustny date,
    egz_pisemny_data DATE,
    egz_pisemny_godz TIME,
    prowadzacy_id int not null ,
    kursy_id int not null,
    CONSTRAINT prowadzacy_fk FOREIGN KEY(prowadzacy_id) REFERENCES prowadzacy(ID),
    CONSTRAINT kursy_fk FOREIGN KEY (kursy_id) REFERENCES kursy(ID)
    ON UPDATE CASCADE ON DELETE CASCADE
);
create TABLE uczestnicy (
    ID serial PRIMARY KEY,
    imię varchar(20)  NOT NULL,
    nazwisko varchar(30)  NOT NULL,
    e_mail varchar(50)  NOT NULL,
    nr_tel varchar(11)  NOT NULL,
    adres varchar(60)  NOT NULL
    CONSTRAINT CHe_mail CHECK (e_mail ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$')
);
create TABLE przydzial(
    id_grupy INT NOT NULL,
    id_uczestnik INT NOT NULL , 
    FOREIGN KEY (id_grupy) references grupy_jezykowe(ID),
    FOREIGN KEY (id_uczestnik) references uczestnicy(ID)
    ON UPDATE CASCADE ON DELETE CASCADE
);
create TABLE rozklad_godz(
    ID serial PRIMARY KEY,
    sala int,
    godz_rozp TIME NOT NULL,
    godz_zakon TIME NOT NULL,
    dzien_tyg varchar(12),
    grupa_id int,
    CONSTRAINT grupa_fk FOREIGN KEY(grupa_id) REFERENCES grupy_jezykowe(ID)
    ON UPDATE CASCADE ON DELETE CASCADE
);