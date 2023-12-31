USE [master]
GO
/****** Object:  Database [Testi]    Script Date: 10.09.2023 21:52:31 ******/
CREATE DATABASE [Testi]

GO
USE [Testi]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ParentCategoryId] [int] NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientId] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[DateOfBirth] [date] NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](50) NULL,
	[DateOfRegistration] [date] NOT NULL,
	[ClientTypeId] [int] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientType]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientType](
	[ClientTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ClientTypeName] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_ClientType] PRIMARY KEY CLUSTERED 
(
	[ClientTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Complect]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complect](
	[ComplectId] [int] IDENTITY(1,1) NOT NULL,
	[MainGoodId] [int] NOT NULL,
	[SecondGoodId] [int] NOT NULL,
 CONSTRAINT [PK_Coplect] PRIMARY KEY CLUSTERED 
(
	[ComplectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Developer]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Developer](
	[DeveloperId] [int] IDENTITY(1,1) NOT NULL,
	[DeveloperName] [nvarchar](1000) NOT NULL,
	[WorkBeginDate] [date] NOT NULL,
 CONSTRAINT [PK_Developer] PRIMARY KEY CLUSTERED 
(
	[DeveloperId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Good]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Good](
	[GoodId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[GoodName] [nvarchar](200) NOT NULL,
	[MainPhoto] [nvarchar](50) NOT NULL,
	[SecondPhotos] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[Weight] [float] NULL,
	[Width] [float] NULL,
	[Heigth] [float] NULL,
	[Length] [float] NULL,
	[DeveloperId] [int] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Good] PRIMARY KEY CLUSTERED 
(
	[GoodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Season]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[SeasonId] [int] IDENTITY(1,1) NOT NULL,
	[SeasonName] [nvarchar](50) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[SeasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeasonGood]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeasonGood](
	[SeasonGoodId] [int] IDENTITY(1,1) NOT NULL,
	[SeasonId] [int] NOT NULL,
	[GoodId] [int] NOT NULL,
 CONSTRAINT [PK_SeasonGood] PRIMARY KEY CLUSTERED 
(
	[SeasonGoodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sell]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sell](
	[SellId] [int] IDENTITY(1,1) NOT NULL,
	[GoodId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[DateSell] [datetime] NOT NULL,
 CONSTRAINT [PK_Sell] PRIMARY KEY CLUSTERED 
(
	[SellId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellVisit]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellVisit](
	[SellVisitId] [int] IDENTITY(1,1) NOT NULL,
	[SellId] [int] NOT NULL,
	[VisitId] [int] NOT NULL,
 CONSTRAINT [PK_SellVisit] PRIMARY KEY CLUSTERED 
(
	[SellVisitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](200) NOT NULL,
	[ServiceDescription] [nvarchar](1000) NULL,
	[Price] [float] NOT NULL,
	[TimeLength] [int] NOT NULL,
	[MainPhoto] [nvarchar](100) NOT NULL,
	[SecondPhotos] [nvarchar](max) NULL,
	[Discount] [int] NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speciality]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speciality](
	[SpecialityId] [int] IDENTITY(1,1) NOT NULL,
	[SpecialityPay] [float] NOT NULL,
	[SpecialityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Speciality] PRIMARY KEY CLUSTERED 
(
	[SpecialityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[StoreId] [int] IDENTITY(1,1) NOT NULL,
	[GoodId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheet]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet](
	[TimeSheetId] [int] IDENTITY(1,1) NOT NULL,
	[WorkerId] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
	[ServiceTime] [time](7) NOT NULL,
	[GenderCheck] [bit] NOT NULL,
 CONSTRAINT [PK_TimeSheet] PRIMARY KEY CLUSTERED 
(
	[TimeSheetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visit]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visit](
	[VisitId] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
	[DateRegs] [datetime] NULL,
	[Paid] [bit] NULL,
	[Rewiew] [nvarchar](1000) NULL,
	[DateActual] [datetime] NOT NULL,
	[Documents] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Visit] PRIMARY KEY CLUSTERED 
(
	[VisitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 10.09.2023 21:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[WorkerId] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[PassportSeries] [nvarchar](10) NOT NULL,
	[PasssportId] [nvarchar](10) NOT NULL,
	[PassportCode] [nvarchar](10) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Birthday] [date] NOT NULL,
	[SpecialityId] [int] NOT NULL,
	[PayCoeff] [float] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[WorkerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_ClientType] FOREIGN KEY([ClientTypeId])
REFERENCES [dbo].[ClientType] ([ClientTypeId])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_ClientType]
GO
ALTER TABLE [dbo].[Complect]  WITH CHECK ADD  CONSTRAINT [FK_Complect_Good] FOREIGN KEY([MainGoodId])
REFERENCES [dbo].[Good] ([GoodId])
GO
ALTER TABLE [dbo].[Complect] CHECK CONSTRAINT [FK_Complect_Good]
GO
ALTER TABLE [dbo].[Complect]  WITH CHECK ADD  CONSTRAINT [FK_Complect_Good1] FOREIGN KEY([SecondGoodId])
REFERENCES [dbo].[Good] ([GoodId])
GO
ALTER TABLE [dbo].[Complect] CHECK CONSTRAINT [FK_Complect_Good1]
GO
ALTER TABLE [dbo].[Good]  WITH CHECK ADD  CONSTRAINT [FK_Good_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Good] CHECK CONSTRAINT [FK_Good_Category]
GO
ALTER TABLE [dbo].[Good]  WITH CHECK ADD  CONSTRAINT [FK_Good_Developer] FOREIGN KEY([DeveloperId])
REFERENCES [dbo].[Developer] ([DeveloperId])
GO
ALTER TABLE [dbo].[Good] CHECK CONSTRAINT [FK_Good_Developer]
GO
ALTER TABLE [dbo].[SeasonGood]  WITH CHECK ADD  CONSTRAINT [FK_SeasonGood_Good] FOREIGN KEY([GoodId])
REFERENCES [dbo].[Good] ([GoodId])
GO
ALTER TABLE [dbo].[SeasonGood] CHECK CONSTRAINT [FK_SeasonGood_Good]
GO
ALTER TABLE [dbo].[SeasonGood]  WITH CHECK ADD  CONSTRAINT [FK_SeasonGood_Season] FOREIGN KEY([SeasonId])
REFERENCES [dbo].[Season] ([SeasonId])
GO
ALTER TABLE [dbo].[SeasonGood] CHECK CONSTRAINT [FK_SeasonGood_Season]
GO
ALTER TABLE [dbo].[Sell]  WITH CHECK ADD  CONSTRAINT [FK_Sell_Good] FOREIGN KEY([GoodId])
REFERENCES [dbo].[Good] ([GoodId])
GO
ALTER TABLE [dbo].[Sell] CHECK CONSTRAINT [FK_Sell_Good]
GO
ALTER TABLE [dbo].[SellVisit]  WITH CHECK ADD  CONSTRAINT [FK_SellVisit_Sell] FOREIGN KEY([SellId])
REFERENCES [dbo].[Sell] ([SellId])
GO
ALTER TABLE [dbo].[SellVisit] CHECK CONSTRAINT [FK_SellVisit_Sell]
GO
ALTER TABLE [dbo].[SellVisit]  WITH CHECK ADD  CONSTRAINT [FK_SellVisit_Visit] FOREIGN KEY([VisitId])
REFERENCES [dbo].[Visit] ([VisitId])
GO
ALTER TABLE [dbo].[SellVisit] CHECK CONSTRAINT [FK_SellVisit_Visit]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Good] FOREIGN KEY([GoodId])
REFERENCES [dbo].[Good] ([GoodId])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Good]
GO
ALTER TABLE [dbo].[TimeSheet]  WITH CHECK ADD  CONSTRAINT [FK_TimeSheet_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([ServiceId])
GO
ALTER TABLE [dbo].[TimeSheet] CHECK CONSTRAINT [FK_TimeSheet_Service]
GO
ALTER TABLE [dbo].[TimeSheet]  WITH CHECK ADD  CONSTRAINT [FK_TimeSheet_Worker] FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([WorkerId])
GO
ALTER TABLE [dbo].[TimeSheet] CHECK CONSTRAINT [FK_TimeSheet_Worker]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_Client] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([ClientId])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_Client]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([ServiceId])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_Service]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Speciality] FOREIGN KEY([SpecialityId])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Speciality]
GO
USE [master]
GO
ALTER DATABASE [Testi] SET  READ_WRITE 
GO
