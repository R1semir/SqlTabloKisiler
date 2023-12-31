USE [master]
GO
/****** Object:  Database [Kitaplik]    Script Date: 30.10.2023 18:26:21 ******/
CREATE DATABASE [Kitaplik]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Kitaplik', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Kitaplik.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Kitaplik_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Kitaplik_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Kitaplik] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Kitaplik].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Kitaplik] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Kitaplik] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Kitaplik] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Kitaplik] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Kitaplik] SET ARITHABORT OFF 
GO
ALTER DATABASE [Kitaplik] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Kitaplik] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Kitaplik] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Kitaplik] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Kitaplik] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Kitaplik] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Kitaplik] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Kitaplik] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Kitaplik] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Kitaplik] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Kitaplik] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Kitaplik] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Kitaplik] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Kitaplik] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Kitaplik] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Kitaplik] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Kitaplik] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Kitaplik] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Kitaplik] SET  MULTI_USER 
GO
ALTER DATABASE [Kitaplik] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Kitaplik] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Kitaplik] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Kitaplik] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Kitaplik] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Kitaplik] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Kitaplik] SET QUERY_STORE = ON
GO
ALTER DATABASE [Kitaplik] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Kitaplik]
GO
/****** Object:  Table [dbo].[Kisiler]    Script Date: 30.10.2023 18:26:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kisiler](
	[KisiNo] [tinyint] NULL,
	[Ad] [varchar](20) NULL,
	[Soyad] [varchar](30) NULL,
	[Meslek] [varchar](30) NULL,
	[Sehir] [varchar](15) NULL,
	[Maas] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitap]    Script Date: 30.10.2023 18:26:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitap](
	[KitapNo] [int] NULL,
	[KitapAd] [varchar](50) NULL,
	[KitapYazar] [varchar](50) NULL,
	[KitapSayfa] [smallint] NULL,
	[KitapFiyat] [int] NULL,
	[KitapTarih] [date] NULL,
	[KitapYayınEvi] [varchar](50) NULL,
	[Vergi] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl1]    Script Date: 30.10.2023 18:26:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl1](
	[ad] [varchar](50) NULL,
	[soyad] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (1, N'baran', N'yıldız', N'veteriner', N'bursa', 2500)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (2, N'ahmet', N'güneş', N'doktor', N'ankara', 5000)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (3, N'hakan', N'ay', N'öğretmen', N'trabzon', 2200)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (4, N'ayşe', N'kaya', N'öğretmen', N'manisa', 2300)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (5, N'tekin', N'aslan', N'diyetisyen', N'izmir', 2500)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (6, N'namık', N'kaplan', N'avukat', N'izmir', 3600)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (7, N'emel', N'yılmaz', N'oyuncu', N'aydın', 3300)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (8, N'tuna', N'yılmaz', N'oyuncu', N'denizli', 3200)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (9, N'mehmet', N'öztürk', N'mühendis', N'bursa', 2600)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (10, N'salih', N'ay', N'veteriner', N'ankara', 2400)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (11, N'cenk', N'kilit', N'öğretmen', N'istanbul', 2200)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (12, N'atakan', N'şen', N'öğretmen', N'ankara', 2000)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (13, N'yunus', N'kalın', N'oyuncu', N'bursa', 3500)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (14, N'eylül', N'yüce', N'avukat', N'adana', 4000)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (15, N'bahar', N'öz', N'eczacı', N'şanlıurfa', 3700)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (16, N'nisan', N'yüce', N'mühendis', N'antalya', 2500)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (17, N'dilek', N'tuna', N'mühendis', N'konya', 2600)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (18, N'davut', N'aslan', N'eczacı', N'balıkesir', 3200)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (19, N'yıldırım', N'yağmur', N'öğretmen', N'balıkesir', 2100)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (20, N'hakan', N'yağmur', N'doktor', N'balıkesir', 4800)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (21, N'ali', N'teke', N'tekniker', N'adana', 2000)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (22, N'mehmet', N'kale', N'mühendis', N'bursa', 2600)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (23, N'kaan', N'tuna', N'öğretmen', N'edirne', 2300)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (24, N'ahmet', N'toprak', N'öğretmen', N'kahramanmaraş', 2400)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (25, N'veysel', N'çınar', N'doktor', N'ankara', 4500)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (26, N'özgür', N'meşe', N'eczacı', N'istanbul', 3500)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (27, N'cihan', N'çiçek', N'mühendis', N'adana', 2700)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (28, N'mesut', N'yüce', N'mühendis', N'mersin', 2600)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (29, N'mehmet', N'papatya', N'öğretmen', N'elazığ', 2300)
INSERT [dbo].[Kisiler] ([KisiNo], [Ad], [Soyad], [Meslek], [Sehir], [Maas]) VALUES (30, N'semih', N'demir', N'oyuncu', N'malatya', 3200)
GO
INSERT [dbo].[Kitap] ([KitapNo], [KitapAd], [KitapYazar], [KitapSayfa], [KitapFiyat], [KitapTarih], [KitapYayınEvi], [Vergi]) VALUES (1, N'Çalıkuşu', N'Reşat Nuri Güntekin', 200, 10, CAST(N'2015-01-05' AS Date), N'Güneş', 1)
INSERT [dbo].[Kitap] ([KitapNo], [KitapAd], [KitapYazar], [KitapSayfa], [KitapFiyat], [KitapTarih], [KitapYayınEvi], [Vergi]) VALUES (2, N'Palto', N'Gogol', 80, 12, CAST(N'2015-01-08' AS Date), N'Yıldız', 2)
INSERT [dbo].[Kitap] ([KitapNo], [KitapAd], [KitapYazar], [KitapSayfa], [KitapFiyat], [KitapTarih], [KitapYayınEvi], [Vergi]) VALUES (23, N'Beyaz Geceler', N'Dostoyevski', 200, 5, CAST(N'2015-08-05' AS Date), N'Bulut', 5)
INSERT [dbo].[Kitap] ([KitapNo], [KitapAd], [KitapYazar], [KitapSayfa], [KitapFiyat], [KitapTarih], [KitapYayınEvi], [Vergi]) VALUES (3, N'Kara Geceler', N'Emir', 5000, 250, CAST(N'2023-05-09' AS Date), N'Beyzik', 4)
INSERT [dbo].[Kitap] ([KitapNo], [KitapAd], [KitapYazar], [KitapSayfa], [KitapFiyat], [KitapTarih], [KitapYayınEvi], [Vergi]) VALUES (4, N'Kürk Mantosu', N'Tolsoyevski', 450, 25, CAST(N'2023-01-09' AS Date), N'Beyzik', 3)
INSERT [dbo].[Kitap] ([KitapNo], [KitapAd], [KitapYazar], [KitapSayfa], [KitapFiyat], [KitapTarih], [KitapYayınEvi], [Vergi]) VALUES (5, N'Hüzün Kovan Kuşu', N'Neşat Ertaş', 500, 16, CAST(N'2023-05-05' AS Date), N'Emziksi', 2)
INSERT [dbo].[Kitap] ([KitapNo], [KitapAd], [KitapYazar], [KitapSayfa], [KitapFiyat], [KitapTarih], [KitapYayınEvi], [Vergi]) VALUES (20, N'İnsan Ne İle Yaşar', N'Gülen', 110, 50, CAST(N'2016-08-12' AS Date), N'Beyzik', 5)
INSERT [dbo].[Kitap] ([KitapNo], [KitapAd], [KitapYazar], [KitapSayfa], [KitapFiyat], [KitapTarih], [KitapYayınEvi], [Vergi]) VALUES (5, N'Hüzün Kovan Kuşu', N'Neşat Ertaş', 500, 16, CAST(N'2023-05-30' AS Date), N'Emziksi', 7)
INSERT [dbo].[Kitap] ([KitapNo], [KitapAd], [KitapYazar], [KitapSayfa], [KitapFiyat], [KitapTarih], [KitapYayınEvi], [Vergi]) VALUES (6, N'Laleler ve Güller', N'Emirkan', 250, 25, CAST(N'2023-10-20' AS Date), N'Güneş', 9)
INSERT [dbo].[Kitap] ([KitapNo], [KitapAd], [KitapYazar], [KitapSayfa], [KitapFiyat], [KitapTarih], [KitapYayınEvi], [Vergi]) VALUES (7, N'Sular ve Şelaleler', N'Ayşegül', 540, 42, CAST(N'2023-01-15' AS Date), N'Yıldız', 7)
INSERT [dbo].[Kitap] ([KitapNo], [KitapAd], [KitapYazar], [KitapSayfa], [KitapFiyat], [KitapTarih], [KitapYayınEvi], [Vergi]) VALUES (8, N'sümbüller', N'Sümbül', 23, 51, CAST(N'2023-03-22' AS Date), N'Güneş', 1)
GO
INSERT [dbo].[tbl1] ([ad], [soyad]) VALUES (N'deneme', N'denmeme')
GO
USE [master]
GO
ALTER DATABASE [Kitaplik] SET  READ_WRITE 
GO
