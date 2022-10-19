USE test;

SELECT nombre
FROM usuarios;

SELECT MAX(saldo) AS saldo_Maximo
FROM usuarios AS u
WHERE u.sexo='M';

SELECT nombre, telefono
FROM usuarios AS u
WHERE u.marca= 'NOKIA' OR u.marca='BLACKBERRY' OR u.marca='SONY';

SELECT COUNT(*)
FROM usuarios AS u
WHERE u.saldo=0 OR NOT u.activo;

SELECT usuario
FROM usuarios AS u
WHERE u.nivel IN (1,2,3);

SELECT telefono
FROM usuarios
WHERE saldo <= 300;

SELECT SUM(saldo)
FROM usuarios AS u
WHERE u.compania='NEXTEL';

SELECT compania,COUNT(*)
FROM usuarios AS u
GROUP BY u.compania;

SELECT nivel,COUNT(*)
FROM usuarios
GROUP BY nivel;

SELECT usuario
FROM usuarios
WHERE nivel=2;

SELECT email
FROM usuarios
WHERE email LIKE '%gmail.com';


SELECT nombre, telefono
FROM usuarios
WHERE marca NOT  ('LG', 'SAMSUNG', 'MOTOROLA');

SELECT nombre, telefono
FROM usuarios
WHERE marca NOT IN ('LG', 'SAMSUNG');

SELECT usuario, telefono
FROM usuarios
WHERE compania='IUSACELL';

SELECT usuario, telefono
FROM usuarios
WHERE NOT compania='TELCEL';

SELECT AVG(saldo)
FROM usuarios
WHERE marca='NOKIA';

SELECT usuario, telefono
FROM usuarios
WHERE compania='IUSACELL' OR compania='AXEL';

SELECT email
FROM usuarios
WHERE email NOT LIKE '%yahoo.com';

SELECT usuario, telefono
FROM usuarios
WHERE  compania NOT IN ('TELCEL','IUSACELL');

SELECT usuario, telefono
FROM usuarios
WHERE compania='UNEFON';

SELECT DISTINCT marca
FROM usuarios
ORDER BY marca DESC;

SELECT DISTINCT marca
FROM usuarios
ORDER BY RAND();

SELECT usuario
FROM usuarios
WHERE nivel IN (0,2);

SELECT AVG(saldo) AS Saldo_Promedio
FROM usuarios
WHERE marca='LG';

SELECT usuario
FROM usuarios
WHERE nivel IN ('1','3');

SELECT nombre, telefono
FROM usuarios
WHERE marca <>'BLACKBERRY';

SELECT usuario
FROM usuarios
WHERE nivel=3;

SELECT usuario
FROM usuarios
WHERE nivel=0;

SELECT usuario
FROM usuarios
WHERE nivel=1;

SELECT sexo,COUNT(*)
FROM usuarios
GROUP BY sexo;

SELECT usuario, telefono
FROM usuarios
WHERE compania='AT&T';


SELECT DISTINCT compania
FROM usuarios
ORDER BY compania DESC;

SELECT usuario
FROM usuarios
WHERE NOT activo;

SELECT telefono
FROM usuarios
WHERE saldo=0;

SELECT MIN(saldo)
FROM usuarios
WHERE sexo='H';

SELECT telefono
FROM usuarios
WHERE saldo > 300;

SELECT marca, COUNT(*) AS cantidad
FROM usuarios
GROUP BY marca;

SELECT nombre,telefono
FROM usuarios
WHERE marca <> 'LG';

SELECT DISTINCT compania
FROM usuarios
ORDER BY compania ASC;

SELECT SUM(saldo)
FROM usuarios
WHERE compania='UNEFON';

SELECT email
FROM usuarios
WHERE email LIKE '%hotmail.com';

SELECT nombre
FROM usuarios
WHERE saldo=0 OR NOT activo;

SELECT usuario, telefono
FROM usuarios
WHERE compania='IUSACELL' OR compania='TELCEL';

SELECT DISTINCT marca
FROM usuarios
ORDER BY marca ASC;

SELECT DISTINCT marca
FROM usuarios
ORDER BY RAND();

SELECT usuario, telefono
FROM usuarios
WHERE compania='IUSACELL' OR compania='UNEFON';

SELECT nombre, telefono
FROM usuarios
WHERE marca NOT IN ('MOTOROLA','NOKIA');

SELECT SUM(saldo)
FROM usuarios
WHERE compania='TELCEL';

USE clientes;

SELECT p.nombre AS provincias_sin_clientes
FROM provincias AS p
LEFT JOIN clientes AS c
ON p.codigo=c.codigoProvincia
WHERE c.codigoProvincia IS NULL;
