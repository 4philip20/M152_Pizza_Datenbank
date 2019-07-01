USE [master]
GO

/****** Object:  Login [BMWP2\db_pizza_adressVerw]    Script Date: 11.06.2019 15:04:28 ******/
CREATE LOGIN [BMWP2\db_pizza_adressVerw] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO

GO

/****** Object:  Login [BMWP2\db_pizza_buchhaltung]    Script Date: 11.06.2019 15:05:17 ******/
CREATE LOGIN [BMWP2\db_pizza_buchhaltung] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO

GO

/****** Object:  Login [BMWP2\db_pizza_iolo]    Script Date: 11.06.2019 15:05:29 ******/
CREATE LOGIN [BMWP2\db_pizza_iolo] FROM WINDOWS WITH DEFAULT_DATABASE=[pizza_db], DEFAULT_LANGUAGE=[us_english]
GO

GO

/****** Object:  Login [BMWP2\db_pizza_karte]    Script Date: 11.06.2019 15:05:42 ******/
CREATE LOGIN [BMWP2\db_pizza_karte] FROM WINDOWS WITH DEFAULT_DATABASE=[pizza_db], DEFAULT_LANGUAGE=[us_english]
GO