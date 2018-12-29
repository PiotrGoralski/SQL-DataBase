-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-06-19 19:40:54.006

-- tables
-- Table: Klienci
CREATE TABLE Klienci (
    IdKlienta integer  NOT NULL,
    Imie varchar2(30)  NOT NULL,
    Nazwisko varchar2(50)  NOT NULL,
    NumerTelefonu number(9,0)  NOT NULL,
    MiastoZamieszkania varchar2(50)  NOT NULL,
    NrPesel number(11,0)  NULL,
    CONSTRAINT Klienci_pk PRIMARY KEY (IdKlienta)
) ;

-- Table: KolorySamochodow
CREATE TABLE KolorySamochodow (
    IdKoloru integer  NOT NULL,
    NazwaKoloru varchar2(50)  NOT NULL,
    CONSTRAINT KolorySamochodow_pk PRIMARY KEY (IdKoloru)
) ;

-- Table: MarkiSamochodow
CREATE TABLE MarkiSamochodow (
    IdMarki integer  NOT NULL,
    NazwaMarki varchar2(50)  NOT NULL,
    CONSTRAINT MarkiSamochodow_pk PRIMARY KEY (IdMarki)
) ;

-- Table: ModeleSamochodow
CREATE TABLE ModeleSamochodow (
    IdModelu integer  NOT NULL,
    NazwaModelu varchar2(50)  NOT NULL,
    MarkiSamochodow_IdMarki integer  NOT NULL,
    CONSTRAINT ModeleSamochodow_pk PRIMARY KEY (IdModelu)
) ;

CREATE UNIQUE INDEX ModeleSamochodow_idx_1 
on ModeleSamochodow 
(NazwaModelu ASC,IdModelu ASC)
;

-- Table: Pracownicy
CREATE TABLE Pracownicy (
    IdPracownika integer  NOT NULL,
    Imie varchar2(30)  NOT NULL,
    Nazwisko varchar2(50)  NOT NULL,
    DataUrodzenia date  NOT NULL,
    NumerDowoduOsobistego varchar2(9)  NULL,
    DataZatrudnienia date  NOT NULL,
    Pensja integer  NOT NULL,
    Salony_IdSalonu integer  NOT NULL,
    CONSTRAINT Pracownicy_pk PRIMARY KEY (IdPracownika)
) ;

-- Table: RodzajTransakcji
CREATE TABLE RodzajTransakcji (
    IdRodzajTransakcji integer  NOT NULL,
    Nazwa varchar2(30)  NOT NULL,
    CONSTRAINT RodzajTransakcji_pk PRIMARY KEY (IdRodzajTransakcji)
) ;

-- Table: Salony
CREATE TABLE Salony (
    IdSalonu integer  NOT NULL,
    Miasto varchar2(50)  NOT NULL,
    Adres varchar2(50)  NOT NULL,
    CONSTRAINT Salony_pk PRIMARY KEY (IdSalonu)
) ;

-- Table: Samochody
CREATE TABLE Samochody (
    IdSamochodu integer  NOT NULL,
    NumerRejestracyjny varchar2(7)  NOT NULL,
    PrzegladTechniczny date  NOT NULL,
    NumerVin varchar2(17)  NOT NULL,
    RokProdukcji integer  NOT NULL,
    Salony_IdSalonu integer  NOT NULL,
    KolorySamochodow_IdKoloru integer  NOT NULL,
    ModeleSamochodow_IdModelu integer  NOT NULL,
    CONSTRAINT Samochody_pk PRIMARY KEY (IdSamochodu)
) ;

-- Table: Transakcje
CREATE TABLE Transakcje (
    IdTransakcji integer  NOT NULL,
    DataTransakcji date  NOT NULL,
    WartoscTransakcji integer  NOT NULL,
    SposobPlatnosci varchar2(30)  NOT NULL,
    Samochody_IdSamochodu integer  NOT NULL,
    Klienci_IdKlienta integer  NOT NULL,
    Pracownicy_IdPracownika integer  NOT NULL,
    IdRodzajTransakcji integer  NOT NULL,
    CONSTRAINT Transakcje_pk PRIMARY KEY (IdTransakcji)
) ;

-- foreign keys
-- Reference: Modele_Marki (table: ModeleSamochodow)
ALTER TABLE ModeleSamochodow ADD CONSTRAINT Modele_Marki
    FOREIGN KEY (MarkiSamochodow_IdMarki)
    REFERENCES MarkiSamochodow (IdMarki);

-- Reference: Pracownicy_Salony (table: Pracownicy)
ALTER TABLE Pracownicy ADD CONSTRAINT Pracownicy_Salony
    FOREIGN KEY (Salony_IdSalonu)
    REFERENCES Salony (IdSalonu);

-- Reference: Samochody_KolorySamochodow (table: Samochody)
ALTER TABLE Samochody ADD CONSTRAINT Samochody_KolorySamochodow
    FOREIGN KEY (KolorySamochodow_IdKoloru)
    REFERENCES KolorySamochodow (IdKoloru);

-- Reference: Samochody_ModeleSamochodow (table: Samochody)
ALTER TABLE Samochody ADD CONSTRAINT Samochody_ModeleSamochodow
    FOREIGN KEY (ModeleSamochodow_IdModelu)
    REFERENCES ModeleSamochodow (IdModelu);

-- Reference: Samochody_Salony (table: Samochody)
ALTER TABLE Samochody ADD CONSTRAINT Samochody_Salony
    FOREIGN KEY (Salony_IdSalonu)
    REFERENCES Salony (IdSalonu);

-- Reference: Transakcje_Klienci (table: Transakcje)
ALTER TABLE Transakcje ADD CONSTRAINT Transakcje_Klienci
    FOREIGN KEY (Klienci_IdKlienta)
    REFERENCES Klienci (IdKlienta);

-- Reference: Transakcje_Pracownicy (table: Transakcje)
ALTER TABLE Transakcje ADD CONSTRAINT Transakcje_Pracownicy
    FOREIGN KEY (Pracownicy_IdPracownika)
    REFERENCES Pracownicy (IdPracownika);

-- Reference: Transakcje_RodzajTransakcji (table: Transakcje)
ALTER TABLE Transakcje ADD CONSTRAINT Transakcje_RodzajTransakcji
    FOREIGN KEY (IdRodzajTransakcji)
    REFERENCES RodzajTransakcji (IdRodzajTransakcji);

-- Reference: Transakcje_Samochody (table: Transakcje)
ALTER TABLE Transakcje ADD CONSTRAINT Transakcje_Samochody
    FOREIGN KEY (Samochody_IdSamochodu)
    REFERENCES Samochody (IdSamochodu);

-- End of file.

