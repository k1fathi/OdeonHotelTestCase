USE [master]
GO
/****** Object:  Database [OdeonHotel]    Script Date: 10.04.2022 20:28:39 ******/
CREATE DATABASE [OdeonHotel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OdeonHotelTestCase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OdeonHotelTestCase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OdeonHotelTestCase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OdeonHotelTestCase.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OdeonHotel] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OdeonHotel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OdeonHotel] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [OdeonHotel] SET ANSI_NULLS ON 
GO
ALTER DATABASE [OdeonHotel] SET ANSI_PADDING ON 
GO
ALTER DATABASE [OdeonHotel] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [OdeonHotel] SET ARITHABORT ON 
GO
ALTER DATABASE [OdeonHotel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OdeonHotel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OdeonHotel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OdeonHotel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OdeonHotel] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [OdeonHotel] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [OdeonHotel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OdeonHotel] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [OdeonHotel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OdeonHotel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OdeonHotel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OdeonHotel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OdeonHotel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OdeonHotel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OdeonHotel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OdeonHotel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OdeonHotel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OdeonHotel] SET RECOVERY FULL 
GO
ALTER DATABASE [OdeonHotel] SET  MULTI_USER 
GO
ALTER DATABASE [OdeonHotel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OdeonHotel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OdeonHotel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OdeonHotel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OdeonHotel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OdeonHotel] SET QUERY_STORE = OFF
GO
USE [OdeonHotel]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10.04.2022 20:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelRooms]    Script Date: 10.04.2022 20:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelRooms](
	[Id] [uniqueidentifier] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[MaxAllotment] [int] NOT NULL,
	[SoldAllotment] [int] NOT NULL,
	[HotelId] [uniqueidentifier] NOT NULL,
	[RoomTypeId] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[UpdateDate] [datetime2](7) NULL,
 CONSTRAINT [PK_HotelRooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 10.04.2022 20:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[Id] [uniqueidentifier] NOT NULL,
	[HotelName] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[UpdateDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 10.04.2022 20:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[Id] [uniqueidentifier] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[RoomCount] [int] NOT NULL,
	[HotelRoomId] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[UpdateDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Reservations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomTypes]    Script Date: 10.04.2022 20:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomTypes](
	[Id] [uniqueidentifier] NOT NULL,
	[RoomTypeName] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[UpdateDate] [datetime2](7) NULL,
 CONSTRAINT [PK_RoomTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220410140827_FirstInitiate', N'6.0.3')
GO
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'757dddc4-adb7-4b11-97fe-008f681ddd6b', N'Hotel Occazia', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'738ff466-d4b6-4663-9a2d-0149421d1a71', N'Treebones Resort', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'3130570c-98fe-4b85-98ea-01ca10368047', N'Beachwalk Resort', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'1e4b4fad-8ab7-4150-919a-0f8bd24fad90', N'Quaint Motel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'3ef23a04-884f-4e06-9fca-117f275bd56d', N'Fountain Fun', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'cc1d1c5b-9b48-4d7c-8078-119c510772ec', N'The Mutiny Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'9eed3fdb-f9c1-44f2-9a6e-1cf0594b422f', N'Coastal bay hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'a17c0b7e-81c4-4b74-8953-21cea684f77a', N'Four Seasons', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'7d35bf5b-4faa-41c6-acdf-25688d1b4fd3', N'The Lakefront', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'81c9a77b-0393-4fa0-8da2-25f2cafc7456', N'Beacon Motel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'38d83a7f-cf99-4c4f-920d-282935e2bc97', N'White Season Resort', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'49c564fe-5c51-41dd-8a69-2e976e416b59', N'Etiquette Suites', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'8cfc6b80-e13e-4161-8288-31e9afc35cc3', N'The Eternity Resort', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'0a6af0ae-3678-4fe7-96c4-3952c47263fd', N'Time Motel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'74b46c85-347e-480b-a015-3f7589df13a9', N'Holly House', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'75d2f14b-28cf-4da3-b717-433fee92ace3', N'Venture Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'799542d1-4e0c-4744-b1fd-4d5189e92e8e', N'Cape Grace', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'7e6619ef-1af0-4aea-8f5c-50231ed9fecd', N'Royal Galaxy', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'62287bf8-658f-4651-945f-55078974512f', N'The White Rock Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'b24e57b5-ca6a-4f51-abbc-564f04daf29c', N'Sunny Canopy', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'd26c444f-b17e-4801-ab73-5704fc16ac94', N'The New Yorker', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'f8d8f383-7351-4ead-a804-5995c95c3c18', N'High Desert Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'9eb26b58-ac1f-42de-9758-5e91321a8c5e', N'Comfort B&B', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'76c298fd-9639-469e-a5db-62165488cb37', N'Spring Brook', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'5a20b31a-8ea2-49a9-bf04-6270df237936', N'Sapphires Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'7a2472db-52b3-4225-831c-65898cefff02', N'The New View', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'7d1c986f-b188-419f-99e9-6d565ac1e49f', N'Sunset Lodge', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'ea52accb-9ae0-42f0-b7a0-6f8fee7f2a8b', N'Eden Roc', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'0f35b448-67d7-4866-8722-6fb8e50db299', N'The Watson Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'16d0252e-e622-4d6d-b49f-70bdbdbb8f9b', N'American Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'be297f6f-c1a9-4d01-9fb0-760193b7672e', N'Wonder Hill Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'2e55e93d-cbc1-4eb2-a606-7635daf7375a', N'Spotlight Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'98fec382-85bf-4b2d-9993-76f7d7b42cd5', N'Consulate Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'8669299b-a744-4484-9c11-77339e45cf44', N'Friendship Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'740209d0-c3e4-4506-afbf-7956721b1519', N'Towne Place Suites', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'9cec7d2c-ecc0-496d-881f-79dd856c56f1', N'The Glory Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'3a39216e-ee33-4765-a927-7cf709d701cb', N'Hotel Elite', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'bbe3af07-945b-47ad-a854-7e7b73d719fb', N'The Fresco Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'74af9a52-d754-4252-9a09-848f92aef2f7', N'University Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'99481eb4-f180-4071-a06b-85ddaa12c247', N'Tower Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'3291252c-cc5a-418c-8012-8b2555ce3747', N'Prestige proga Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'01324e2a-4b1f-47be-b21a-8c07f17a03af', N'Purple Orchid', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'857e71a4-1edd-4f46-b619-9119afff3013', N'Relax Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'1921ee30-cb7f-4c9b-b92f-929c8a357c60', N'The Orchard Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'ecf0020c-676a-49c1-81dc-a3d2684b4fda', N'Hotel Bliss', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'd1ca4e77-6875-4595-a74e-a535d2bd5ce4', N'The Lakefront', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'8cca0ab0-c34f-4292-a157-aa7cd3e0b4cb', N'The Palazzo Resort', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'9331a5d2-a7ae-4334-a421-ac2dbd4817cf', N'Lime Wood', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'b91fcb9a-00ef-4f44-8c7b-afefb182ef44', N'Parallel Shine', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'e8f89488-0556-4bc9-b611-b3d80ebd4145', N'Motel On Main', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'a8e16935-2e35-42ba-bacf-bce5caa589fa', N'Water Vibe Resorts', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'3ff588bf-85be-4863-9949-c2cdd93c0600', N'Purple Orchid', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'19fc48da-a072-44d7-9dfd-c4ff44055613', N'Lake Place Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'd6ec1b5c-da7e-4fc4-a44c-c890df78848a', N'Green Tortoise Hostel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'0527b313-22ad-43aa-bf50-ca29a96db704', N'Golden Cherry Motel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'c7717a5a-1e9b-4af3-bf0e-ca574d8594d1', N'The Glory Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'01bc0529-4615-45b8-8c81-cbfe55a3201b', N'Hotel Agoura', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'3d8b8201-c5a1-4cc8-ad7e-ce294a632351', N'Always Welcome', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'67ed7b28-553c-4f26-b773-d2a21d28d4ef', N'The Manhattan', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'005d842f-1ca3-42bd-a8ee-d39c7dd0147e', N'Dream Connect', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'd817e4b2-484f-472f-997a-d4c85e64a589', N'Emerald Bay Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'ab158065-dcf3-460a-be8f-d76a9a9d7c0b', N'The Venetian', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'216b4ce2-6a09-4374-98fa-d84934dbc7a4', N'Waypoint', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'5cbba7ad-248a-4754-b7ec-e05e63469ade', N'The Hot Springs Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'8e05f571-0ef7-4f8d-a860-e2303c3e886a', N'Sandy Bloom', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'e22f0603-ae28-48c0-8c5f-e2eea9d95617', N'The Mississippi Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'018bbd9f-1525-49fa-924c-e469d1601d26', N'Cosmopolitan Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'f7931044-28b8-4c5a-8e03-e699afa7e6ff', N'Budget Suites', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'b52f209d-1ccd-46db-97f2-ecf4b98e5c6b', N'The Peninsula', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'38883823-5762-4647-866d-efcc9654af9d', N'The New View', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'95df93b4-d2ca-4b17-8b1d-f117a822ced8', N'Crowne Plaza', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'47610866-464d-4f9b-9a8c-f3bb55b14b75', N'Element', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'91449215-bf82-4014-a509-f3db522d1be3', N'The Huntington Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'7041714f-9b7a-497e-bf1f-f6fb836ed656', N'Ramada Limited & Suites', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'21672819-46dc-4416-a3fc-f945545ed09e', N'The Breakers', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO
INSERT [dbo].[RoomTypes] ([Id], [RoomTypeName], [CreateDate], [UpdateDate]) VALUES (N'1a92ade3-f460-4391-915e-2ab799aa789e', N'Twin', CAST(N'2022-04-10T20:07:07.6066667' AS DateTime2), NULL)
INSERT [dbo].[RoomTypes] ([Id], [RoomTypeName], [CreateDate], [UpdateDate]) VALUES (N'7ed96337-d932-4479-b2b5-3329cd7d10b7', N'Single', CAST(N'2022-04-10T20:07:07.6066667' AS DateTime2), NULL)
INSERT [dbo].[RoomTypes] ([Id], [RoomTypeName], [CreateDate], [UpdateDate]) VALUES (N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', N'Queen', CAST(N'2022-04-10T20:07:07.6066667' AS DateTime2), NULL)
INSERT [dbo].[RoomTypes] ([Id], [RoomTypeName], [CreateDate], [UpdateDate]) VALUES (N'4f4a127b-89f7-4df5-9818-81c05553d774', N'King', CAST(N'2022-04-10T20:07:07.6066667' AS DateTime2), NULL)
INSERT [dbo].[RoomTypes] ([Id], [RoomTypeName], [CreateDate], [UpdateDate]) VALUES (N'ace41c27-a6d7-49a5-b590-958de2312385', N'Double', CAST(N'2022-04-10T20:07:07.6066667' AS DateTime2), NULL)
INSERT [dbo].[RoomTypes] ([Id], [RoomTypeName], [CreateDate], [UpdateDate]) VALUES (N'63c31b25-2071-40af-92cd-9c4b601ab13e', N'Single', CAST(N'2022-04-10T20:07:07.5766667' AS DateTime2), NULL)
INSERT [dbo].[RoomTypes] ([Id], [RoomTypeName], [CreateDate], [UpdateDate]) VALUES (N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', N'Triple', CAST(N'2022-04-10T20:07:07.6066667' AS DateTime2), NULL)
INSERT [dbo].[RoomTypes] ([Id], [RoomTypeName], [CreateDate], [UpdateDate]) VALUES (N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', N'Quad', CAST(N'2022-04-10T20:07:07.6066667' AS DateTime2), NULL)
GO
/****** Object:  Index [IX_HotelRooms_HotelId]    Script Date: 10.04.2022 20:28:39 ******/
CREATE NONCLUSTERED INDEX [IX_HotelRooms_HotelId] ON [dbo].[HotelRooms]
(
	[HotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HotelRooms_RoomTypeId]    Script Date: 10.04.2022 20:28:39 ******/
CREATE NONCLUSTERED INDEX [IX_HotelRooms_RoomTypeId] ON [dbo].[HotelRooms]
(
	[RoomTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reservations_HotelRoomId]    Script Date: 10.04.2022 20:28:39 ******/
CREATE NONCLUSTERED INDEX [IX_Reservations_HotelRoomId] ON [dbo].[Reservations]
(
	[HotelRoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HotelRooms]  WITH CHECK ADD  CONSTRAINT [FK_HotelRooms_Hotels_HotelId] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([Id])
GO
ALTER TABLE [dbo].[HotelRooms] CHECK CONSTRAINT [FK_HotelRooms_Hotels_HotelId]
GO
ALTER TABLE [dbo].[HotelRooms]  WITH CHECK ADD  CONSTRAINT [FK_HotelRooms_RoomTypes_RoomTypeId] FOREIGN KEY([RoomTypeId])
REFERENCES [dbo].[RoomTypes] ([Id])
GO
ALTER TABLE [dbo].[HotelRooms] CHECK CONSTRAINT [FK_HotelRooms_RoomTypes_RoomTypeId]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_HotelRooms_HotelRoomId] FOREIGN KEY([HotelRoomId])
REFERENCES [dbo].[HotelRooms] ([Id])
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_HotelRooms_HotelRoomId]
GO
USE [master]
GO
ALTER DATABASE [OdeonHotel] SET  READ_WRITE 
GO
