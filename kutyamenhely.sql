/*
1. Feladat
Az alábbi feladatot egy SQL szkript formájában valósítsd meg!
Hozd létre el egy kutyamenhely adatbázisát és annak egy tábláját, amely a kutyák adatait tárolja az alábbi oszlopokban:
- id: (azonosító), elsődleges kulcs, automatikus számozású
- nev: nem lehet NULL
- kor: értéke nem lehet több, mint 30
- nem: alapértelemezett érték: 'kan'
- megjegyzes: max. 500 karakter

A táblában rögzíts minimum 2 rekordot! 
*/
 
 
 DROP DATABASE IF EXISTS kutyamenhely;
  CREATE DATABASE muhely;
  USE muhely;
  
  DROP TABLE IF EXISTS kutyak;
  
  CREATE TABLE kutyak(
     id INT PRIMARY KEYS AUTO_INCREMENT, 
     nev VARCHAR(20), 
     kor int CHECK(KOR < 30), 
     nem VARCHAR(20) DEFAULT 'kan',
     megjegyzes VARCHAR(500)
  );

INSERT INTO `kutyak` (`id`, `nev`, `kor`, `nem`, `megjegyzes`) VALUES ('1', 'Rex', '7', 'kan', 'Faj tiszta német juhász.');

INSERT INTO `kutyak` (`id`, `nev`, `kor`, `nem`, `megjegyzes`) VALUES ('2', 'Pista', '5', 'kan', 'Vizsla rendőrkutya.');

INSERT INTO `kutyak` (`id`, `nev`, `kor`, `nem`, `megjegyzes`) VALUES ('3', 'Bernárd', '10', 'kan', 'Bernárd hegyi kereső kutya.');
