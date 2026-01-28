SELECT AVG(Cena) as sr_cena from ksiazki;
SELECT COUNT(id_ksiazki) as ilosc_ksiażek from ksiazki
SELECT tytul, max(Cena) AS nt_ksiazka from ksiazki;
SELECT tytul, min(Cena) AS nt_ksiazka from ksiazki;
SELECT SUM(Cena) as suma_cen from ksiazki;

SELECT CONCAT(imie, " ", nazwisko) as imie_i_nazwisko from klienci;
SELECT UPPER(tytul) as tytul_z_duzych from ksiazki
SELECT LOWER(wydawnictwo) as wydawnictwa_z_duzych from wydawnictwa;
SELECT length(tytul) as dlg_ksiazki from ksiazki
SELECT SUBSTRING(imie, 1, 3) as trzy_piersze_litery from klienci;

SELECT round(AVG(cena), 2) from ksiazki;
SELECT (MAX(cena) - MIN(Cena)) as roznica_cen from ksiazki;
SELECT id_gatunku, (MAX(cena) - MIN(Cena)) as roznica_cen from ksiazki GROUP by id_gatunku;
SELECT tytul from ksiazki GROUP by tytul HAVING AVG(ksiazki.Cena) < ksiazki.Cena;
SELECT (max(wynagrodzenie) - min(wynagrodzenie)) as roznica_wynagrodzenia from pracownicy;

SELECT sum(wynagrodzenie), AVG(wynagrodzenie) from pracownicy GROUP BY id_stanowiska;
SELECT CONCAT(SUBSTRING(imie, 1, 1), SUBSTRING(nazwisko, 1, 3)) from klienci;
SELECT REPLACE(tytul, " ", "_") from ksiazki;
SELECT a.tytul, b.gatunek from ksiazki a INNER join gatunki b on a.id_gatunku = b.id_gatunku;
SELECT substring(kod_pocztowy, 1, 2) from klienci;

SELECT Round((Cena * SUM(Cena)) / 100, 2) as udzial_w_proc from ksiazki group by id_ksiazki;