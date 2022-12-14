/*
A következő feladatokat
- a Northwind tesztadatbázison oldd meg,
- phpMyAdmin SQL beviteli mezőjében írd meg az utasításokat,
- majd mentsd el ezeket egy SQL szkript formájában!
*/


/*
1. Feladat
Az orders tábla ship_state_province mezőjének értékeit fésüld össze a customers tábla state_province mezőjének értékeivel úgy, hogy
- minden érték csak egyszer szerepeljen,
- az értékek ismétlődhetnek!
*/
SELECT state_province FROM customers UNION SELECT state_province FROM shippers;

/*
2. Feladat
A products táblában számold meg kategóriánként (category mező) a termékek számát!
*/
SELECT COUNT(category) FROM products;


/*
3. Feladat
A orders táblában számold meg városonként (ship_city mező) a rendelések számát!
*/
SELECT ship_city FROM orders GROUP BY id;

/*
4. Feladat
A customers táblából kérd le az ügyfelek számát városonként, ha az eléri legalább a 3-at!
*/
SELECT city FROM customers ORDER BY city = 3;
