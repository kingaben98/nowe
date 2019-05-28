SET client_encoding TO 'UTF-8';
CREATE LANGUAGE plpgsql;

CREATE TABLE spis_egzaminow(
    Nr_grupy INT,
    id INT,
    imie varchar(50),
    nazwisko varchar(50),
    data_egzaminu_ustnego date,
    data_egzaminu_pisemnego date,
    godz_egzaminu_pisemnego time
);

CREATE FUNCTION uzupelnij_egzaminy()
    RETURNS TRIGGER AS $$
DECLARE
    wiersz RECORD;
BEGIN
    IF new.egz_ustny IS NOT NULL
     OR new.egz_pisemny_data IS NOT NULL
     OR new.egz_pisemny_godz IS NOT NULL
    THEN
    SELECT * INTO wiersz FROM prowadzacy
    WHERE new.prowadzacy_id = id;
    INSERT INTO spis_egzaminow
    VALUES new.id,wiersz.id,wiersz.imię,wiersz.nazwisko,new.egz_ustny,new.egz_pisemny_data,new.egz_pisemny_godz);
    RAISE NOTICE 'dodano daty egzaminów grupy : %',wiersz.id;
    RAISE NOTICE 'PROWADZĄCY: % %',wiersz.imię,wiersz.nazwisko;
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER  uzupelnij_trig
    AFTER INSERT OR UPDATE ON grupy_jezykowe
FOR EACH ROW EXECUTE PROCEDURE uzupelnij_egzaminy();