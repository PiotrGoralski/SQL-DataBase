
insert into SALONY (IdSalonu, miasto, adres)
values (1, 'Warszawa', 'Warszawska 1');

insert into salony
select max(IdSalonu)+1, 'Warszawa', 'Nowowiejska 1' 
from salony;

insert into salony
select max(IdSalonu)+1, 'Opole', 'Opolska 1' 
from salony;

insert into KOLORYSAMOCHODOW (IdKoloru, NAZWAKOLORU)
VALUES (1, 'Czarny');

insert into KOLORYSAMOCHODOW
select max(IdKoloru)+1, 'Bialy'
from KOLORYSAMOCHODOW;

insert into KOLORYSAMOCHODOW
select max(IdKoloru)+1, 'Czerwony'
from KOLORYSAMOCHODOW;

insert into KOLORYSAMOCHODOW
select max(IdKoloru)+1, 'Niebieski'
from KOLORYSAMOCHODOW;

insert into KOLORYSAMOCHODOW
select max(IdKoloru)+1, 'Fioletowy'
from KOLORYSAMOCHODOW;

insert into MARKISAMOCHODOW (IdMarki, NazwaMarki)
values (1, 'BMW');

insert into MARKISAMOCHODOW
select max(IDMARKI)+1, 'Mercedes' 
from MARKISAMOCHODOW;

insert into MARKISAMOCHODOW
select max(IdMarki)+1, 'Porsche' 
from MARKISAMOCHODOW;

insert into MODELESAMOCHODOW (IDMODELU, NAZWAMODELU, MARKISAMOCHODOW_IDMARKI)
values (1, 'X6', 1);

insert into MODELESAMOCHODOW
select max(IDMODELU)+1, 'M6', 1 
from MODELESAMOCHODOW;

insert into MODELESAMOCHODOW
select max(IDMODELU)+1, 'Cayenne', 3 
from MODELESAMOCHODOW;

insert into MODELESAMOCHODOW
select max(IDMODELU)+1, 'Boxster', 3 
from MODELESAMOCHODOW;

insert into MODELESAMOCHODOW
select max(IDMODELU)+1, 'Sprinter', 2 
from MODELESAMOCHODOW;

insert into MODELESAMOCHODOW
select max(IDMODELU)+1, 'Vito', 2 
from MODELESAMOCHODOW;

insert into SAMOCHODY 
values (1, 'LU009GL', TO_DATE('2019/05/03', 'yyyy/mm/dd'), 'CAY67KUD98POOP21A', 2017, 1, 1, 1);

insert into SAMOCHODY 
values (2, 'WA129GP', TO_DATE('2019/03/01', 'yyyy/mm/dd'), 'COY97KUQ91POCP24B', 2016, 2, 2, 2);

insert into SAMOCHODY 
values (3, 'PO7559R', TO_DATE('2019/10/11', 'yyyy/mm/dd'), 'POP98KUG66POQP14E', 2015, 3, 3, 3);

insert into SAMOCHODY 
values (4, 'ZM7P39Q', TO_DATE('2019/05/23', 'yyyy/mm/dd'), 'QOB98K9G6JKPOP1WI', 2014, 1, 4, 4);

insert into SAMOCHODY 
values (5, 'AM833PL', TO_DATE('2019/08/30', 'yyyy/mm/dd'), 'EOBB9K9G6J7PI31WL', 2013, 2, 5, 5);

insert into SAMOCHODY 
values (6, 'GP817UT', TO_DATE('2018/10/16', 'yyyy/mm/dd'), 'NRU39K5G6R7PN37ME', 2012, 3, 1, 6);

insert into SAMOCHODY 
values (7, 'HI955GR', TO_DATE('2018/12/19', 'yyyy/mm/dd'), 'MFJ32K5U9R7EN81ZU', 2015, 1, 2, 1);

insert into SAMOCHODY 
values (8, 'TP125LU', TO_DATE('2019/01/05', 'yyyy/mm/dd'), 'JFR31P5C9R3WN11EU', 2016, 2, 3, 6);

