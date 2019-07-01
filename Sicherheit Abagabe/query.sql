USE pizza_db;
/*
Testfälle zu Benuter Pizza karte
*/
/*
1 Geht nicht
*/
SELECT * FROM pizza_db;
/*
1.1 Geht nicht
*/
CREATE TABLE Test_loeschen (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255) 
);
/*
1.2 Geht nicht
*/
DROP TABLE pizza;
/*
1.3 Geht
*/
SELECT * FROM pizza;
/*
1.4 Muesch mache
*/
SELECT * FROM pizza;
/*
1.5 Geht
*/
INSERT INTO [dbo].[pizza]
           ([name]
           ,[preis])
     VALUES
           ('PizzaNameTest'
           ,12)
GO
/*
1.6 Geht
*/
INSERT INTO [dbo].[getraenke]
           ([name]
           ,[preis])
     VALUES
           ('GetraenkeNameTest'
           ,12)
GO

/*
1.7 Geht 
*/
UPDATE [dbo].[pizza]
   SET [name] = 'PizzaNameTestUpdate'
 WHERE [name] = 'PizzaNameTest'
GO
/*
1.8  Geht
*/
UPDATE [dbo].[getraenke]
   SET [name] = 'GetraenkeNameUpdate'
 WHERE [name] = 'PizzaNameTest'
GO

/*
Testfälle zu Benuter Pizza Buchhaltung
*/

/*
1 Geht nicht
*/
SELECT * FROM pizza_db;
/*
1.1 Geht nicht
*/
CREATE TABLE Test_loeschen (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255) 
);
/*
1.2 Geht nicht
*/
DROP TABLE pizza;
/*
1.3 Geht
*/
SELECT * FROM pizza;
/*
1.4 Muesch mache
*/
SELECT * FROM pizza;
/*
1.5 Geht
*/
INSERT INTO [dbo].[pizza]
           ([name]
           ,[preis])
     VALUES
           ('PizzaNameTest'
           ,12)
GO
/*
1.6 Geht
*/
INSERT INTO [dbo].[getraenke]
           ([name]
           ,[preis])
     VALUES
           ('GetraenkeNameTest'
           ,12)
GO

/*
1.7 Geht 
*/
UPDATE [dbo].[pizza]
   SET [name] = 'PizzaNameTestUpdate'
 WHERE [name] = 'PizzaNameTest'
GO
/*
1.8  Geht
*/
UPDATE [dbo].[getraenke]
   SET [name] = 'GetraenkeNameUpdate'
 WHERE [name] = 'PizzaNameTest'
GO
/*
Testfälle zu Benuter Pizza Buchhaltung
*/
/*
2 Geht nicht
*/
SELECT * FROM pizza_db;
/*
2.1 Geht nicht
*/
CREATE TABLE Test (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255) 
);
/*
2.2 Geht nicht
*/
DROP TABLE pizza;
/*
2.3 Geht
*/
SELECT TOP (1000) [ID]
      ,[kunde_id]
      ,[lieferant_id]
  FROM [pizza_db].[dbo].[bestellung]
/*
2.4 Geht
*/
SELECT TOP (1000) 
      [kunde_id]
  FROM [pizza_db].[dbo].[bestellung]

/*
2.5 Geht nicht
*/
INSERT INTO [dbo].[pizza]
           ([name]
           ,[preis])
     VALUES
           ('PizzaNameTest'
           ,12)
GO

/*
Testfälle zu Benuter Pizza Adressverwaltung
*/

/*
3 Gehen Alle
*/
SELECT * FROM dbo.partner,dbo.ortschaft,dbo.kanton,dbo.land;
/*
3.1 Geht nicht
*/
CREATE TABLE Test_loeschen (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255) 
);
/*
3.2 Geht nicht
*/
DROP TABLE pizza;
/*
3.3 Geht nicht
*/
SELECT * FROM dbo.bestellung;
/*
3.4 geht
*/
UPDATE [dbo].[partner]
   SET [name] = 'parntnerTestUpdate'
 WHERE [name] = 'parntnerTest'
GO
/*
3.5 geht, aber nur mit bereits eingefüten Daten (1) müssen gesetzt sein.
*/
INSERT INTO [dbo].[partner]
           ([vorname]
           ,[nachname]
           ,[adresse]
           ,[ortschaft_id]
           ,[fahrzeug_id]
           ,[partner_typ])
     VALUES
           ('vorname'
           ,'nachname'
           ,'adresse'
           ,1
           ,1
           ,1)
/*
3.6 geht nicht
*/
INSERT INTO [dbo].[pizza]
           ([name]
           ,[preis])
     VALUES
           ('pizzaTestInsert'
           ,1)
GO
/*
Testfälle zu Benuter Pizza iolo
*/

/*
4 geht nicht
*/
SELECT * FROM pizza_db;
/*
4.1 Geht nicht
*/
CREATE TABLE test (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255) 
);
/*
4.2 Geht nicht
*/
DROP TABLE pizza;
/*
4.3 geht
*/
SELECT *
  FROM [pizza_db].[dbo].[bestellung]
/*
4.4 geht
*/
SELECT 
[kunde_id]
  FROM [pizza_db].[dbo].[bestellung]