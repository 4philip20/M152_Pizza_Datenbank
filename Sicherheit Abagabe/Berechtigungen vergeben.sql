USE [master]
GO
/****** Object:  Database [pizza_db]    Script Date: 11.06.2019 15:32:47 ******/
CREATE DATABASE [pizza_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pizza_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\pizza_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pizza_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\pizza_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [pizza_db] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pizza_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pizza_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pizza_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pizza_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pizza_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pizza_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [pizza_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pizza_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pizza_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pizza_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pizza_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pizza_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pizza_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pizza_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pizza_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pizza_db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [pizza_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pizza_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pizza_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pizza_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pizza_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pizza_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pizza_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pizza_db] SET RECOVERY FULL 
GO
ALTER DATABASE [pizza_db] SET  MULTI_USER 
GO
ALTER DATABASE [pizza_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pizza_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pizza_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pizza_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pizza_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [pizza_db] SET QUERY_STORE = OFF
GO
USE [pizza_db]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
/****** Object:  Login [NT-AUTORITÄT\SYSTEM]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [NT-AUTORITÄT\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BMWP2\vmadmin]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [BMWP2\vmadmin] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BMWP2\dbReporter]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [BMWP2\dbReporter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BMWP2\dbModifier]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [BMWP2\dbModifier] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BMWP2\dbAdmin]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [BMWP2\dbAdmin] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BMWP2\db_pizza_karte]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [BMWP2\db_pizza_karte] FROM WINDOWS WITH DEFAULT_DATABASE=[pizza_db], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BMWP2\db_pizza_iolo]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [BMWP2\db_pizza_iolo] FROM WINDOWS WITH DEFAULT_DATABASE=[pizza_db], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BMWP2\db_pizza_buchhaltung]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [BMWP2\db_pizza_buchhaltung] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BMWP2\db_pizza_adressVerw]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [BMWP2\db_pizza_adressVerw] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'UnH9IRUbTvRAVz89I56KyGv70mdgc1mdxEd/fMIXGXw=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 11.06.2019 15:32:47 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'eCiQXwUNPBcwmNNfGOB/MrZOgNIhtYX+koXiT0WYeQw=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[pizza_db] TO [BMWP2\vmadmin]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [BMWP2\vmadmin]
GO
ALTER SERVER ROLE [processadmin] ADD MEMBER [BMWP2\dbAdmin]
GO
USE [pizza_db]
GO
/****** Object:  User [BMWP2\db_pizza_karte]    Script Date: 11.06.2019 15:32:47 ******/
CREATE USER [BMWP2\db_pizza_karte] FOR LOGIN [BMWP2\db_pizza_karte] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BMWP2\db_pizza_iolo]    Script Date: 11.06.2019 15:32:47 ******/
CREATE USER [BMWP2\db_pizza_iolo] FOR LOGIN [BMWP2\db_pizza_iolo] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BMWP2\db_pizza_buchhaltung]    Script Date: 11.06.2019 15:32:47 ******/
CREATE USER [BMWP2\db_pizza_buchhaltung] FOR LOGIN [BMWP2\db_pizza_buchhaltung] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BMWP2\db_pizza_adressVerw]    Script Date: 11.06.2019 15:32:47 ******/
CREATE USER [BMWP2\db_pizza_adressVerw] FOR LOGIN [BMWP2\db_pizza_adressVerw] WITH DEFAULT_SCHEMA=[dbo]
GO
GRANT CONNECT TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT CONNECT TO [BMWP2\db_pizza_buchhaltung] AS [dbo]
GO
GRANT CONNECT TO [BMWP2\db_pizza_iolo] AS [dbo]
GO
GRANT CONNECT TO [BMWP2\db_pizza_karte] AS [dbo]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
/****** Object:  Table [dbo].[bestellung]    Script Date: 11.06.2019 15:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bestellung](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[kunde_id] [int] NULL,
	[lieferant_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[bestellung] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[bestellung] TO [BMWP2\db_pizza_buchhaltung] AS [dbo]
GO
GRANT DELETE ON [dbo].[bestellung] TO [BMWP2\db_pizza_buchhaltung] AS [dbo]
GO
GRANT INSERT ON [dbo].[bestellung] TO [BMWP2\db_pizza_buchhaltung] AS [dbo]
GO
GRANT SELECT ON [dbo].[bestellung] TO [BMWP2\db_pizza_buchhaltung] AS [dbo]
GO
GRANT SELECT ON [dbo].[bestellung] TO [BMWP2\db_pizza_iolo] AS [dbo]
GO
DENY UPDATE ON [dbo].[bestellung] ([ID]) TO [BMWP2\db_pizza_buchhaltung] AS [dbo]
GO
GRANT UPDATE ON [dbo].[bestellung] ([kunde_id]) TO [BMWP2\db_pizza_buchhaltung] AS [dbo]
GO
GRANT UPDATE ON [dbo].[bestellung] ([lieferant_id]) TO [BMWP2\db_pizza_buchhaltung] AS [dbo]
GO
/****** Object:  Table [dbo].[bestellung_getraenke]    Script Date: 11.06.2019 15:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bestellung_getraenke](
	[bestellung_id] [int] NOT NULL,
	[getraenke_id] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[bestellung_getraenke] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[bestellung_pizza]    Script Date: 11.06.2019 15:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bestellung_pizza](
	[bestellung_id] [int] NOT NULL,
	[pizza_id] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[bestellung_pizza] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[fahrzeuge]    Script Date: 11.06.2019 15:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fahrzeuge](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Marke] [varchar](50) NOT NULL,
	[Modell] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[fahrzeuge] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[getraenke]    Script Date: 11.06.2019 15:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[getraenke](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[preis] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[getraenke] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[getraenke] TO [BMWP2\db_pizza_karte] AS [dbo]
GO
GRANT CONTROL ON [dbo].[getraenke] TO [BMWP2\db_pizza_karte] AS [dbo]
GO
GRANT DELETE ON [dbo].[getraenke] TO [BMWP2\db_pizza_karte] AS [dbo]
GO
GRANT INSERT ON [dbo].[getraenke] TO [BMWP2\db_pizza_karte] AS [dbo]
GO
GRANT SELECT ON [dbo].[getraenke] TO [BMWP2\db_pizza_karte] AS [dbo]
GO
GRANT UPDATE ON [dbo].[getraenke] TO [BMWP2\db_pizza_karte] AS [dbo]
GO
/****** Object:  Table [dbo].[kanton]    Script Date: 11.06.2019 15:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kanton](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[kantonname] [varchar](50) NOT NULL,
	[land_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[kanton] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[kanton] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT DELETE ON [dbo].[kanton] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT INSERT ON [dbo].[kanton] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT SELECT ON [dbo].[kanton] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT UPDATE ON [dbo].[kanton] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
/****** Object:  Table [dbo].[land]    Script Date: 11.06.2019 15:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[land](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[landname] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[land] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[land] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT DELETE ON [dbo].[land] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT INSERT ON [dbo].[land] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT SELECT ON [dbo].[land] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT UPDATE ON [dbo].[land] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
/****** Object:  Table [dbo].[lieferant]    Script Date: 11.06.2019 15:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lieferant](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](50) NOT NULL,
	[nachname] [varchar](50) NOT NULL,
	[fahrzeug_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[lieferant] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ortschaft]    Script Date: 11.06.2019 15:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ortschaft](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[plz] [varchar](50) NOT NULL,
	[ortsname] [varchar](50) NOT NULL,
	[kanton_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[ortschaft] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[ortschaft] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT DELETE ON [dbo].[ortschaft] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT INSERT ON [dbo].[ortschaft] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT SELECT ON [dbo].[ortschaft] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT UPDATE ON [dbo].[ortschaft] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
/****** Object:  Table [dbo].[partner]    Script Date: 11.06.2019 15:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partner](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](50) NOT NULL,
	[nachname] [varchar](50) NOT NULL,
	[adresse] [varchar](50) NOT NULL,
	[ortschaft_id] [int] NOT NULL,
	[fahrzeug_id] [int] NOT NULL,
	[partner_typ] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[partner] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[partner] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT DELETE ON [dbo].[partner] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT INSERT ON [dbo].[partner] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT SELECT ON [dbo].[partner] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
GRANT UPDATE ON [dbo].[partner] TO [BMWP2\db_pizza_adressVerw] AS [dbo]
GO
/****** Object:  Table [dbo].[pizza]    Script Date: 11.06.2019 15:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pizza](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[preis] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[pizza] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[pizza] TO [BMWP2\db_pizza_karte] AS [dbo]
GO
GRANT DELETE ON [dbo].[pizza] TO [BMWP2\db_pizza_karte] AS [dbo]
GO
GRANT INSERT ON [dbo].[pizza] TO [BMWP2\db_pizza_karte] AS [dbo]
GO
GRANT SELECT ON [dbo].[pizza] TO [BMWP2\db_pizza_karte] AS [dbo]
GO
GRANT UPDATE ON [dbo].[pizza] TO [BMWP2\db_pizza_karte] AS [dbo]
GO
ALTER TABLE [dbo].[bestellung]  WITH CHECK ADD FOREIGN KEY([kunde_id])
REFERENCES [dbo].[partner] ([ID])
GO
ALTER TABLE [dbo].[bestellung]  WITH CHECK ADD FOREIGN KEY([lieferant_id])
REFERENCES [dbo].[lieferant] ([ID])
GO
ALTER TABLE [dbo].[bestellung_getraenke]  WITH CHECK ADD  CONSTRAINT [FK__bestellun__beste__403A8C7D] FOREIGN KEY([bestellung_id])
REFERENCES [dbo].[bestellung] ([ID])
GO
ALTER TABLE [dbo].[bestellung_getraenke] CHECK CONSTRAINT [FK__bestellun__beste__403A8C7D]
GO
ALTER TABLE [dbo].[bestellung_getraenke]  WITH CHECK ADD  CONSTRAINT [FK__bestellun__getra__3F466844] FOREIGN KEY([getraenke_id])
REFERENCES [dbo].[getraenke] ([ID])
GO
ALTER TABLE [dbo].[bestellung_getraenke] CHECK CONSTRAINT [FK__bestellun__getra__3F466844]
GO
ALTER TABLE [dbo].[bestellung_pizza]  WITH CHECK ADD  CONSTRAINT [FK__bestellun__beste__3C69FB99] FOREIGN KEY([bestellung_id])
REFERENCES [dbo].[bestellung] ([ID])
GO
ALTER TABLE [dbo].[bestellung_pizza] CHECK CONSTRAINT [FK__bestellun__beste__3C69FB99]
GO
ALTER TABLE [dbo].[bestellung_pizza]  WITH CHECK ADD  CONSTRAINT [FK__bestellun__pizza__3B75D760] FOREIGN KEY([pizza_id])
REFERENCES [dbo].[pizza] ([ID])
GO
ALTER TABLE [dbo].[bestellung_pizza] CHECK CONSTRAINT [FK__bestellun__pizza__3B75D760]
GO
ALTER TABLE [dbo].[kanton]  WITH CHECK ADD FOREIGN KEY([land_id])
REFERENCES [dbo].[land] ([ID])
GO
ALTER TABLE [dbo].[lieferant]  WITH CHECK ADD FOREIGN KEY([fahrzeug_id])
REFERENCES [dbo].[fahrzeuge] ([ID])
GO
ALTER TABLE [dbo].[ortschaft]  WITH CHECK ADD FOREIGN KEY([kanton_id])
REFERENCES [dbo].[kanton] ([ID])
GO
ALTER TABLE [dbo].[partner]  WITH CHECK ADD FOREIGN KEY([fahrzeug_id])
REFERENCES [dbo].[fahrzeuge] ([ID])
GO
ALTER TABLE [dbo].[partner]  WITH CHECK ADD FOREIGN KEY([ortschaft_id])
REFERENCES [dbo].[ortschaft] ([ID])
GO
USE [master]
GO
ALTER DATABASE [pizza_db] SET  READ_WRITE 
GO
