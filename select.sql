--rozkład zajęć z prowadzącymi
SELECT R.dzien_tyg, R.godz_rozp,
R.godz_zakon,G.ID,P.imię,P.nazwisko FROM ((rozklad_godz R INNER JOIN 
grupy_jezykowe G ON grupa_id = G.ID) INNER JOIN prowadzacy P ON P.ID = prowadzacy_id)
;

--klienci którzy są przypisani do więcej jak jednej grupy
SELECT U.ID,imię, nazwisko FROM ((uczestnicy U INNER JOIN przydzial ON id_uczestnik = ID)
INNER JOIN grupy_jezykowe G ON G.ID = id_grupy)
GROUP BY U.ID,imię,nazwisko HAVING count(*)>1 ORDER BY U.ID;

--które grupy nie mają ustalonej daty egzaminu
SELECT G.ID as "Numer grupy", jezyk, poziom FROM grupy_jezykowe G,kursy
WHERE kursy_id = kursy.ID AND egz_ustny IS NULL;

--kursy i ceny(za godzinę)
SELECT ID,jezyk,poziom,round((cena/ilosc_godz),2) as "cena za godz." FROM kursy;

--uczestnicy z miasta-> Warszawa
SELECT * FROM uczestnicy where adres LIKE '%Warszawa%';

--uczestnicy którzy nie są przydzieleni do grup
SELECT * FROM uczestnicy WHERE ID NOT IN (SELECT id_uczestnik FROM przydzial);

