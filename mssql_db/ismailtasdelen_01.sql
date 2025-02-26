﻿CREATE DATABASE IsmailTasdelen_82
GO
USE [IsmailTasdelen_82]
GO
/****** Object:  Table [dbo].[Doktor_Table]    Script Date: 8.03.2017 13:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doktor_Table](
	[Doktor_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Doktor_Adi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Doktor_Table] PRIMARY KEY CLUSTERED 
(
	[Doktor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hasta_Table]    Script Date: 8.03.2017 13:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hasta_Table](
	[Hasta_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Hasta_Adi_Syadi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Hasta_Table] PRIMARY KEY CLUSTERED 
(
	[Hasta_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Iletisim_Table]    Script Date: 8.03.2017 13:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iletisim_Table](
	[Iletisim_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Hasta_Telefon] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Iletisim_Table] PRIMARY KEY CLUSTERED 
(
	[Iletisim_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Islem_Table]    Script Date: 8.03.2017 13:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Islem_Table](
	[Islem_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Islem_Adi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Islem_Table] PRIMARY KEY CLUSTERED 
(
	[Islem_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KayıtAlan_ID]    Script Date: 8.03.2017 13:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KayıtAlan_ID](
	[KayıtAlan_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[KayıtAlan_Ad_Soyad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KayıtAlan_ID] PRIMARY KEY CLUSTERED 
(
	[KayıtAlan_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kurum_Table]    Script Date: 8.03.2017 13:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kurum_Table](
	[Kurum_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Kurum_Adi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kurum_Table] PRIMARY KEY CLUSTERED 
(
	[Kurum_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Polikilinik_Table]    Script Date: 8.03.2017 13:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Polikilinik_Table](
	[Polikilinik_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Polikilinik_Adi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Polikilinik_Table] PRIMARY KEY CLUSTERED 
(
	[Polikilinik_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Randevu_Table]    Script Date: 8.03.2017 13:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Randevu_Table](
	[Randevu_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[DoktorID] [numeric](18, 0) NOT NULL,
	[HastaID] [numeric](18, 0) NOT NULL,
	[IletisimID] [numeric](18, 0) NOT NULL,
	[IslemID] [numeric](18, 0) NOT NULL,
	[KayıtID] [numeric](18, 0) NOT NULL,
	[KurumID] [numeric](18, 0) NOT NULL,
	[PolikilinikID] [numeric](18, 0) NOT NULL,
	[TarihID] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Randevu_Table] PRIMARY KEY CLUSTERED 
(
	[Randevu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tarih_Table]    Script Date: 8.03.2017 13:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarih_Table](
	[Tarih_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Tarih] [date] NOT NULL,
	[Saat] [time](7) NOT NULL,
 CONSTRAINT [PK_Tarih_Table] PRIMARY KEY CLUSTERED 
(
	[Tarih_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


UPADING MYSQL REPOS