insert into SAMOCHODY 
values (9, 'OP989LO', TO_DATE('2019/02/22', 'yyyy/mm/dd'), 'IOVB986GRJ72I3AWP', 2015, 3, 5, 1);

insert into SAMOCHODY 
values (10, 'WY919PS', TO_DATE('2019/06/29', 'yyyy/mm/dd'), 'BOBB281GRO22U3WWC', 2016, 2, 5, 1);

insert into SAMOCHODY 
values (11, 'OT211IM', TO_DATE('2020/02/09', 'yyyy/mm/dd'), 'TOBY221GEC12U9NFK', 2017, 2, 1, 5);

insert into SAMOCHODY 
values (12, 'MT214OV', TO_DATE('2018/11/26', 'yyyy/mm/dd'), 'VOEY227GVB16R9NTU', 2013, 1, 5, 2);

insert into PRACOWNICY
values (1, 'Piotr', 'Dobry', TO_DATE('1997/11/26', 'yyyy/mm/dd'), 'CAY954833', TO_DATE('2015/10/16', 'yyyy/mm/dd'), 3500, 1);

insert into PRACOWNICY
values (2, 'Marek', 'Znakomity', TO_DATE('1996/10/11', 'yyyy/mm/dd'), 'KOL848932', TO_DATE('2016/06/18', 'yyyy/mm/dd'), 3900, 1);

insert into PRACOWNICY
values (3, 'Zbyszek', 'Uroczy', TO_DATE('1985/04/08', 'yyyy/mm/dd'), 'POL484068', TO_DATE('2012/10/16', 'yyyy/mm/dd'), 4600, 1);

insert into PRACOWNICY
values (4, 'Ania', 'Fajna', TO_DATE('1992/02/03', 'yyyy/mm/dd'), 'MUK456932', TO_DATE('2015/09/26', 'yyyy/mm/dd'), 4200, 2);

insert into PRACOWNICY
values (5, 'Adrian', 'Zabawny', TO_DATE('1988/09/29', 'yyyy/mm/dd'), 'POT848921', TO_DATE('2016/01/07', 'yyyy/mm/dd'), 4400, 2);

insert into PRACOWNICY
values (6, 'Krystyna', 'Dobroduszna', TO_DATE('1981/10/12', 'yyyy/mm/dd'), 'BAR938052', TO_DATE('2015/11/27', 'yyyy/mm/dd'), 5100, 3);

insert into KLIENCI
values (1, 'Ala', 'Blyskotliwa', 506999111, 'Warszawa', 97121284729);

insert into KLIENCI
values (2, 'Maciej', 'Prawilny', 789123123, 'Opole', 88052189575);

insert into KLIENCI
values (3, 'Piotr', 'Wysmienity', 523321123, 'Krakow', 90010245479);

insert into KLIENCI
values (4, 'Bernard', 'Zyczliwy', 608999222, 'Warszawa', 94101079384);

insert into KLIENCI
values (5, 'Macin', 'Wymagajacy', 506898121, 'Warszawa', 89040156832);

insert into KLIENCI
values (6, 'Barbara', 'Wesola', 402909101, 'Opole', 91112989819);

insert into KLIENCI
values (7, 'Natalia', 'Piekna', 608900900, 'Gdynia', 99021289567);

insert into KLIENCI
values (8, 'Jadwiga', 'Pomyslowa', 769890222, 'Warszawa', 85010143523);

insert into KLIENCI
values (9, 'Bernard', 'Nowatorski', 500400300, 'Warszawa', 94021090123);

insert into KLIENCI
values (10, 'Olga', 'Madra', 902789798, 'Opole', 79091756734);

insert into KLIENCI
values (11, 'Piotr', 'Kolejny', 502500505, 'Warszawa', 79101032426);

insert into KLIENCI
values (12, 'Ola', 'Opiekuncza', 609098324, 'Krakow', 89030774512);

insert into KLIENCI
values (13, 'Wanda', 'Osobliwa', 500403245, 'Wroclaw', 90071778343);

insert into KLIENCI (idklienta, imie, nazwisko, numertelefonu, miastozamieszkania)
values (14, 'Bernard', 'Osobliwy', 666777888, 'Warszawa');

insert into KLIENCI (idklienta, imie, nazwisko, numertelefonu, miastozamieszkania)
values (15, 'Pawel', 'Specyficzny', 123456789, 'Warszawa');

insert into KLIENCI
values (16, 'Magdalena', 'Ostatnia', 506453621, 'Opole', 84050597932);

insert into RODZAJTRANSAKCJI
values (1, 'Kupno');

insert into RODZAJTRANSAKCJI
values (2, 'Sprzedaz');

insert into TRANSAKCJE
values (1, TO_DATE('2015/12/30', 'yyyy/mm/dd'), 70000, 'Karta', 12, 2, 3, 2);

insert into TRANSAKCJE
values (2, TO_DATE('2016/01/10', 'yyyy/mm/dd'), 45000, 'Gotowka', 3, 3, 4, 1);

insert into TRANSAKCJE
values (3, TO_DATE('2016/04/29', 'yyyy/mm/dd'), 69000, 'Karta', 3, 4, 5, 2);

insert into TRANSAKCJE
values (4, TO_DATE('2016/10/08', 'yyyy/mm/dd'), 58000, 'Karta', 9, 5, 1, 1);

insert into TRANSAKCJE
values (5, TO_DATE('2016/12/02', 'yyyy/mm/dd'), 72000, 'Karta', 9, 6, 2, 2);

insert into TRANSAKCJE
values (6, TO_DATE('2017/12/30', 'yyyy/mm/dd'), 95000, 'Gotowka', 10, 7, 6, 1);

insert into TRANSAKCJE
values (7, TO_DATE('2018/06/10', 'yyyy/mm/dd'), 118000, 'Karta', 10, 8, 6, 2);

insert into TRANSAKCJE
values (8, TO_DATE('2018/02/18', 'yyyy/mm/dd'), 91000, 'Karta', 8, 9, 1, 1);

insert into TRANSAKCJE
values (9, TO_DATE('2018/02/27', 'yyyy/mm/dd'), 101000, 'Karta', 8, 10, 1, 2);

insert into TRANSAKCJE
values (10, TO_DATE('2015/09/03', 'yyyy/mm/dd'), 60500, 'Gotowka', 5, 11, 3, 2);

insert into TRANSAKCJE
values (11, TO_DATE('2013/10/17', 'yyyy/mm/dd'), 24000, 'Gotowka', 6, 12, 3, 1);

insert into TRANSAKCJE
values (12, TO_DATE('2014/01/03', 'yyyy/mm/dd'), 39800, 'Karta', 6, 13, 3, 2);

insert into TRANSAKCJE
values (13, TO_DATE('2018/02/03', 'yyyy/mm/dd'), 49100, 'Karta', 11, 14, 5, 1);

insert into TRANSAKCJE
values (14, TO_DATE('2018/03/15', 'yyyy/mm/dd'), 55000, 'Karta', 11, 15, 4, 2);

insert into TRANSAKCJE
values (15, TO_DATE('2015/11/23', 'yyyy/mm/dd'), 28800, 'Gotowka', 4, 16, 2, 2);

insert into TRANSAKCJE
values (16, TO_DATE('2018/05/20', 'yyyy/mm/dd'), 56300, 'Karta', 1, 5, 6, 1);

insert into TRANSAKCJE
values (17, TO_DATE('2017/01/10', 'yyyy/mm/dd'), 80000, 'Karta', 2, 8, 3, 1);

insert into TRANSAKCJE
values (18, TO_DATE('2015/12/23', 'yyyy/mm/dd'), 49200, 'Gotowka', 7, 2, 1, 1);
