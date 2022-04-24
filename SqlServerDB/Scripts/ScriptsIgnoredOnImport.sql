
USE [master]
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

/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13.04.2022 12:55:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[HotelRooms]    Script Date: 13.04.2022 12:55:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Hotels]    Script Date: 13.04.2022 12:55:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Reservations]    Script Date: 13.04.2022 12:55:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[RoomTypes]    Script Date: 13.04.2022 12:55:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220410140827_FirstInitiate', N'6.0.3')
GO

INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220411174926_CurrencyUnit_HotelRoom', N'6.0.3')
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'88f3e00b-d208-4c42-8f7d-00289f8de89a', CAST(181.54 AS Decimal(18, 2)), 28, 2, N'62287bf8-658f-4651-945f-55078974512f', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b3e52d3d-59f9-4e78-aad9-004bda911fb8', CAST(698.73 AS Decimal(18, 2)), 28, 3, N'bbe3af07-945b-47ad-a854-7e7b73d719fb', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), CAST(N'2022-04-13T12:20:13.1629341' AS DateTime2))
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'11be5f28-9704-4b89-8282-0121cf0f5980', CAST(522.49 AS Decimal(18, 2)), 26, 11, N'8cfc6b80-e13e-4161-8288-31e9afc35cc3', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'98216693-5101-4a19-9fde-0121ea3aa0c5', CAST(2180.11 AS Decimal(18, 2)), 15, 7, N'005d842f-1ca3-42bd-a8ee-d39c7dd0147e', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3cf6a9fe-ca43-4a14-a630-01b877235ad7', CAST(81.54 AS Decimal(18, 2)), 63, 23, N'8e05f571-0ef7-4f8d-a860-e2303c3e886a', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f6dc39f9-ff18-4c4e-9157-022df8bdb6c2', CAST(2149.19 AS Decimal(18, 2)), 18, 18, N'81c9a77b-0393-4fa0-8da2-25f2cafc7456', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7edf02e1-b2d3-4157-a0af-028c1d01a192', CAST(843.24 AS Decimal(18, 2)), 11, 8, N'b52f209d-1ccd-46db-97f2-ecf4b98e5c6b', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c4feb4aa-fc58-4320-b24b-02b0028abcdd', CAST(2465.48 AS Decimal(18, 2)), 40, 20, N'7d35bf5b-4faa-41c6-acdf-25688d1b4fd3', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7f87e170-a078-46c8-ad4c-02eae3344197', CAST(2531.07 AS Decimal(18, 2)), 43, 15, N'3d8b8201-c5a1-4cc8-ad7e-ce294a632351', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), CAST(N'2022-04-13T12:46:37.6252850' AS DateTime2))
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'4be138d1-f594-417b-8f15-03a582ecad08', CAST(3253.49 AS Decimal(18, 2)), 29, 3, N'216b4ce2-6a09-4374-98fa-d84934dbc7a4', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd2088952-336c-4792-9a6e-03a713749bca', CAST(943.99 AS Decimal(18, 2)), 69, 25, N'ab158065-dcf3-460a-be8f-d76a9a9d7c0b', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'cae94643-0428-44cd-90d1-049640639ab8', CAST(27.25 AS Decimal(18, 2)), 67, 21, N'b52f209d-1ccd-46db-97f2-ecf4b98e5c6b', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'68efc85b-12a3-41af-8c17-0511df67fdf5', CAST(952.05 AS Decimal(18, 2)), 67, 35, N'f7931044-28b8-4c5a-8e03-e699afa7e6ff', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'9c05e955-3c1e-4bdd-8c5a-0533c993e1cd', CAST(1735.70 AS Decimal(18, 2)), 25, 16, N'be297f6f-c1a9-4d01-9fb0-760193b7672e', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ccc7a45b-17a8-4337-9e8c-053cc65f6926', CAST(1369.60 AS Decimal(18, 2)), 25, 20, N'95df93b4-d2ca-4b17-8b1d-f117a822ced8', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'019153b6-499b-4e38-b917-0555ad9dd138', CAST(843.96 AS Decimal(18, 2)), 32, 22, N'b91fcb9a-00ef-4f44-8c7b-afefb182ef44', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'23f005aa-3910-481c-8707-05e21c8b42fe', CAST(1584.97 AS Decimal(18, 2)), 57, 9, N'ab158065-dcf3-460a-be8f-d76a9a9d7c0b', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'46507476-0c74-4073-a512-064e0630ab9a', CAST(1931.87 AS Decimal(18, 2)), 32, 18, N'74af9a52-d754-4252-9a09-848f92aef2f7', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'96a87ef4-b0d2-45b9-a1a2-07d5267f92ea', CAST(385.35 AS Decimal(18, 2)), 43, 24, N'9eed3fdb-f9c1-44f2-9a6e-1cf0594b422f', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'0c367a0e-cab9-4238-a49c-0873e1e46556', CAST(456.95 AS Decimal(18, 2)), 58, 25, N'76c298fd-9639-469e-a5db-62165488cb37', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a23e6bdc-18b2-41c3-bfbc-087641fd95dc', CAST(767.03 AS Decimal(18, 2)), 45, 6, N'e22f0603-ae28-48c0-8c5f-e2eea9d95617', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ea0fdc3a-797a-4706-b590-0886dae9674e', CAST(42.65 AS Decimal(18, 2)), 66, 21, N'9eb26b58-ac1f-42de-9758-5e91321a8c5e', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'0ad12cd4-5e4f-4dc4-9e71-09fee2b91053', CAST(1371.13 AS Decimal(18, 2)), 29, 16, N'd6ec1b5c-da7e-4fc4-a44c-c890df78848a', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'dd96c713-0540-4d8b-aac0-0a45a66a7d26', CAST(443.81 AS Decimal(18, 2)), 49, 13, N'98fec382-85bf-4b2d-9993-76f7d7b42cd5', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3dc2618d-5a4d-448b-904c-0ae42ada76a6', CAST(653.73 AS Decimal(18, 2)), 53, 27, N'0f35b448-67d7-4866-8722-6fb8e50db299', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'fbf654f6-ccf8-4e06-8f1a-0b164bf684be', CAST(229.76 AS Decimal(18, 2)), 38, 16, N'3ff588bf-85be-4863-9949-c2cdd93c0600', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7ad32f5b-d9e6-4092-b156-0b4eb50accb9', CAST(1503.61 AS Decimal(18, 2)), 17, 8, N'018bbd9f-1525-49fa-924c-e469d1601d26', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b8f24f7c-c823-42a7-8c5f-0ba038af7f17', CAST(2517.12 AS Decimal(18, 2)), 17, 13, N'91449215-bf82-4014-a509-f3db522d1be3', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd51b2257-41a7-48a5-82db-0c6f8c9cb3d8', CAST(64.47 AS Decimal(18, 2)), 59, 37, N'f8d8f383-7351-4ead-a804-5995c95c3c18', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'4132c168-44b5-46d3-b336-0d76384a5146', CAST(40.10 AS Decimal(18, 2)), 63, 29, N'9cec7d2c-ecc0-496d-881f-79dd856c56f1', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'2fc31480-bd23-46a4-8801-0dea3e6f7bc5', CAST(1419.49 AS Decimal(18, 2)), 20, 19, N'3130570c-98fe-4b85-98ea-01ca10368047', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'843e8b9c-da3e-4608-be68-0f6172c58179', CAST(67.52 AS Decimal(18, 2)), 74, 28, N'7e6619ef-1af0-4aea-8f5c-50231ed9fecd', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f00792fb-f70f-407b-b777-102a7fe39817', CAST(697.36 AS Decimal(18, 2)), 25, 10, N'799542d1-4e0c-4744-b1fd-4d5189e92e8e', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'037c7b8f-2aa9-4cfc-a196-10560d910bca', CAST(2796.81 AS Decimal(18, 2)), 36, 14, N'd26c444f-b17e-4801-ab73-5704fc16ac94', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3e5a4ab2-8871-4e38-9107-106fb2313d1d', CAST(1468.07 AS Decimal(18, 2)), 56, 16, N'1921ee30-cb7f-4c9b-b92f-929c8a357c60', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b41fffbd-d739-4169-bba2-10c7a6aaede6', CAST(88.60 AS Decimal(18, 2)), 75, 20, N'75d2f14b-28cf-4da3-b717-433fee92ace3', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'1ace4565-14e9-406b-a58f-110331d3e9d7', CAST(66.11 AS Decimal(18, 2)), 76, 19, N'b24e57b5-ca6a-4f51-abbc-564f04daf29c', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'78347ca2-12e7-4d20-baeb-124da429e250', CAST(986.19 AS Decimal(18, 2)), 52, 27, N'738ff466-d4b6-4663-9a2d-0149421d1a71', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'faaf8372-88a9-41aa-ad46-1251f8306374', CAST(71.79 AS Decimal(18, 2)), 76, 20, N'38d83a7f-cf99-4c4f-920d-282935e2bc97', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'129a121e-467a-466d-b442-1258239d2a82', CAST(175.52 AS Decimal(18, 2)), 31, 19, N'8e05f571-0ef7-4f8d-a860-e2303c3e886a', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f58d584e-3ad2-4dc6-8b5d-13196c99e6b6', CAST(753.87 AS Decimal(18, 2)), 36, 26, N'16d0252e-e622-4d6d-b49f-70bdbdbb8f9b', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'43106a66-e226-43fa-b8a4-14ab984de82a', CAST(947.80 AS Decimal(18, 2)), 39, 8, N'16d0252e-e622-4d6d-b49f-70bdbdbb8f9b', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b4ffb03c-0420-4018-a39c-15622d79f8ac', CAST(870.86 AS Decimal(18, 2)), 29, 16, N'ecf0020c-676a-49c1-81dc-a3d2684b4fda', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd5072628-95db-45e4-b58b-15854caf8bc7', CAST(2683.44 AS Decimal(18, 2)), 27, 2, N'd26c444f-b17e-4801-ab73-5704fc16ac94', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'0edbd1cc-01df-40e9-b2ec-1589f9f0357a', CAST(2173.86 AS Decimal(18, 2)), 52, 20, N'98fec382-85bf-4b2d-9993-76f7d7b42cd5', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7fe6ef29-cd8c-466b-acff-1622dbb5d7f6', CAST(2420.32 AS Decimal(18, 2)), 29, 2, N'38d83a7f-cf99-4c4f-920d-282935e2bc97', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c2398dab-316c-4031-80bc-164c374e3ea8', CAST(3766.66 AS Decimal(18, 2)), 44, 21, N'ecf0020c-676a-49c1-81dc-a3d2684b4fda', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'afe15823-e7ba-4f1e-bdcc-16f105c7648c', CAST(1802.87 AS Decimal(18, 2)), 18, 16, N'0a6af0ae-3678-4fe7-96c4-3952c47263fd', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd05d632c-3fbd-4609-acd0-176d8576712d', CAST(49.29 AS Decimal(18, 2)), 76, 13, N'74b46c85-347e-480b-a015-3f7589df13a9', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a91666d8-de74-47d0-97e8-17ff7c890832', CAST(2891.40 AS Decimal(18, 2)), 23, 2, N'67ed7b28-553c-4f26-b773-d2a21d28d4ef', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'48c52fa3-665f-4f8b-b932-192c5ca51f82', CAST(74.51 AS Decimal(18, 2)), 73, 25, N'ecf0020c-676a-49c1-81dc-a3d2684b4fda', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a9c0ae84-54dd-4bfa-9d01-1a95f565c4b4', CAST(1825.63 AS Decimal(18, 2)), 35, 15, N'738ff466-d4b6-4663-9a2d-0149421d1a71', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'362946de-d108-4bd5-a2f0-1b662fa3fd36', CAST(860.43 AS Decimal(18, 2)), 58, 18, N'a8e16935-2e35-42ba-bacf-bce5caa589fa', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'6a2e7d39-c073-4bee-bcb2-1b70f432b4a4', CAST(64.30 AS Decimal(18, 2)), 75, 16, N'1e4b4fad-8ab7-4150-919a-0f8bd24fad90', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7d6850ee-5f75-43c4-9adf-1b832e66f5dd', CAST(60.51 AS Decimal(18, 2)), 68, 13, N'47610866-464d-4f9b-9a8c-f3bb55b14b75', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'cb4e3996-ebe4-4ec1-9550-1b8591dae50f', CAST(63.25 AS Decimal(18, 2)), 72, 29, N'0f35b448-67d7-4866-8722-6fb8e50db299', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'90128652-c618-4077-8787-1ba4446f7f90', CAST(760.39 AS Decimal(18, 2)), 35, 10, N'7041714f-9b7a-497e-bf1f-f6fb836ed656', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'0ea2d800-7cea-42f2-910a-1baa80fb2171', CAST(3969.24 AS Decimal(18, 2)), 46, 11, N'e8f89488-0556-4bc9-b611-b3d80ebd4145', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'63d74ac6-95b5-4965-8178-1c083ae3ca63', CAST(1153.00 AS Decimal(18, 2)), 31, 25, N'216b4ce2-6a09-4374-98fa-d84934dbc7a4', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f8e43882-0b13-47ee-8392-1c500372e36d', CAST(1929.17 AS Decimal(18, 2)), 24, 4, N'21672819-46dc-4416-a3fc-f945545ed09e', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'696ebceb-cb07-44f1-9dfb-1c5413c9552a', CAST(139.60 AS Decimal(18, 2)), 22, 20, N'7041714f-9b7a-497e-bf1f-f6fb836ed656', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'168cfe1c-4281-4680-825f-1ce701d3f6c7', CAST(308.05 AS Decimal(18, 2)), 38, 18, N'c7717a5a-1e9b-4af3-bf0e-ca574d8594d1', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7c8bf3b2-5563-4f46-a58b-1d05cf00ceeb', CAST(2751.16 AS Decimal(18, 2)), 30, 21, N'f7931044-28b8-4c5a-8e03-e699afa7e6ff', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'95c3cfaa-dea5-4c1b-a0e8-1d2e7ce2dbc2', CAST(948.58 AS Decimal(18, 2)), 57, 23, N'8669299b-a744-4484-9c11-77339e45cf44', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'6cd0b49b-95b9-4383-be3c-1daa7bf1f00d', CAST(1784.48 AS Decimal(18, 2)), 40, 14, N'5a20b31a-8ea2-49a9-bf04-6270df237936', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c0a5665b-8408-47f0-8cc3-1de04c4b1969', CAST(2234.12 AS Decimal(18, 2)), 26, 19, N'9eed3fdb-f9c1-44f2-9a6e-1cf0594b422f', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'483844ee-ca95-48a9-9c52-1df305c3b06e', CAST(2823.66 AS Decimal(18, 2)), 15, 9, N'b91fcb9a-00ef-4f44-8c7b-afefb182ef44', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'19b5e20b-2496-41f8-ab09-1e3f80ddabf0', CAST(906.61 AS Decimal(18, 2)), 57, 23, N'49c564fe-5c51-41dd-8a69-2e976e416b59', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'4222e694-e4c6-4610-962a-1f3a237f7997', CAST(4400.57 AS Decimal(18, 2)), 21, 19, N'857e71a4-1edd-4f46-b619-9119afff3013', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'dad3e633-dc63-4bee-9e28-200653fafce1', CAST(3461.24 AS Decimal(18, 2)), 16, 12, N'799542d1-4e0c-4744-b1fd-4d5189e92e8e', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b406796c-ced4-46f4-8711-202db6338fee', CAST(391.63 AS Decimal(18, 2)), 44, 10, N'01324e2a-4b1f-47be-b21a-8c07f17a03af', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'572dd917-58b0-4f48-8d88-20aa9bcaffee', CAST(163.80 AS Decimal(18, 2)), 67, 32, N'c7717a5a-1e9b-4af3-bf0e-ca574d8594d1', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'96dfdaf0-7f27-4316-ad4a-221d4ff33a7d', CAST(925.23 AS Decimal(18, 2)), 61, 22, N'16d0252e-e622-4d6d-b49f-70bdbdbb8f9b', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b3e33b42-c587-40ee-bd06-227d4cb251bf', CAST(1919.39 AS Decimal(18, 2)), 28, 4, N'7e6619ef-1af0-4aea-8f5c-50231ed9fecd', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f456d031-4ec2-4dee-af72-22c119b01202', CAST(2579.27 AS Decimal(18, 2)), 15, 11, N'ab158065-dcf3-460a-be8f-d76a9a9d7c0b', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'8202417f-6b2c-40b5-8c30-22d0ddc17ce2', CAST(1755.75 AS Decimal(18, 2)), 31, 20, N'857e71a4-1edd-4f46-b619-9119afff3013', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'4028c17c-9078-4cae-b167-2343eb714d30', CAST(350.94 AS Decimal(18, 2)), 11, 7, N'9eb26b58-ac1f-42de-9758-5e91321a8c5e', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'30043d26-54e1-4994-88ba-242240b00379', CAST(2508.96 AS Decimal(18, 2)), 29, 20, N'19fc48da-a072-44d7-9dfd-c4ff44055613', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f179298a-7aff-4bf2-8989-2558ca9ff7a8', CAST(782.48 AS Decimal(18, 2)), 49, 17, N'ea52accb-9ae0-42f0-b7a0-6f8fee7f2a8b', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'4521d525-2840-4660-a65a-2610a9ee37a7', CAST(684.53 AS Decimal(18, 2)), 24, 7, N'9cec7d2c-ecc0-496d-881f-79dd856c56f1', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'08a0aaee-227b-4d68-988a-26112bc83863', CAST(850.41 AS Decimal(18, 2)), 12, 9, N'0527b313-22ad-43aa-bf50-ca29a96db704', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd786f8ff-4047-4ab2-80e7-266bf04b232c', CAST(826.36 AS Decimal(18, 2)), 46, 24, N'81c9a77b-0393-4fa0-8da2-25f2cafc7456', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'2674b492-5920-495a-be73-267b0950cad1', CAST(2022.88 AS Decimal(18, 2)), 12, 10, N'8669299b-a744-4484-9c11-77339e45cf44', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'bc84f1e9-c0a1-4a79-b92e-26982061842e', CAST(274.67 AS Decimal(18, 2)), 31, 18, N'd26c444f-b17e-4801-ab73-5704fc16ac94', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a41110ae-400f-4f26-99a8-27455da934ff', CAST(1972.47 AS Decimal(18, 2)), 18, 8, N'9cec7d2c-ecc0-496d-881f-79dd856c56f1', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'5f3199b9-e6a1-4784-96bc-27d713c0b437', CAST(15.13 AS Decimal(18, 2)), 66, 22, N'9cec7d2c-ecc0-496d-881f-79dd856c56f1', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'9e8ccd81-5114-4227-9e35-29b16ae49316', CAST(3567.37 AS Decimal(18, 2)), 42, 8, N'7d1c986f-b188-419f-99e9-6d565ac1e49f', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'700f64c4-12fe-4df9-a660-29cdbc8858ea', CAST(1365.66 AS Decimal(18, 2)), 33, 26, N'018bbd9f-1525-49fa-924c-e469d1601d26', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'555f4d8c-a368-499b-9af6-2aa3319a3281', CAST(2873.35 AS Decimal(18, 2)), 29, 2, N'ea52accb-9ae0-42f0-b7a0-6f8fee7f2a8b', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'168164a2-6f7a-423a-bb70-2c4e32eaada3', CAST(1329.48 AS Decimal(18, 2)), 31, 11, N'8cca0ab0-c34f-4292-a157-aa7cd3e0b4cb', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b7a808bd-ab74-4c38-86c8-2d470b28bc14', CAST(368.28 AS Decimal(18, 2)), 12, 5, N'757dddc4-adb7-4b11-97fe-008f681ddd6b', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e7bd759c-e513-491f-8099-2d963cf4a1b5', CAST(1304.78 AS Decimal(18, 2)), 29, 19, N'76c298fd-9639-469e-a5db-62165488cb37', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b905f53a-4ac5-48da-81ae-2e135235c5ca', CAST(768.34 AS Decimal(18, 2)), 45, 16, N'1921ee30-cb7f-4c9b-b92f-929c8a357c60', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd12fcbd0-e785-4582-befb-2e3ca5f956c3', CAST(95.72 AS Decimal(18, 2)), 49, 3, N'018bbd9f-1525-49fa-924c-e469d1601d26', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'cd690c65-e69c-4b3a-a5c2-2e7533b993fd', CAST(5.04 AS Decimal(18, 2)), 68, 21, N'1921ee30-cb7f-4c9b-b92f-929c8a357c60', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'79ae7327-0866-4cbd-8467-2e7b5412007c', CAST(1430.85 AS Decimal(18, 2)), 13, 8, N'38d83a7f-cf99-4c4f-920d-282935e2bc97', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'5ce00823-f647-407a-b44d-2eaf94ee41aa', CAST(94.68 AS Decimal(18, 2)), 79, 24, N'7041714f-9b7a-497e-bf1f-f6fb836ed656', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'50e5428f-a996-435f-ab67-2f95c4ea84bc', CAST(1038.84 AS Decimal(18, 2)), 35, 9, N'c7717a5a-1e9b-4af3-bf0e-ca574d8594d1', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'613abdc3-6b52-4205-98e1-2fb23e5c4382', CAST(971.83 AS Decimal(18, 2)), 59, 20, N'e8f89488-0556-4bc9-b611-b3d80ebd4145', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'30708068-7694-4cba-85bc-2fcff9146098', CAST(2709.98 AS Decimal(18, 2)), 22, 9, N'9eed3fdb-f9c1-44f2-9a6e-1cf0594b422f', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a659205c-0ac1-487c-91d7-2ffa5b36483d', CAST(2179.47 AS Decimal(18, 2)), 55, 9, N'd26c444f-b17e-4801-ab73-5704fc16ac94', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'24dd5df1-00a9-4b15-9815-302b338d5c7a', CAST(552.08 AS Decimal(18, 2)), 52, 23, N'd26c444f-b17e-4801-ab73-5704fc16ac94', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'fef8dccd-5951-4ac5-a71e-303c5de8b1db', CAST(1345.32 AS Decimal(18, 2)), 29, 17, N'3ef23a04-884f-4e06-9fca-117f275bd56d', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f7984950-94d8-4da6-839c-30a897be7b36', CAST(1956.42 AS Decimal(18, 2)), 35, 17, N'd1ca4e77-6875-4595-a74e-a535d2bd5ce4', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'1484d470-9bff-4056-9e05-312ce66777df', CAST(355.08 AS Decimal(18, 2)), 46, 13, N'3ef23a04-884f-4e06-9fca-117f275bd56d', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'6df691a2-02ea-4720-8d4f-318a0bfaa919', CAST(589.67 AS Decimal(18, 2)), 28, 13, N'01bc0529-4615-45b8-8c81-cbfe55a3201b', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'6d303109-ae15-4ac3-a5ff-31dbdf71bbe0', CAST(999.83 AS Decimal(18, 2)), 55, 33, N'7d35bf5b-4faa-41c6-acdf-25688d1b4fd3', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ff129be5-3b1b-4a70-bef1-32a50c7759b6', CAST(2205.16 AS Decimal(18, 2)), 26, 9, N'75d2f14b-28cf-4da3-b717-433fee92ace3', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f353cc78-8890-421b-ab11-32d8b9ac7bc5', CAST(3859.25 AS Decimal(18, 2)), 30, 9, N'3130570c-98fe-4b85-98ea-01ca10368047', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'69c7f06f-9ad9-4ee3-8e1a-330e5ce0b733', CAST(540.12 AS Decimal(18, 2)), 22, 19, N'49c564fe-5c51-41dd-8a69-2e976e416b59', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'74b64733-536a-4b07-80b5-33ef07a6e7ef', CAST(1267.44 AS Decimal(18, 2)), 30, 11, N'19fc48da-a072-44d7-9dfd-c4ff44055613', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b246882a-4a52-44bc-bc09-3439adc33df3', CAST(1781.65 AS Decimal(18, 2)), 19, 6, N'47610866-464d-4f9b-9a8c-f3bb55b14b75', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'4518f961-5aab-4a62-9ff5-349d65ff06a5', CAST(2857.90 AS Decimal(18, 2)), 25, 7, N'3a39216e-ee33-4765-a927-7cf709d701cb', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'325ba050-2bb8-445c-a1d1-34cb21357ef7', CAST(560.97 AS Decimal(18, 2)), 45, 16, N'47610866-464d-4f9b-9a8c-f3bb55b14b75', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7319d1a8-2611-4390-93da-354b003e6144', CAST(2395.69 AS Decimal(18, 2)), 40, 19, N'005d842f-1ca3-42bd-a8ee-d39c7dd0147e', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a793233e-2b2b-431e-96ab-3671381df0c7', CAST(1342.05 AS Decimal(18, 2)), 36, 21, N'21672819-46dc-4416-a3fc-f945545ed09e', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd610cbea-57c8-4f6a-aacc-3676d4dddfa2', CAST(298.78 AS Decimal(18, 2)), 44, 4, N'8e05f571-0ef7-4f8d-a860-e2303c3e886a', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e6d091bd-5d13-4d29-b199-36886ba18e56', CAST(1259.29 AS Decimal(18, 2)), 30, 12, N'49c564fe-5c51-41dd-8a69-2e976e416b59', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e725bff6-6350-4885-b5f8-39678b00bacf', CAST(349.60 AS Decimal(18, 2)), 67, 28, N'857e71a4-1edd-4f46-b619-9119afff3013', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'de6c7a1c-4d20-483f-bc9e-396baff8e93e', CAST(691.32 AS Decimal(18, 2)), 56, 21, N'74af9a52-d754-4252-9a09-848f92aef2f7', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd47cee7f-e521-46ce-b3bf-39f5543b8772', CAST(2358.52 AS Decimal(18, 2)), 29, 9, N'b91fcb9a-00ef-4f44-8c7b-afefb182ef44', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e5999ca3-b9f8-47d6-881a-3a9aa46bf019', CAST(1475.28 AS Decimal(18, 2)), 25, 21, N'01bc0529-4615-45b8-8c81-cbfe55a3201b', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e530a645-993c-484d-9bca-3afb7cb856d1', CAST(5.33 AS Decimal(18, 2)), 74, 21, N'3ff588bf-85be-4863-9949-c2cdd93c0600', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'019c56c5-e1aa-421a-9455-3be479e99d40', CAST(1703.65 AS Decimal(18, 2)), 39, 20, N'62287bf8-658f-4651-945f-55078974512f', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3ca49868-0563-4a3a-84dd-3c4821b41d4d', CAST(97.39 AS Decimal(18, 2)), 37, 11, N'ab158065-dcf3-460a-be8f-d76a9a9d7c0b', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'2912af36-55b1-453b-871b-3c497b3d2ad9', CAST(2980.80 AS Decimal(18, 2)), 22, 20, N'e22f0603-ae28-48c0-8c5f-e2eea9d95617', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'5a29b05f-075c-4186-a6a3-3c9bd7caae78', CAST(1061.13 AS Decimal(18, 2)), 52, 17, N'74af9a52-d754-4252-9a09-848f92aef2f7', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'0408ae8d-e949-4f9f-9f25-3d573a03b8a3', CAST(381.09 AS Decimal(18, 2)), 30, 3, N'38d83a7f-cf99-4c4f-920d-282935e2bc97', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e80f590e-e181-4cfa-9550-3da2d7df45a9', CAST(1569.72 AS Decimal(18, 2)), 12, 11, N'49c564fe-5c51-41dd-8a69-2e976e416b59', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'391e29a0-5c87-4aec-a3f9-3ed51ef943dd', CAST(215.76 AS Decimal(18, 2)), 34, 14, N'7e6619ef-1af0-4aea-8f5c-50231ed9fecd', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'9f33e4e9-ae96-4400-8cf6-3ed88383c5ea', CAST(3334.29 AS Decimal(18, 2)), 55, 6, N'8cfc6b80-e13e-4161-8288-31e9afc35cc3', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7f5da902-b41a-4075-948d-3ef98a583024', CAST(1334.59 AS Decimal(18, 2)), 40, 17, N'be297f6f-c1a9-4d01-9fb0-760193b7672e', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'4b046911-f78a-4a6c-8b99-3f7163a9c0ab', CAST(248.80 AS Decimal(18, 2)), 51, 35, N'62287bf8-658f-4651-945f-55078974512f', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'5ad2e23a-ff99-4e14-8a08-3fb15279d447', CAST(29.73 AS Decimal(18, 2)), 70, 28, N'3291252c-cc5a-418c-8012-8b2555ce3747', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'1a2c860e-e0cd-4a5d-b5c8-41096e604fd7', CAST(1637.74 AS Decimal(18, 2)), 24, 2, N'8cfc6b80-e13e-4161-8288-31e9afc35cc3', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'47f90bcf-5636-40e8-96e7-41595958b931', CAST(2685.20 AS Decimal(18, 2)), 18, 16, N'1e4b4fad-8ab7-4150-919a-0f8bd24fad90', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3593ce38-5e34-455e-85f5-4271b6bab74f', CAST(1268.04 AS Decimal(18, 2)), 26, 16, N'738ff466-d4b6-4663-9a2d-0149421d1a71', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'6a1988e9-fc04-4b92-a3c3-42c83713489f', CAST(1109.73 AS Decimal(18, 2)), 21, 2, N'757dddc4-adb7-4b11-97fe-008f681ddd6b', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b3468fa7-a7d9-49f3-92a6-42e404429fa1', CAST(37.79 AS Decimal(18, 2)), 78, 19, N'21672819-46dc-4416-a3fc-f945545ed09e', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b6a6e969-fa85-456a-b52e-43333b9d21a8', CAST(12.99 AS Decimal(18, 2)), 64, 15, N'38883823-5762-4647-866d-efcc9654af9d', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c6547fe4-8439-498a-b658-43810a1e99a1', CAST(1455.03 AS Decimal(18, 2)), 46, 11, N'cc1d1c5b-9b48-4d7c-8078-119c510772ec', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'4fb9b95c-83fe-4f0a-8614-4457f13724de', CAST(1855.36 AS Decimal(18, 2)), 34, 20, N'47610866-464d-4f9b-9a8c-f3bb55b14b75', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3a75968a-3765-4bce-ade2-4491a2296b7d', CAST(1220.85 AS Decimal(18, 2)), 35, 16, N'38d83a7f-cf99-4c4f-920d-282935e2bc97', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3df5c081-afee-4552-8b8d-44bec691184b', CAST(987.48 AS Decimal(18, 2)), 34, 19, N'7d35bf5b-4faa-41c6-acdf-25688d1b4fd3', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'fc9d75a5-316f-4d77-8ba8-44f3ed1d775c', CAST(2238.61 AS Decimal(18, 2)), 18, 12, N'ecf0020c-676a-49c1-81dc-a3d2684b4fda', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'838fa352-b1b6-4fa5-a210-45668df3e7e7', CAST(791.96 AS Decimal(18, 2)), 67, 23, N'b52f209d-1ccd-46db-97f2-ecf4b98e5c6b', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'9f0748e5-ad35-4cea-bfc9-457fa356f22e', CAST(492.48 AS Decimal(18, 2)), 29, 14, N'e22f0603-ae28-48c0-8c5f-e2eea9d95617', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'bbc33042-41a5-44e9-a55e-4610d6f2a1d7', CAST(1856.17 AS Decimal(18, 2)), 26, 3, N'67ed7b28-553c-4f26-b773-d2a21d28d4ef', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'eaa17c6d-7af0-4ef6-8197-4610d9d150f8', CAST(4069.71 AS Decimal(18, 2)), 41, 12, N'2e55e93d-cbc1-4eb2-a606-7635daf7375a', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd4b07e2c-cb5f-4e36-9671-4689ffdc55a3', CAST(560.82 AS Decimal(18, 2)), 21, 6, N'857e71a4-1edd-4f46-b619-9119afff3013', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'5703b43c-6494-459b-bbaf-46be1cb297fe', CAST(2074.72 AS Decimal(18, 2)), 24, 19, N'0f35b448-67d7-4866-8722-6fb8e50db299', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b8653e20-ec34-41f9-bd28-472260f50cef', CAST(77.09 AS Decimal(18, 2)), 62, 31, N'95df93b4-d2ca-4b17-8b1d-f117a822ced8', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'8ba1e1f2-4724-4b5d-8430-473cf4e9cdbc', CAST(1938.75 AS Decimal(18, 2)), 43, 14, N'd6ec1b5c-da7e-4fc4-a44c-c890df78848a', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b9325c06-abc4-4c6e-a939-47d2d97960bb', CAST(466.45 AS Decimal(18, 2)), 36, 22, N'a8e16935-2e35-42ba-bacf-bce5caa589fa', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e6accbcc-c3d0-494b-9983-47dded642388', CAST(1458.36 AS Decimal(18, 2)), 35, 13, N'757dddc4-adb7-4b11-97fe-008f681ddd6b', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'2058b16f-2011-4c24-bf06-47fdc7216857', CAST(21.01 AS Decimal(18, 2)), 60, 21, N'd26c444f-b17e-4801-ab73-5704fc16ac94', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'63bd7ef6-dea4-4e48-8c70-480706cc14dc', CAST(1930.93 AS Decimal(18, 2)), 45, 18, N'3a39216e-ee33-4765-a927-7cf709d701cb', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'5401c930-5984-48f4-94cf-48bf5a07cabc', CAST(1958.77 AS Decimal(18, 2)), 31, 26, N'3130570c-98fe-4b85-98ea-01ca10368047', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'723480a4-4b44-40b3-988d-496048fe183d', CAST(1962.49 AS Decimal(18, 2)), 18, 12, N'1e4b4fad-8ab7-4150-919a-0f8bd24fad90', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'59498ec0-1847-4b04-9a29-49e65527ca61', CAST(245.35 AS Decimal(18, 2)), 20, 17, N'9331a5d2-a7ae-4334-a421-ac2dbd4817cf', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd1487d04-ed87-406a-9d5e-49eab08cee33', CAST(33.57 AS Decimal(18, 2)), 73, 24, N'7d35bf5b-4faa-41c6-acdf-25688d1b4fd3', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'11609432-9750-49cb-bcff-4a368cdd5c2a', CAST(1390.93 AS Decimal(18, 2)), 15, 8, N'5a20b31a-8ea2-49a9-bf04-6270df237936', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3b049a4f-2843-4983-acc6-4acee3910c31', CAST(1817.97 AS Decimal(18, 2)), 26, 14, N'7e6619ef-1af0-4aea-8f5c-50231ed9fecd', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'57e37978-25bb-442d-9ffd-4b1fbef9e76c', CAST(97.61 AS Decimal(18, 2)), 64, 28, N'f7931044-28b8-4c5a-8e03-e699afa7e6ff', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'68c9457e-de5a-4d58-b49f-4b24486feeb5', CAST(2276.56 AS Decimal(18, 2)), 33, 20, N'3130570c-98fe-4b85-98ea-01ca10368047', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'eee2bc48-82e4-4c99-b3d8-4b482a2cb579', CAST(4015.04 AS Decimal(18, 2)), 38, 4, N'7041714f-9b7a-497e-bf1f-f6fb836ed656', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'1c697933-6f54-463c-87df-4c2bada23536', CAST(2972.58 AS Decimal(18, 2)), 29, 2, N'98fec382-85bf-4b2d-9993-76f7d7b42cd5', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'653dc022-65c6-407f-9458-4c93953c1167', CAST(1867.02 AS Decimal(18, 2)), 25, 8, N'38d83a7f-cf99-4c4f-920d-282935e2bc97', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'1fced114-d2d2-432c-a7b6-4ccc9f203541', CAST(12.11 AS Decimal(18, 2)), 75, 22, N'3d8b8201-c5a1-4cc8-ad7e-ce294a632351', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ea7096b2-4205-428f-8eea-4ce076812796', CAST(2653.13 AS Decimal(18, 2)), 21, 9, N'005d842f-1ca3-42bd-a8ee-d39c7dd0147e', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'51c9a28f-f4c9-4a1a-9161-4d534b7feb6e', CAST(27.72 AS Decimal(18, 2)), 64, 36, N'75d2f14b-28cf-4da3-b717-433fee92ace3', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd05f7d87-0e60-4a72-a609-4d77f1abd4fd', CAST(1082.44 AS Decimal(18, 2)), 39, 28, N'b52f209d-1ccd-46db-97f2-ecf4b98e5c6b', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b2e07894-f87f-48be-a491-4dc4fd47b372', CAST(1511.60 AS Decimal(18, 2)), 30, 5, N'a17c0b7e-81c4-4b74-8953-21cea684f77a', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'5ab4b911-bc6b-4efd-b754-4df4394d864e', CAST(947.83 AS Decimal(18, 2)), 27, 3, N'81c9a77b-0393-4fa0-8da2-25f2cafc7456', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'abf6e2af-3425-4b17-87d9-4faae2674131', CAST(2407.23 AS Decimal(18, 2)), 44, 18, N'bbe3af07-945b-47ad-a854-7e7b73d719fb', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'318e225a-6076-4557-a83b-4fe9e2289089', CAST(774.70 AS Decimal(18, 2)), 24, 19, N'99481eb4-f180-4071-a06b-85ddaa12c247', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c419a5cd-d08f-42b7-bb01-4ff426cb97e7', CAST(1262.17 AS Decimal(18, 2)), 39, 14, N'74b46c85-347e-480b-a015-3f7589df13a9', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'87776a38-82bf-41a1-b8ff-503cd16b4f91', CAST(83.33 AS Decimal(18, 2)), 74, 21, N'62287bf8-658f-4651-945f-55078974512f', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'04f523ef-cacb-4304-a130-50a1720892fc', CAST(2740.13 AS Decimal(18, 2)), 14, 5, N'740209d0-c3e4-4506-afbf-7956721b1519', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'256865f5-f6e8-474c-b51f-51012790e87c', CAST(4285.91 AS Decimal(18, 2)), 34, 12, N'e8f89488-0556-4bc9-b611-b3d80ebd4145', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f22b0b9a-2d29-40de-9a3a-522da2fdc9e9', CAST(2895.51 AS Decimal(18, 2)), 16, 15, N'75d2f14b-28cf-4da3-b717-433fee92ace3', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'47d3114b-7516-43e8-a608-523056718fad', CAST(597.70 AS Decimal(18, 2)), 22, 4, N'018bbd9f-1525-49fa-924c-e469d1601d26', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'65111d39-82da-4886-99b8-527fbbcc58f2', CAST(849.77 AS Decimal(18, 2)), 64, 34, N'ea52accb-9ae0-42f0-b7a0-6f8fee7f2a8b', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'69df5a77-12bd-43b5-9d21-534720147664', CAST(201.15 AS Decimal(18, 2)), 52, 31, N'21672819-46dc-4416-a3fc-f945545ed09e', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd20b7e05-60b8-4734-ae22-53a018fe6a30', CAST(90.82 AS Decimal(18, 2)), 61, 34, N'99481eb4-f180-4071-a06b-85ddaa12c247', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'9b1ecb64-a29d-4c84-9cab-53cf9afba4ba', CAST(34.91 AS Decimal(18, 2)), 72, 18, N'9eed3fdb-f9c1-44f2-9a6e-1cf0594b422f', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'6138720e-f5d9-4c6a-8603-53dc5b4d5ac6', CAST(206.57 AS Decimal(18, 2)), 42, 15, N'9cec7d2c-ecc0-496d-881f-79dd856c56f1', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'12dfb8d0-6c9b-4558-8123-53e319ee5d2c', CAST(1498.99 AS Decimal(18, 2)), 49, 26, N'7a2472db-52b3-4225-831c-65898cefff02', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b47e0fb8-aec0-47b8-b220-5429144de0ff', CAST(2539.29 AS Decimal(18, 2)), 37, 10, N'67ed7b28-553c-4f26-b773-d2a21d28d4ef', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7a03794f-9c73-42cb-8591-549dec1a0b13', CAST(929.93 AS Decimal(18, 2)), 33, 4, N'3ef23a04-884f-4e06-9fca-117f275bd56d', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd93ef09c-6c75-4c66-a73a-55a0ca8128f0', CAST(1476.38 AS Decimal(18, 2)), 32, 10, N'67ed7b28-553c-4f26-b773-d2a21d28d4ef', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'0eefde10-8ed6-45ee-9514-55f7804bad4f', CAST(1026.60 AS Decimal(18, 2)), 39, 24, N'19fc48da-a072-44d7-9dfd-c4ff44055613', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'9b321a0d-fbc6-4183-a800-560c9d22785b', CAST(86.65 AS Decimal(18, 2)), 76, 24, N'bbe3af07-945b-47ad-a854-7e7b73d719fb', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd047359c-4bb2-423e-931d-56fda61b1e1f', CAST(2186.46 AS Decimal(18, 2)), 49, 12, N'38883823-5762-4647-866d-efcc9654af9d', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'9c008466-f444-45d9-a1e9-571aa78707c4', CAST(1759.06 AS Decimal(18, 2)), 49, 18, N'0a6af0ae-3678-4fe7-96c4-3952c47263fd', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'2a89a4d4-0604-4f80-a743-5761837c419d', CAST(3629.41 AS Decimal(18, 2)), 56, 5, N'95df93b4-d2ca-4b17-8b1d-f117a822ced8', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'59549b0d-4060-4187-9c8d-582089a122b1', CAST(38.48 AS Decimal(18, 2)), 61, 13, N'005d842f-1ca3-42bd-a8ee-d39c7dd0147e', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'998cbb01-5fc6-4a32-8b4c-586a082badc9', CAST(178.47 AS Decimal(18, 2)), 31, 2, N'0a6af0ae-3678-4fe7-96c4-3952c47263fd', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c9607200-2a76-48bb-bcc2-59264d98e32f', CAST(3858.16 AS Decimal(18, 2)), 31, 13, N'ab158065-dcf3-460a-be8f-d76a9a9d7c0b', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3c6be86b-e686-44b5-b592-5a76db58b5c4', CAST(945.27 AS Decimal(18, 2)), 40, 28, N'005d842f-1ca3-42bd-a8ee-d39c7dd0147e', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'30fbf416-4c07-41ca-bd67-5aaa5023363b', CAST(26.67 AS Decimal(18, 2)), 51, 34, N'8cca0ab0-c34f-4292-a157-aa7cd3e0b4cb', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'439a1d7a-673a-4146-bd61-5ae000774277', CAST(2352.71 AS Decimal(18, 2)), 18, 5, N'9eb26b58-ac1f-42de-9758-5e91321a8c5e', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'75293056-9f7b-492a-ab75-5b0c3eb10b51', CAST(2493.28 AS Decimal(18, 2)), 26, 2, N'5cbba7ad-248a-4754-b7ec-e05e63469ade', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e91ea588-d98d-4557-828e-5b1b01fb3f96', CAST(19.73 AS Decimal(18, 2)), 71, 26, N'f8d8f383-7351-4ead-a804-5995c95c3c18', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'858f74ca-e5e2-41b0-b66c-5b6bd4ab49b7', CAST(3635.60 AS Decimal(18, 2)), 33, 16, N'd817e4b2-484f-472f-997a-d4c85e64a589', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3e07f494-1cad-4e28-86a0-5b98be1dbe01', CAST(2225.73 AS Decimal(18, 2)), 55, 14, N'f8d8f383-7351-4ead-a804-5995c95c3c18', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'4cca1a6c-ee66-4f02-b55d-5ced7e010010', CAST(1102.02 AS Decimal(18, 2)), 38, 15, N'8cca0ab0-c34f-4292-a157-aa7cd3e0b4cb', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c332c65d-e610-4701-96e1-5d979c71ebb6', CAST(683.51 AS Decimal(18, 2)), 11, 10, N'3130570c-98fe-4b85-98ea-01ca10368047', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'13b1be15-ee12-4281-9fdd-5da5bf800f6d', CAST(2206.15 AS Decimal(18, 2)), 31, 2, N'b52f209d-1ccd-46db-97f2-ecf4b98e5c6b', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'591066fa-8a13-4f2a-b9a8-5da8520e69a2', CAST(1386.55 AS Decimal(18, 2)), 22, 5, N'9cec7d2c-ecc0-496d-881f-79dd856c56f1', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ed1c5c10-6686-40be-ad82-5ddde89df291', CAST(1383.13 AS Decimal(18, 2)), 44, 23, N'd817e4b2-484f-472f-997a-d4c85e64a589', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'2d0d828a-398b-459f-af24-5f075bab1345', CAST(1601.67 AS Decimal(18, 2)), 27, 4, N'8669299b-a744-4484-9c11-77339e45cf44', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'854a796c-5d6f-4af3-b2d1-5f163dd0de9c', CAST(351.43 AS Decimal(18, 2)), 66, 24, N'3d8b8201-c5a1-4cc8-ad7e-ce294a632351', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'444d81f5-325d-4e75-a5e1-5f2fa74118c2', CAST(2802.67 AS Decimal(18, 2)), 45, 20, N'3a39216e-ee33-4765-a927-7cf709d701cb', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'03c5579c-378b-468a-8d87-5f6ca8d50fbe', CAST(17.00 AS Decimal(18, 2)), 67, 13, N'018bbd9f-1525-49fa-924c-e469d1601d26', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ceb50a8e-e29c-4f6c-846b-5fd6909d1ab3', CAST(622.14 AS Decimal(18, 2)), 22, 5, N'91449215-bf82-4014-a509-f3db522d1be3', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'42c182fd-40c6-4557-b67d-5fe984f5e0d5', CAST(1754.56 AS Decimal(18, 2)), 40, 2, N'9331a5d2-a7ae-4334-a421-ac2dbd4817cf', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f625d034-20b7-4f98-8fda-6065f0682670', CAST(34.42 AS Decimal(18, 2)), 70, 31, N'b91fcb9a-00ef-4f44-8c7b-afefb182ef44', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a025e62c-2fe5-4e8f-b66c-6097630b1147', CAST(492.57 AS Decimal(18, 2)), 54, 39, N'0a6af0ae-3678-4fe7-96c4-3952c47263fd', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'97286d28-3cc9-4bfb-a77b-60a68ca17286', CAST(767.81 AS Decimal(18, 2)), 56, 31, N'81c9a77b-0393-4fa0-8da2-25f2cafc7456', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c1cb9f89-66b4-4ccc-9c1c-61e23426cb7c', CAST(2347.33 AS Decimal(18, 2)), 42, 6, N'799542d1-4e0c-4744-b1fd-4d5189e92e8e', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd5238aab-cb25-4a1f-b077-6234d3e55529', CAST(1546.87 AS Decimal(18, 2)), 23, 15, N'3ff588bf-85be-4863-9949-c2cdd93c0600', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c1aa65ff-54df-41ac-99fb-6278465b2f87', CAST(3032.14 AS Decimal(18, 2)), 44, 13, N'9eb26b58-ac1f-42de-9758-5e91321a8c5e', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'19269141-b723-4641-8006-62dead898b2a', CAST(535.78 AS Decimal(18, 2)), 29, 15, N'857e71a4-1edd-4f46-b619-9119afff3013', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3f2bc3a7-27dc-43a4-8c72-630e679d6010', CAST(1133.67 AS Decimal(18, 2)), 43, 28, N'67ed7b28-553c-4f26-b773-d2a21d28d4ef', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'bf74caa2-7d59-4da9-8edf-63ad344a3dea', CAST(25.46 AS Decimal(18, 2)), 75, 14, N'8669299b-a744-4484-9c11-77339e45cf44', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'00abb97e-01e8-484b-8f61-646fff05b9c6', CAST(2644.56 AS Decimal(18, 2)), 17, 8, N'b52f209d-1ccd-46db-97f2-ecf4b98e5c6b', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'5cab91db-7263-4116-b3ef-648a79b3e4ca', CAST(1515.84 AS Decimal(18, 2)), 14, 11, N'3d8b8201-c5a1-4cc8-ad7e-ce294a632351', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f232f8ff-e3e1-4797-b328-648c88638cf8', CAST(300.23 AS Decimal(18, 2)), 14, 11, N'7d1c986f-b188-419f-99e9-6d565ac1e49f', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'642fc41f-ea48-4db0-824f-64e52dfdaf58', CAST(2697.12 AS Decimal(18, 2)), 34, 10, N'98fec382-85bf-4b2d-9993-76f7d7b42cd5', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'4c1f07ed-f6a3-4ffa-a2a7-6527c741821a', CAST(72.61 AS Decimal(18, 2)), 79, 12, N'c7717a5a-1e9b-4af3-bf0e-ca574d8594d1', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'66497eb5-99a4-45dd-bba0-66cb154137c2', CAST(474.53 AS Decimal(18, 2)), 46, 29, N'74af9a52-d754-4252-9a09-848f92aef2f7', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'877be9ed-b081-4e10-b384-6743260e85e8', CAST(64.28 AS Decimal(18, 2)), 65, 31, N'67ed7b28-553c-4f26-b773-d2a21d28d4ef', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'054990e8-472d-487f-b2a7-67b88800f432', CAST(245.33 AS Decimal(18, 2)), 69, 24, N'3a39216e-ee33-4765-a927-7cf709d701cb', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'75a1b8af-4d47-4473-9975-67d72f603b0b', CAST(85.50 AS Decimal(18, 2)), 48, 15, N'21672819-46dc-4416-a3fc-f945545ed09e', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'9a015d2f-d7b0-4907-8c3d-67de1ff658b8', CAST(297.94 AS Decimal(18, 2)), 59, 20, N'740209d0-c3e4-4506-afbf-7956721b1519', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a81e1c52-dc18-43a4-b7d3-686bb9e957e0', CAST(1.00 AS Decimal(18, 2)), 69, 21, N'd1ca4e77-6875-4595-a74e-a535d2bd5ce4', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd497254f-9a79-44be-8de7-68fde5648ccd', CAST(22.93 AS Decimal(18, 2)), 63, 23, N'95df93b4-d2ca-4b17-8b1d-f117a822ced8', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'60db7644-eb3a-45c0-9a68-692c448c9dce', CAST(3072.24 AS Decimal(18, 2)), 45, 6, N'be297f6f-c1a9-4d01-9fb0-760193b7672e', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'66a4a1d7-79c8-4a15-97c2-695ff427acfa', CAST(1118.50 AS Decimal(18, 2)), 34, 2, N'99481eb4-f180-4071-a06b-85ddaa12c247', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e197b9c4-d1e9-4626-ab8a-697581da7cef', CAST(2649.23 AS Decimal(18, 2)), 21, 11, N'cc1d1c5b-9b48-4d7c-8078-119c510772ec', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'8fbb9b71-09e8-4c9a-8ed0-6a3b989bfb92', CAST(2975.30 AS Decimal(18, 2)), 29, 6, N'2e55e93d-cbc1-4eb2-a606-7635daf7375a', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f1b47eef-0150-4e66-9575-6b7f111f4ae8', CAST(20.85 AS Decimal(18, 2)), 79, 29, N'5cbba7ad-248a-4754-b7ec-e05e63469ade', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f815f492-0c8b-40c1-97f1-6b91a1871875', CAST(2281.73 AS Decimal(18, 2)), 15, 2, N'ea52accb-9ae0-42f0-b7a0-6f8fee7f2a8b', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a6871c9b-7199-4401-88d8-6c09130bae2f', CAST(993.11 AS Decimal(18, 2)), 43, 21, N'f7931044-28b8-4c5a-8e03-e699afa7e6ff', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'99c363a5-8820-4134-b9cc-6d1648c7f075', CAST(2452.35 AS Decimal(18, 2)), 39, 19, N'd6ec1b5c-da7e-4fc4-a44c-c890df78848a', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'47406a9b-71d7-48a7-90ec-6da15595fda5', CAST(2623.19 AS Decimal(18, 2)), 55, 14, N'76c298fd-9639-469e-a5db-62165488cb37', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'34472589-a05d-4327-9ad4-6e6898b5bd37', CAST(1226.68 AS Decimal(18, 2)), 31, 17, N'38883823-5762-4647-866d-efcc9654af9d', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'afa8a8df-b9ff-411e-9002-6f2a4b729825', CAST(3143.21 AS Decimal(18, 2)), 28, 19, N'0f35b448-67d7-4866-8722-6fb8e50db299', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ae682caf-19a2-4e19-8a07-6f8b31c60a51', CAST(531.81 AS Decimal(18, 2)), 19, 9, N'b91fcb9a-00ef-4f44-8c7b-afefb182ef44', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'368e0f2b-69ca-482e-8800-6fd8b8bcd805', CAST(22.10 AS Decimal(18, 2)), 75, 19, N'740209d0-c3e4-4506-afbf-7956721b1519', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3f23f94d-7c51-4e36-bfc8-709f46e1fc0e', CAST(1555.02 AS Decimal(18, 2)), 24, 16, N'b24e57b5-ca6a-4f51-abbc-564f04daf29c', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'aac47857-e0ec-42c9-a01c-70fe65af107d', CAST(43.90 AS Decimal(18, 2)), 61, 23, N'd1ca4e77-6875-4595-a74e-a535d2bd5ce4', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'02b9f252-f685-4ebf-babb-71a460d0c5d0', CAST(280.50 AS Decimal(18, 2)), 52, 30, N'b24e57b5-ca6a-4f51-abbc-564f04daf29c', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'8e32f2a2-eff8-41b8-96d8-71c186cc5a16', CAST(368.45 AS Decimal(18, 2)), 67, 26, N'216b4ce2-6a09-4374-98fa-d84934dbc7a4', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'77d0a2b7-1108-4263-b4bd-71e1279ee272', CAST(3735.31 AS Decimal(18, 2)), 55, 12, N'd6ec1b5c-da7e-4fc4-a44c-c890df78848a', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'6f8451c3-7dd7-4f16-9d2d-72866da50e3f', CAST(2227.89 AS Decimal(18, 2)), 22, 18, N'3291252c-cc5a-418c-8012-8b2555ce3747', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'84f003a2-86e8-4270-9161-72cbc07621cf', CAST(2912.84 AS Decimal(18, 2)), 47, 13, N'9eb26b58-ac1f-42de-9758-5e91321a8c5e', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'90cb3a7a-5623-47d5-9d1e-7365bafcc48a', CAST(300.49 AS Decimal(18, 2)), 51, 12, N'2e55e93d-cbc1-4eb2-a606-7635daf7375a', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'0e0099e3-b68c-4dfd-a551-74017b67d6b6', CAST(986.21 AS Decimal(18, 2)), 47, 2, N'5cbba7ad-248a-4754-b7ec-e05e63469ade', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'dab76b5b-51bb-461a-9fde-7415d7213316', CAST(871.85 AS Decimal(18, 2)), 49, 17, N'b24e57b5-ca6a-4f51-abbc-564f04daf29c', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'4f0633f2-6f08-40fb-a563-745a46f2f67a', CAST(3382.22 AS Decimal(18, 2)), 25, 16, N'74b46c85-347e-480b-a015-3f7589df13a9', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'2e48db39-87d0-4217-a8f2-74b1302a9ea5', CAST(889.04 AS Decimal(18, 2)), 29, 4, N'c7717a5a-1e9b-4af3-bf0e-ca574d8594d1', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'12bd49e4-0981-4bca-b49b-768bea176b35', CAST(826.04 AS Decimal(18, 2)), 60, 37, N'a8e16935-2e35-42ba-bacf-bce5caa589fa', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'1c118539-4604-463e-a55a-76c4ac95f15d', CAST(2335.77 AS Decimal(18, 2)), 14, 6, N'740209d0-c3e4-4506-afbf-7956721b1519', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'abbb0e8d-ffb9-42d4-8612-774286bb23ec', CAST(111.35 AS Decimal(18, 2)), 56, 23, N'9eed3fdb-f9c1-44f2-9a6e-1cf0594b422f', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'8928b70e-a127-4cc2-a107-77e87967e42a', CAST(70.10 AS Decimal(18, 2)), 75, 24, N'd6ec1b5c-da7e-4fc4-a44c-c890df78848a', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'1d4b0056-8d98-4def-bed9-783f36a43610', CAST(1837.72 AS Decimal(18, 2)), 48, 15, N'd6ec1b5c-da7e-4fc4-a44c-c890df78848a', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e7812470-192f-49ba-a5b2-78d3e09e5ae2', CAST(1094.19 AS Decimal(18, 2)), 16, 3, N'19fc48da-a072-44d7-9dfd-c4ff44055613', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b9087962-9bb8-4272-9acd-7905efa824ca', CAST(587.67 AS Decimal(18, 2)), 66, 31, N'be297f6f-c1a9-4d01-9fb0-760193b7672e', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'abd3183c-cf39-4e11-86a4-7986571d2fe7', CAST(2581.93 AS Decimal(18, 2)), 28, 8, N'a17c0b7e-81c4-4b74-8953-21cea684f77a', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'16e72c76-e580-4aa4-b595-79accd012c1b', CAST(2936.89 AS Decimal(18, 2)), 51, 9, N'8e05f571-0ef7-4f8d-a860-e2303c3e886a', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b9bd9ba8-0ad9-4e48-9a82-79dc2108f188', CAST(3971.10 AS Decimal(18, 2)), 18, 8, N'0527b313-22ad-43aa-bf50-ca29a96db704', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a42a2cd9-2247-465e-bcb8-7a805bd08f7f', CAST(49.23 AS Decimal(18, 2)), 68, 21, N'2e55e93d-cbc1-4eb2-a606-7635daf7375a', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'6cae4471-56e5-45cb-9a6a-7aa3dc21b8fc', CAST(207.58 AS Decimal(18, 2)), 42, 22, N'5cbba7ad-248a-4754-b7ec-e05e63469ade', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'73844f4a-df25-424b-acf3-7bb309c5c1f4', CAST(1037.65 AS Decimal(18, 2)), 26, 7, N'38883823-5762-4647-866d-efcc9654af9d', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'238b1765-7515-4072-aa03-7d537e679935', CAST(2327.56 AS Decimal(18, 2)), 46, 16, N'9cec7d2c-ecc0-496d-881f-79dd856c56f1', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c6c817c9-a20c-403e-898e-7e021adcd6c8', CAST(654.72 AS Decimal(18, 2)), 65, 29, N'e22f0603-ae28-48c0-8c5f-e2eea9d95617', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'6b7b5171-5b28-4338-a5e9-7e3fc9a34038', CAST(56.05 AS Decimal(18, 2)), 60, 14, N'a17c0b7e-81c4-4b74-8953-21cea684f77a', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e9236e3d-55d4-4acb-b7a2-7ee179edf442', CAST(977.83 AS Decimal(18, 2)), 12, 9, N'74b46c85-347e-480b-a015-3f7589df13a9', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd16deaee-d591-4e7f-a910-7fc98d476b43', CAST(1265.34 AS Decimal(18, 2)), 13, 11, N'49c564fe-5c51-41dd-8a69-2e976e416b59', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ada6832c-e1ba-4e47-9d6d-812eb74b8a33', CAST(15.80 AS Decimal(18, 2)), 77, 15, N'98fec382-85bf-4b2d-9993-76f7d7b42cd5', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'0e5d3b5c-8284-465a-8606-81f542a28e37', CAST(228.37 AS Decimal(18, 2)), 35, 20, N'f8d8f383-7351-4ead-a804-5995c95c3c18', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c10d1b55-1c13-4aad-b293-820f7e323723', CAST(1891.12 AS Decimal(18, 2)), 10, 7, N'21672819-46dc-4416-a3fc-f945545ed09e', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b9b5448a-4924-487e-b193-825a87f3c785', CAST(17.93 AS Decimal(18, 2)), 61, 19, N'01324e2a-4b1f-47be-b21a-8c07f17a03af', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'1b93cfd4-e28a-470d-9a8f-82ad0fc037ba', CAST(21.61 AS Decimal(18, 2)), 68, 33, N'98fec382-85bf-4b2d-9993-76f7d7b42cd5', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a5518674-ea5f-44b5-9b78-8423e9bb0e18', CAST(1852.32 AS Decimal(18, 2)), 35, 25, N'0f35b448-67d7-4866-8722-6fb8e50db299', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'4a8df39a-4a6d-48d8-ab0b-84605c23bed5', CAST(38.96 AS Decimal(18, 2)), 79, 17, N'3130570c-98fe-4b85-98ea-01ca10368047', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'75ea629b-583b-4335-82c4-84e471b9fa76', CAST(2872.87 AS Decimal(18, 2)), 27, 2, N'cc1d1c5b-9b48-4d7c-8078-119c510772ec', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b96f3b39-a33f-42bb-a5df-84f54e78031b', CAST(1326.05 AS Decimal(18, 2)), 48, 7, N'857e71a4-1edd-4f46-b619-9119afff3013', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'8444d452-7d51-47e1-ada4-85cea471e638', CAST(3648.11 AS Decimal(18, 2)), 56, 17, N'0f35b448-67d7-4866-8722-6fb8e50db299', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'06386690-300b-4bfb-bc2d-867fd9a322c7', CAST(1055.69 AS Decimal(18, 2)), 57, 6, N'7041714f-9b7a-497e-bf1f-f6fb836ed656', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'31cdb388-2a91-48b9-97f3-86d86fc379bf', CAST(2304.30 AS Decimal(18, 2)), 33, 15, N'7a2472db-52b3-4225-831c-65898cefff02', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'fb733057-6472-419e-b26c-8780b1213389', CAST(2993.28 AS Decimal(18, 2)), 50, 4, N'd1ca4e77-6875-4595-a74e-a535d2bd5ce4', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'95413928-db46-422e-ab2a-8858906cbe80', CAST(50.77 AS Decimal(18, 2)), 67, 37, N'799542d1-4e0c-4744-b1fd-4d5189e92e8e', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e74776b0-8435-46ad-92e4-8965ec0ccebb', CAST(884.90 AS Decimal(18, 2)), 26, 11, N'62287bf8-658f-4651-945f-55078974512f', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f9c7a851-6469-483c-94e5-89d14fae8385', CAST(3960.00 AS Decimal(18, 2)), 45, 13, N'7e6619ef-1af0-4aea-8f5c-50231ed9fecd', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'959ba28a-f5b3-4e1c-91b7-8a150d7ccf5c', CAST(487.68 AS Decimal(18, 2)), 32, 16, N'740209d0-c3e4-4506-afbf-7956721b1519', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e5b27a25-bfe8-4b36-ac4a-8a667f5a4576', CAST(86.64 AS Decimal(18, 2)), 69, 15, N'ab158065-dcf3-460a-be8f-d76a9a9d7c0b', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'99eba4da-80dc-4478-a4b4-8a80388b7f2d', CAST(4151.57 AS Decimal(18, 2)), 28, 7, N'018bbd9f-1525-49fa-924c-e469d1601d26', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'adb6cdfc-8019-49c6-a869-8a836980b9c9', CAST(1565.85 AS Decimal(18, 2)), 40, 12, N'7a2472db-52b3-4225-831c-65898cefff02', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'28ab7442-55b8-4dc6-9ce5-8c0a383f0b5d', CAST(134.96 AS Decimal(18, 2)), 57, 34, N'1e4b4fad-8ab7-4150-919a-0f8bd24fad90', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'87d21fd5-5548-4725-8974-8c16442c314d', CAST(984.23 AS Decimal(18, 2)), 67, 25, N'9eb26b58-ac1f-42de-9758-5e91321a8c5e', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'5e7a87ab-c5f8-45c3-827c-8c98426f2a0b', CAST(284.60 AS Decimal(18, 2)), 57, 24, N'2e55e93d-cbc1-4eb2-a606-7635daf7375a', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a3627fca-aba6-4949-bebd-8d5a10589bce', CAST(89.90 AS Decimal(18, 2)), 63, 21, N'be297f6f-c1a9-4d01-9fb0-760193b7672e', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'339b9213-95f0-4536-b2d4-8dbdeb4bf138', CAST(2286.06 AS Decimal(18, 2)), 27, 20, N'ab158065-dcf3-460a-be8f-d76a9a9d7c0b', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'fcc054ec-75bf-4071-b426-8e0048e9d42e', CAST(1828.51 AS Decimal(18, 2)), 34, 14, N'd1ca4e77-6875-4595-a74e-a535d2bd5ce4', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'42e6624c-0318-4905-ab7f-91525c3f5493', CAST(368.24 AS Decimal(18, 2)), 30, 10, N'3291252c-cc5a-418c-8012-8b2555ce3747', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'bb5f8145-a0bc-4afd-a0df-91862ed19b99', CAST(982.91 AS Decimal(18, 2)), 69, 36, N'757dddc4-adb7-4b11-97fe-008f681ddd6b', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a668b34b-4c19-453b-b671-91b3d8e6807e', CAST(427.84 AS Decimal(18, 2)), 64, 34, N'9331a5d2-a7ae-4334-a421-ac2dbd4817cf', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'cd699c8a-1579-41a5-a2fd-920532b3c02d', CAST(551.58 AS Decimal(18, 2)), 23, 14, N'216b4ce2-6a09-4374-98fa-d84934dbc7a4', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ee9acde2-6e95-4348-93e6-92643a14cbf1', CAST(404.91 AS Decimal(18, 2)), 37, 18, N'2e55e93d-cbc1-4eb2-a606-7635daf7375a', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd01b61a7-04da-475c-b467-9279bdcdb513', CAST(1407.61 AS Decimal(18, 2)), 22, 8, N'3ff588bf-85be-4863-9949-c2cdd93c0600', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'5cd55c58-c651-4491-a228-92a79aaa27e0', CAST(300.77 AS Decimal(18, 2)), 25, 8, N'e8f89488-0556-4bc9-b611-b3d80ebd4145', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a1181072-633a-4880-9f30-92c9f923dc1d', CAST(569.05 AS Decimal(18, 2)), 58, 29, N'005d842f-1ca3-42bd-a8ee-d39c7dd0147e', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'582d2fa3-3c61-4c00-904a-92d1746347f4', CAST(260.21 AS Decimal(18, 2)), 48, 19, N'3ef23a04-884f-4e06-9fca-117f275bd56d', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a0c31fe2-1fec-4a3f-a944-932652a22625', CAST(3075.59 AS Decimal(18, 2)), 48, 9, N'5a20b31a-8ea2-49a9-bf04-6270df237936', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'109dad13-edfc-4f22-80d9-93aae7b0ce6c', CAST(641.74 AS Decimal(18, 2)), 35, 13, N'e22f0603-ae28-48c0-8c5f-e2eea9d95617', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'078f22d8-393c-4ac0-a2ca-93c91766ce26', CAST(3432.37 AS Decimal(18, 2)), 37, 9, N'01324e2a-4b1f-47be-b21a-8c07f17a03af', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'9a2171e8-7a62-4ca4-8300-943fd7bb9d43', CAST(75.59 AS Decimal(18, 2)), 77, 18, N'49c564fe-5c51-41dd-8a69-2e976e416b59', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'6ad8aa57-35e3-466b-b93d-95ff1c30b662', CAST(265.63 AS Decimal(18, 2)), 12, 7, N'3291252c-cc5a-418c-8012-8b2555ce3747', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f7c3af2a-e198-4a5a-a914-965202d9eab8', CAST(1671.94 AS Decimal(18, 2)), 27, 12, N'0527b313-22ad-43aa-bf50-ca29a96db704', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'60c5246f-1f49-4b69-9fda-96937ae1c98c', CAST(1543.38 AS Decimal(18, 2)), 42, 19, N'f7931044-28b8-4c5a-8e03-e699afa7e6ff', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'45bc6131-0f95-4f77-adfd-96bdc6c95c60', CAST(11.60 AS Decimal(18, 2)), 73, 21, N'7a2472db-52b3-4225-831c-65898cefff02', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'91d12118-9d2c-408f-b018-96c64fe91c90', CAST(2942.98 AS Decimal(18, 2)), 15, 14, N'7d1c986f-b188-419f-99e9-6d565ac1e49f', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'75c4a4e7-ff79-4741-8018-972e0217c756', CAST(3104.06 AS Decimal(18, 2)), 55, 9, N'81c9a77b-0393-4fa0-8da2-25f2cafc7456', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a30c3feb-7d10-41bc-8ce3-978f3855fed2', CAST(132.50 AS Decimal(18, 2)), 23, 8, N'01bc0529-4615-45b8-8c81-cbfe55a3201b', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'41424fde-1ad2-4a11-86fe-981de307715f', CAST(3246.67 AS Decimal(18, 2)), 23, 13, N'cc1d1c5b-9b48-4d7c-8078-119c510772ec', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'037f59e9-570a-47fe-a160-987eff113512', CAST(226.69 AS Decimal(18, 2)), 25, 15, N'5a20b31a-8ea2-49a9-bf04-6270df237936', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'edfa905b-f60c-4a51-a529-98c977f114b9', CAST(823.05 AS Decimal(18, 2)), 55, 26, N'67ed7b28-553c-4f26-b773-d2a21d28d4ef', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b40a1882-5465-49d5-a06e-990eac7a76de', CAST(33.13 AS Decimal(18, 2)), 70, 26, N'ea52accb-9ae0-42f0-b7a0-6f8fee7f2a8b', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'49a983aa-e30e-4efb-b282-993bfee119ac', CAST(6.97 AS Decimal(18, 2)), 62, 12, N'd817e4b2-484f-472f-997a-d4c85e64a589', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f85f3b68-b683-4282-b5f9-995a49bf46bb', CAST(82.68 AS Decimal(18, 2)), 74, 21, N'99481eb4-f180-4071-a06b-85ddaa12c247', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7fad27c9-572b-4a84-8e66-995d51fbf658', CAST(1371.79 AS Decimal(18, 2)), 57, 9, N'38883823-5762-4647-866d-efcc9654af9d', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a28364f3-5b95-440b-a57e-9bdf9f436df5', CAST(3878.52 AS Decimal(18, 2)), 28, 19, N'62287bf8-658f-4651-945f-55078974512f', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'9d5ee920-91fc-443c-b6cc-9bec4d2f813b', CAST(1782.11 AS Decimal(18, 2)), 22, 3, N'3a39216e-ee33-4765-a927-7cf709d701cb', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'003248e8-e0c0-4dd2-adc2-9dd12b1a0de0', CAST(3904.45 AS Decimal(18, 2)), 24, 15, N'7a2472db-52b3-4225-831c-65898cefff02', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'0cd61d5a-525c-49f2-8aeb-9de3fb50c9e2', CAST(2957.34 AS Decimal(18, 2)), 59, 21, N'757dddc4-adb7-4b11-97fe-008f681ddd6b', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3adfaed8-2657-4803-89d6-9faed8a0fedd', CAST(15.89 AS Decimal(18, 2)), 66, 14, N'8cfc6b80-e13e-4161-8288-31e9afc35cc3', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'470b4186-5b98-4a0f-9673-a00c85e5447f', CAST(2895.49 AS Decimal(18, 2)), 17, 16, N'01bc0529-4615-45b8-8c81-cbfe55a3201b', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3733dcdf-a161-4d09-8d70-a01b9ca5fdcb', CAST(12.89 AS Decimal(18, 2)), 65, 21, N'16d0252e-e622-4d6d-b49f-70bdbdbb8f9b', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'298d7f3d-fb6e-4cb4-b605-a0b63ffbfe29', CAST(699.66 AS Decimal(18, 2)), 49, 14, N'e22f0603-ae28-48c0-8c5f-e2eea9d95617', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'592bc189-a09a-4b60-9ef6-a13b58de9af7', CAST(70.59 AS Decimal(18, 2)), 77, 24, N'74af9a52-d754-4252-9a09-848f92aef2f7', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'13a62be4-e356-4455-bbe2-a1464c09b9f3', CAST(2522.89 AS Decimal(18, 2)), 38, 17, N'a8e16935-2e35-42ba-bacf-bce5caa589fa', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'87e737b9-66cb-4867-8b7b-a20c91cd6427', CAST(499.82 AS Decimal(18, 2)), 48, 21, N'f7931044-28b8-4c5a-8e03-e699afa7e6ff', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'1e20029a-a6b7-4b79-98fe-a22f886261b7', CAST(576.67 AS Decimal(18, 2)), 35, 16, N'1e4b4fad-8ab7-4150-919a-0f8bd24fad90', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'091e24ac-b1f0-40d6-8dbc-a2605346b1bc', CAST(1.30 AS Decimal(18, 2)), 64, 24, N'3a39216e-ee33-4765-a927-7cf709d701cb', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'79c9ae84-a903-4623-97ce-a2f8d6f4508e', CAST(1620.43 AS Decimal(18, 2)), 28, 7, N'1921ee30-cb7f-4c9b-b92f-929c8a357c60', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd60f220b-138a-46f0-a7bd-a3ae76d51747', CAST(934.86 AS Decimal(18, 2)), 55, 20, N'7d1c986f-b188-419f-99e9-6d565ac1e49f', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'0f1cd8b5-e9be-4437-9709-a3b54c7b4268', CAST(430.97 AS Decimal(18, 2)), 30, 22, N'8e05f571-0ef7-4f8d-a860-e2303c3e886a', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd946cb1a-fe78-4139-80e2-a45c6ff0ac2a', CAST(629.64 AS Decimal(18, 2)), 26, 18, N'bbe3af07-945b-47ad-a854-7e7b73d719fb', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'611e1a79-1bff-4514-a3c4-a4ada9476680', CAST(218.77 AS Decimal(18, 2)), 35, 17, N'8cca0ab0-c34f-4292-a157-aa7cd3e0b4cb', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7761627f-5144-4801-87fc-a54cee0a41ba', CAST(43.00 AS Decimal(18, 2)), 65, 27, N'76c298fd-9639-469e-a5db-62165488cb37', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'2cf5797e-0e54-4fb0-9449-a5db68c3cd27', CAST(990.61 AS Decimal(18, 2)), 23, 17, N'74af9a52-d754-4252-9a09-848f92aef2f7', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'1a504128-edec-4b4a-ae05-a7efc058a271', CAST(902.83 AS Decimal(18, 2)), 32, 18, N'0527b313-22ad-43aa-bf50-ca29a96db704', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b82684af-1ca7-4bd9-960c-a85c307f5bee', CAST(74.35 AS Decimal(18, 2)), 74, 13, N'8cca0ab0-c34f-4292-a157-aa7cd3e0b4cb', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'8664514f-06f8-4e02-aaf6-a889039be377', CAST(2895.02 AS Decimal(18, 2)), 16, 14, N'b24e57b5-ca6a-4f51-abbc-564f04daf29c', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7ab1ea43-1f3d-430d-ba8c-a8ed498d56fb', CAST(458.84 AS Decimal(18, 2)), 60, 36, N'3ff588bf-85be-4863-9949-c2cdd93c0600', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'24dd82a6-3a6f-47a7-9cf7-a9272750f39e', CAST(645.50 AS Decimal(18, 2)), 43, 26, N'9331a5d2-a7ae-4334-a421-ac2dbd4817cf', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c7441778-893c-4a34-9b2c-a992f912d6d1', CAST(985.15 AS Decimal(18, 2)), 26, 16, N'a8e16935-2e35-42ba-bacf-bce5caa589fa', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'542ffe60-505d-4413-9de3-aa8bf4bad09b', CAST(1748.63 AS Decimal(18, 2)), 43, 14, N'c7717a5a-1e9b-4af3-bf0e-ca574d8594d1', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'4ebe4d39-e1ab-4712-b211-ab07f9db8049', CAST(1238.26 AS Decimal(18, 2)), 13, 7, N'2e55e93d-cbc1-4eb2-a606-7635daf7375a', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e473d2d6-7fa4-4cea-9d4f-ab6372965510', CAST(1371.68 AS Decimal(18, 2)), 32, 16, N'9331a5d2-a7ae-4334-a421-ac2dbd4817cf', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'34328661-29c6-4b2b-95f7-ab9fbb22e1e8', CAST(1670.43 AS Decimal(18, 2)), 44, 12, N'a17c0b7e-81c4-4b74-8953-21cea684f77a', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'58b0b9b7-a571-41bc-9940-aba5769aa872', CAST(2028.68 AS Decimal(18, 2)), 29, 12, N'7d35bf5b-4faa-41c6-acdf-25688d1b4fd3', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'803d1afa-3f1c-4a7b-8ca9-abc6d0b43f36', CAST(20.11 AS Decimal(18, 2)), 56, 26, N'5a20b31a-8ea2-49a9-bf04-6270df237936', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b7523323-75d9-415b-b9c5-abd53ac54ef0', CAST(488.51 AS Decimal(18, 2)), 14, 9, N'76c298fd-9639-469e-a5db-62165488cb37', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'2a14ca03-36c0-4bd1-8f5a-aca9c2a68e75', CAST(76.19 AS Decimal(18, 2)), 67, 27, N'857e71a4-1edd-4f46-b619-9119afff3013', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'71e472ae-f058-4643-a296-ad140c4809ac', CAST(685.17 AS Decimal(18, 2)), 56, 2, N'01324e2a-4b1f-47be-b21a-8c07f17a03af', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'da7094d7-c13e-4bae-8259-ad206bbec3d0', CAST(564.48 AS Decimal(18, 2)), 38, 25, N'38883823-5762-4647-866d-efcc9654af9d', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'879c35af-0ed8-4924-a7cd-ada668572305', CAST(599.74 AS Decimal(18, 2)), 60, 34, N'38d83a7f-cf99-4c4f-920d-282935e2bc97', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'9a1ca577-28cb-42eb-ab20-ae48e560162e', CAST(745.38 AS Decimal(18, 2)), 24, 3, N'a17c0b7e-81c4-4b74-8953-21cea684f77a', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e05ea39c-4e48-4650-b709-ae9d5d04d5c6', CAST(67.65 AS Decimal(18, 2)), 78, 31, N'5a20b31a-8ea2-49a9-bf04-6270df237936', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b1bc0e47-ff36-470b-8b51-afa8677f0666', CAST(3318.50 AS Decimal(18, 2)), 38, 20, N'd1ca4e77-6875-4595-a74e-a535d2bd5ce4', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7c7d5cbc-708c-48b3-b7c8-b034c3f46dfb', CAST(557.77 AS Decimal(18, 2)), 57, 15, N'81c9a77b-0393-4fa0-8da2-25f2cafc7456', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'26fc285f-a6aa-402e-b8c3-b2273abc78f6', CAST(219.04 AS Decimal(18, 2)), 35, 21, N'e8f89488-0556-4bc9-b611-b3d80ebd4145', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a24275d1-1349-4cab-b987-b337f68026c7', CAST(1646.90 AS Decimal(18, 2)), 36, 22, N'8669299b-a744-4484-9c11-77339e45cf44', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'88551475-31c4-4c85-b3d9-b39bfdc97b2f', CAST(1988.96 AS Decimal(18, 2)), 13, 5, N'9331a5d2-a7ae-4334-a421-ac2dbd4817cf', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'47d4eeb5-372d-4c1e-b0fe-b52cd643735e', CAST(1852.16 AS Decimal(18, 2)), 15, 2, N'a8e16935-2e35-42ba-bacf-bce5caa589fa', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3b97fd46-fb8f-45fd-9b07-b55248b2f3e6', CAST(2199.71 AS Decimal(18, 2)), 31, 8, N'62287bf8-658f-4651-945f-55078974512f', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e781974b-6772-4300-94a6-b5e6ddbc23cf', CAST(546.74 AS Decimal(18, 2)), 19, 12, N'8669299b-a744-4484-9c11-77339e45cf44', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'4b2a2ece-6f5b-40ac-8817-b6825b56c107', CAST(449.58 AS Decimal(18, 2)), 21, 20, N'a17c0b7e-81c4-4b74-8953-21cea684f77a', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'587ab68c-49e7-491e-8b2a-b7d7c38b74d6', CAST(1846.29 AS Decimal(18, 2)), 35, 25, N'7d35bf5b-4faa-41c6-acdf-25688d1b4fd3', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'79fd904b-dc0e-4649-a43f-b7fc904dd7f6', CAST(2647.74 AS Decimal(18, 2)), 26, 16, N'99481eb4-f180-4071-a06b-85ddaa12c247', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'6774a71e-24d7-4493-bbdd-b84fc13d1da5', CAST(196.56 AS Decimal(18, 2)), 27, 21, N'3d8b8201-c5a1-4cc8-ad7e-ce294a632351', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'1cba804c-73b0-4629-a5a9-b992b719b554', CAST(82.23 AS Decimal(18, 2)), 65, 15, N'757dddc4-adb7-4b11-97fe-008f681ddd6b', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'952384c0-b6bd-49c1-8f17-ba21fe96e4ff', CAST(93.35 AS Decimal(18, 2)), 68, 20, N'74b46c85-347e-480b-a015-3f7589df13a9', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'abdf687b-a46a-4b0a-8e26-bc9ba4955803', CAST(936.04 AS Decimal(18, 2)), 11, 8, N'216b4ce2-6a09-4374-98fa-d84934dbc7a4', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'39cca096-5f87-4bb2-9469-bd12de734a21', CAST(1757.34 AS Decimal(18, 2)), 12, 3, N'98fec382-85bf-4b2d-9993-76f7d7b42cd5', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'657f351e-229d-45d1-a07a-bd6249e5f960', CAST(1968.89 AS Decimal(18, 2)), 13, 7, N'74b46c85-347e-480b-a015-3f7589df13a9', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'027dcc0e-0a3a-4f43-ba62-bdd4accf777f', CAST(2844.48 AS Decimal(18, 2)), 40, 12, N'd817e4b2-484f-472f-997a-d4c85e64a589', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'987ecf9a-644b-4fbc-9062-be07661ed579', CAST(6.80 AS Decimal(18, 2)), 49, 21, N'3d8b8201-c5a1-4cc8-ad7e-ce294a632351', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'590ec515-4308-47ed-8458-be5535afc5be', CAST(1828.14 AS Decimal(18, 2)), 21, 9, N'19fc48da-a072-44d7-9dfd-c4ff44055613', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'abd9a948-aabd-458a-a968-bfafde5ed7c0', CAST(2303.15 AS Decimal(18, 2)), 23, 15, N'7e6619ef-1af0-4aea-8f5c-50231ed9fecd', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f81826bf-9710-4c7e-9ff2-bfe5c76c11e1', CAST(2441.15 AS Decimal(18, 2)), 21, 16, N'ecf0020c-676a-49c1-81dc-a3d2684b4fda', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'1031ffeb-0a3f-48e8-ab6e-c0d3e7464f3b', CAST(1686.68 AS Decimal(18, 2)), 47, 23, N'99481eb4-f180-4071-a06b-85ddaa12c247', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'58983661-3074-4bf8-9974-c160b4fa3318', CAST(1082.33 AS Decimal(18, 2)), 30, 22, N'7d1c986f-b188-419f-99e9-6d565ac1e49f', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7c371565-229d-49d8-b9c4-c17644dc350e', CAST(47.88 AS Decimal(18, 2)), 79, 17, N'9331a5d2-a7ae-4334-a421-ac2dbd4817cf', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'8657f06b-22ad-4ea0-83eb-c23113dc23c2', CAST(3238.21 AS Decimal(18, 2)), 30, 3, N'ea52accb-9ae0-42f0-b7a0-6f8fee7f2a8b', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'abff59a7-f417-4fcf-a947-c2712186aa44', CAST(1462.25 AS Decimal(18, 2)), 20, 10, N'1e4b4fad-8ab7-4150-919a-0f8bd24fad90', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f70e5ba9-5958-47a1-83b9-c32d733983e0', CAST(738.67 AS Decimal(18, 2)), 69, 34, N'7e6619ef-1af0-4aea-8f5c-50231ed9fecd', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e9c5add3-a819-45d4-9b2c-c37ccc043ab0', CAST(442.51 AS Decimal(18, 2)), 60, 25, N'47610866-464d-4f9b-9a8c-f3bb55b14b75', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'2b4d8dff-cd16-41ee-b55c-c3efbcf375e9', CAST(1793.00 AS Decimal(18, 2)), 36, 22, N'75d2f14b-28cf-4da3-b717-433fee92ace3', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'65c00e8c-fbee-4d18-8371-c4c3c9417ad5', CAST(2575.77 AS Decimal(18, 2)), 26, 5, N'0a6af0ae-3678-4fe7-96c4-3952c47263fd', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'bbec14d8-bee8-4fda-8d9b-c5d743552566', CAST(3202.84 AS Decimal(18, 2)), 18, 15, N'91449215-bf82-4014-a509-f3db522d1be3', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'629eca2f-bab8-42f3-9eb5-c5fd298dd495', CAST(1021.12 AS Decimal(18, 2)), 21, 3, N'8e05f571-0ef7-4f8d-a860-e2303c3e886a', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ec18ce54-50d2-42ee-92ef-c602cd38117e', CAST(87.10 AS Decimal(18, 2)), 67, 12, N'799542d1-4e0c-4744-b1fd-4d5189e92e8e', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c4529394-a4a7-4a06-8f56-c6c5832ee8f6', CAST(1.00 AS Decimal(18, 2)), 62, 19, N'01bc0529-4615-45b8-8c81-cbfe55a3201b', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'8a7ba0aa-41c9-49be-a3ac-c7e21728feb4', CAST(1811.89 AS Decimal(18, 2)), 58, 21, N'f8d8f383-7351-4ead-a804-5995c95c3c18', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'fbdf16a4-4d3e-4f79-8b46-c83813d7537c', CAST(940.38 AS Decimal(18, 2)), 66, 35, N'bbe3af07-945b-47ad-a854-7e7b73d719fb', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'25a1ba47-0380-4ec0-a524-c87fa1ffd0e6', CAST(4198.34 AS Decimal(18, 2)), 58, 16, N'b24e57b5-ca6a-4f51-abbc-564f04daf29c', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'43d97f27-f082-44cb-98f3-c8fb7ab57313', CAST(83.15 AS Decimal(18, 2)), 61, 25, N'e22f0603-ae28-48c0-8c5f-e2eea9d95617', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'26e420af-da1c-427e-ab17-c9eefd3012e0', CAST(66.25 AS Decimal(18, 2)), 66, 15, N'0527b313-22ad-43aa-bf50-ca29a96db704', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'fb2a3a67-0583-464f-916b-cad9b6069e3d', CAST(2928.08 AS Decimal(18, 2)), 27, 19, N'b24e57b5-ca6a-4f51-abbc-564f04daf29c', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'4823d69f-a455-448d-bc38-cb22be8539bd', CAST(55.18 AS Decimal(18, 2)), 76, 16, N'81c9a77b-0393-4fa0-8da2-25f2cafc7456', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ce362a52-e712-4a0b-a048-cbc38502e54b', CAST(864.55 AS Decimal(18, 2)), 52, 23, N'01bc0529-4615-45b8-8c81-cbfe55a3201b', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a0ec935e-bc9f-493f-9625-cd0df1f77de3', CAST(1180.70 AS Decimal(18, 2)), 44, 26, N'ecf0020c-676a-49c1-81dc-a3d2684b4fda', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'17a31862-fa80-469a-8cb3-cd1a003e89ad', CAST(901.57 AS Decimal(18, 2)), 13, 10, N'f8d8f383-7351-4ead-a804-5995c95c3c18', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'daa3299f-e3cb-456f-9eb4-cd8e234cded2', CAST(1866.88 AS Decimal(18, 2)), 44, 26, N'95df93b4-d2ca-4b17-8b1d-f117a822ced8', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'51b84f22-2155-4556-a974-cda4176bb82c', CAST(336.95 AS Decimal(18, 2)), 21, 19, N'47610866-464d-4f9b-9a8c-f3bb55b14b75', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'97c10586-97bf-4498-906c-ceed8eb83fe7', CAST(83.92 AS Decimal(18, 2)), 75, 29, N'e8f89488-0556-4bc9-b611-b3d80ebd4145', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'86289eb4-24b1-41ba-a8bf-cf5d48ac4b58', CAST(440.04 AS Decimal(18, 2)), 65, 39, N'3130570c-98fe-4b85-98ea-01ca10368047', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'fd661061-c3c0-4686-b17f-d00d5b2ed0d7', CAST(25.52 AS Decimal(18, 2)), 60, 28, N'0a6af0ae-3678-4fe7-96c4-3952c47263fd', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'311c7aec-539d-4a04-b359-d0a8caccc52c', CAST(45.25 AS Decimal(18, 2)), 64, 32, N'3291252c-cc5a-418c-8012-8b2555ce3747', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'50575194-1929-4782-a9f3-d160ed0e0ec7', CAST(2740.92 AS Decimal(18, 2)), 23, 12, N'16d0252e-e622-4d6d-b49f-70bdbdbb8f9b', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'2a55c27a-8c8c-4fe0-8bde-d1e36fe32a03', CAST(2280.75 AS Decimal(18, 2)), 43, 12, N'9eed3fdb-f9c1-44f2-9a6e-1cf0594b422f', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'11250628-9342-4355-94cb-d2130a886068', CAST(561.17 AS Decimal(18, 2)), 11, 2, N'7a2472db-52b3-4225-831c-65898cefff02', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'8485c5b9-0a50-464e-96f6-d26711e3b215', CAST(1827.92 AS Decimal(18, 2)), 25, 8, N'3d8b8201-c5a1-4cc8-ad7e-ce294a632351', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'2f2695e5-6559-47c2-8680-d2b247080963', CAST(31.09 AS Decimal(18, 2)), 26, 4, N'b91fcb9a-00ef-4f44-8c7b-afefb182ef44', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c1d7768c-9dca-4efb-acba-d342a990cacc', CAST(529.81 AS Decimal(18, 2)), 30, 6, N'95df93b4-d2ca-4b17-8b1d-f117a822ced8', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'acbf45f2-64a6-4984-8f19-d3aad81e70bf', CAST(179.64 AS Decimal(18, 2)), 41, 13, N'47610866-464d-4f9b-9a8c-f3bb55b14b75', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'1076a2a2-c24f-45c4-8b1d-d415e3a06053', CAST(63.44 AS Decimal(18, 2)), 63, 20, N'19fc48da-a072-44d7-9dfd-c4ff44055613', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'96eb3939-cba0-4d3d-bd22-d425ebde8094', CAST(68.37 AS Decimal(18, 2)), 61, 31, N'7d1c986f-b188-419f-99e9-6d565ac1e49f', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7e70db1d-db54-453b-aa07-d4b3aca214ed', CAST(581.66 AS Decimal(18, 2)), 68, 28, N'8e05f571-0ef7-4f8d-a860-e2303c3e886a', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'0a07013a-16bc-49c3-943b-d5aaf2b52823', CAST(3868.89 AS Decimal(18, 2)), 41, 15, N'16d0252e-e622-4d6d-b49f-70bdbdbb8f9b', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'945aed05-09fc-473d-bf59-d648b6a9d79c', CAST(1359.93 AS Decimal(18, 2)), 24, 15, N'216b4ce2-6a09-4374-98fa-d84934dbc7a4', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b849ea0c-cf0e-4c38-976f-d6e7b03feaed', CAST(226.80 AS Decimal(18, 2)), 48, 15, N'757dddc4-adb7-4b11-97fe-008f681ddd6b', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'a687ca5f-fa99-484f-ad64-d6fcc0885c7e', CAST(2924.77 AS Decimal(18, 2)), 23, 6, N'005d842f-1ca3-42bd-a8ee-d39c7dd0147e', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ae855eb5-5db6-44d1-b176-d7587eea07aa', CAST(108.77 AS Decimal(18, 2)), 69, 34, N'3ef23a04-884f-4e06-9fca-117f275bd56d', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'8f59f67d-1867-4cad-8b61-d78ff69e7f33', CAST(865.28 AS Decimal(18, 2)), 60, 38, N'7a2472db-52b3-4225-831c-65898cefff02', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'5a0a3650-4a01-46dd-85d0-d84acf5c1449', CAST(132.99 AS Decimal(18, 2)), 23, 18, N'0a6af0ae-3678-4fe7-96c4-3952c47263fd', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7b55a527-28b5-494c-8035-d84f1a20ef9a', CAST(8.17 AS Decimal(18, 2)), 64, 29, N'a17c0b7e-81c4-4b74-8953-21cea684f77a', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'19dfe223-5a64-4b02-ab82-d88aa21c70f9', CAST(1084.44 AS Decimal(18, 2)), 21, 8, N'75d2f14b-28cf-4da3-b717-433fee92ace3', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7db1dc26-e10e-473f-908c-d8c61d3128cb', CAST(2340.20 AS Decimal(18, 2)), 35, 14, N'd817e4b2-484f-472f-997a-d4c85e64a589', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd0f9d2c3-462e-4898-a2b5-d8c827a1ff03', CAST(1087.43 AS Decimal(18, 2)), 44, 24, N'01bc0529-4615-45b8-8c81-cbfe55a3201b', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'6d00022c-d551-42e6-96c8-d8f1aa3489e3', CAST(332.55 AS Decimal(18, 2)), 25, 20, N'7d35bf5b-4faa-41c6-acdf-25688d1b4fd3', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'64696f0a-526d-4338-a7f4-d92f2166aee4', CAST(172.19 AS Decimal(18, 2)), 41, 22, N'76c298fd-9639-469e-a5db-62165488cb37', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'587d778d-fad1-4428-b1f1-d99fb7fe291e', CAST(5.13 AS Decimal(18, 2)), 78, 31, N'cc1d1c5b-9b48-4d7c-8078-119c510772ec', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'060bbd78-d82f-44b0-859f-d9e25a24698d', CAST(541.93 AS Decimal(18, 2)), 11, 2, N'95df93b4-d2ca-4b17-8b1d-f117a822ced8', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'74d8ee4e-b300-4db2-a75d-da9200c329c0', CAST(1427.80 AS Decimal(18, 2)), 43, 20, N'738ff466-d4b6-4663-9a2d-0149421d1a71', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'eccc4de8-a1b1-47b5-bc55-dc28379ba4ba', CAST(374.50 AS Decimal(18, 2)), 24, 18, N'5cbba7ad-248a-4754-b7ec-e05e63469ade', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'2bf16fed-e1c8-4456-98b1-dc5ded3f7eb3', CAST(2628.95 AS Decimal(18, 2)), 28, 17, N'f8d8f383-7351-4ead-a804-5995c95c3c18', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'57042c4b-4f62-4092-9bad-dcb307ae7820', CAST(539.45 AS Decimal(18, 2)), 14, 8, N'ea52accb-9ae0-42f0-b7a0-6f8fee7f2a8b', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'0e63f3fd-a2c1-4ea7-a0cc-dcfadb237598', CAST(48.19 AS Decimal(18, 2)), 60, 25, N'91449215-bf82-4014-a509-f3db522d1be3', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'689bc141-0a50-45da-a74a-dd0412212090', CAST(1257.34 AS Decimal(18, 2)), 18, 11, N'd1ca4e77-6875-4595-a74e-a535d2bd5ce4', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'14ba1d43-8348-444d-8876-de71dbc4d66b', CAST(182.99 AS Decimal(18, 2)), 50, 22, N'5cbba7ad-248a-4754-b7ec-e05e63469ade', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3c16cac8-6f98-47a5-b255-df20d72ce9ef', CAST(1396.68 AS Decimal(18, 2)), 11, 9, N'c7717a5a-1e9b-4af3-bf0e-ca574d8594d1', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e82a3c17-fd0e-4a75-abb7-dfc0f9a9bc33', CAST(2641.82 AS Decimal(18, 2)), 21, 5, N'5cbba7ad-248a-4754-b7ec-e05e63469ade', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'24004171-ef3c-47f4-9b0a-dfdc276124bf', CAST(2597.62 AS Decimal(18, 2)), 24, 21, N'74af9a52-d754-4252-9a09-848f92aef2f7', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'566d106c-3bca-49ff-a0da-dfe1b3907d23', CAST(66.94 AS Decimal(18, 2)), 30, 18, N'01324e2a-4b1f-47be-b21a-8c07f17a03af', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ef2758c0-9cfc-4c0a-9d73-e06cc3559994', CAST(35.79 AS Decimal(18, 2)), 78, 19, N'738ff466-d4b6-4663-9a2d-0149421d1a71', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'21382048-dbb1-4ab5-8318-e19ac5cd17fb', CAST(1980.41 AS Decimal(18, 2)), 30, 3, N'5a20b31a-8ea2-49a9-bf04-6270df237936', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ee6d7ede-0c71-482e-a060-e1a5287d42a4', CAST(2510.44 AS Decimal(18, 2)), 41, 4, N'8cfc6b80-e13e-4161-8288-31e9afc35cc3', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ccf753d9-7da6-4557-aaf1-e2ba28b9b8ea', CAST(1910.42 AS Decimal(18, 2)), 15, 4, N'16d0252e-e622-4d6d-b49f-70bdbdbb8f9b', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'765ef8a3-d763-48fb-838d-e3675d401a71', CAST(1777.30 AS Decimal(18, 2)), 45, 13, N'91449215-bf82-4014-a509-f3db522d1be3', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b9db58dd-73f1-475d-ad01-e47d2abe6f5d', CAST(1267.26 AS Decimal(18, 2)), 34, 21, N'49c564fe-5c51-41dd-8a69-2e976e416b59', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f60e4e34-cee5-4b7c-839a-e577435c76ca', CAST(1685.94 AS Decimal(18, 2)), 26, 9, N'3ff588bf-85be-4863-9949-c2cdd93c0600', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'1c4d746c-0f20-4084-8f85-e5e45bcae815', CAST(2241.49 AS Decimal(18, 2)), 32, 21, N'7041714f-9b7a-497e-bf1f-f6fb836ed656', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3d050946-f533-4f85-9c0e-e63dde3e632e', CAST(905.15 AS Decimal(18, 2)), 43, 29, N'8cca0ab0-c34f-4292-a157-aa7cd3e0b4cb', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e0330d14-fa31-4e76-a1da-e6831af5d1e6', CAST(178.23 AS Decimal(18, 2)), 50, 22, N'ecf0020c-676a-49c1-81dc-a3d2684b4fda', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f43c7955-b521-4577-b038-e68c4b16df22', CAST(691.78 AS Decimal(18, 2)), 68, 23, N'1921ee30-cb7f-4c9b-b92f-929c8a357c60', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'0aaaa3f7-0ce2-429c-abfa-e91f5ff6f37d', CAST(621.91 AS Decimal(18, 2)), 62, 29, N'01324e2a-4b1f-47be-b21a-8c07f17a03af', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'11b18b86-0e79-4231-b0a7-e93de5a144e3', CAST(3916.24 AS Decimal(18, 2)), 55, 17, N'b52f209d-1ccd-46db-97f2-ecf4b98e5c6b', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd3d81ec9-943d-4c35-ba58-e95d099c0d27', CAST(971.36 AS Decimal(18, 2)), 33, 29, N'21672819-46dc-4416-a3fc-f945545ed09e', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'dfe2ac44-dd1a-464e-ad47-e95ebe5f560f', CAST(2109.93 AS Decimal(18, 2)), 16, 12, N'738ff466-d4b6-4663-9a2d-0149421d1a71', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd8551fdf-db81-428a-9d56-e9653efd67e9', CAST(2209.02 AS Decimal(18, 2)), 30, 18, N'76c298fd-9639-469e-a5db-62165488cb37', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ffe21b85-17ef-4b38-81a8-e97a875d8e21', CAST(346.82 AS Decimal(18, 2)), 18, 16, N'3291252c-cc5a-418c-8012-8b2555ce3747', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f6648807-ce65-48ec-8286-eab7abbfa77c', CAST(476.18 AS Decimal(18, 2)), 59, 32, N'7041714f-9b7a-497e-bf1f-f6fb836ed656', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'10cf428c-e4e8-497e-853b-eabc1aaface0', CAST(1818.16 AS Decimal(18, 2)), 49, 20, N'3ef23a04-884f-4e06-9fca-117f275bd56d', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'b6bce5a2-5cdb-4ff5-a68c-eb1fbc4fb78e', CAST(617.52 AS Decimal(18, 2)), 14, 4, N'0f35b448-67d7-4866-8722-6fb8e50db299', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c4cb1ca5-bb1d-432c-a80a-eb3a98439f6b', CAST(904.02 AS Decimal(18, 2)), 60, 32, N'cc1d1c5b-9b48-4d7c-8078-119c510772ec', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'703be877-9750-4b95-9cbe-eb8bf56b16f8', CAST(3188.07 AS Decimal(18, 2)), 49, 2, N'd26c444f-b17e-4801-ab73-5704fc16ac94', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'61df0f92-0261-4690-8dae-ebfd32346ee0', CAST(1210.39 AS Decimal(18, 2)), 38, 17, N'01324e2a-4b1f-47be-b21a-8c07f17a03af', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'5e4bb9f4-6463-44ed-8a51-ec7717307fb6', CAST(582.50 AS Decimal(18, 2)), 34, 23, N'9eb26b58-ac1f-42de-9758-5e91321a8c5e', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e726f45b-b925-45cd-8ff7-ec7d93ef22c0', CAST(920.13 AS Decimal(18, 2)), 47, 3, N'9eed3fdb-f9c1-44f2-9a6e-1cf0594b422f', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'340ac93d-fe6f-45d6-9e37-ec84cf461e1e', CAST(784.16 AS Decimal(18, 2)), 43, 23, N'91449215-bf82-4014-a509-f3db522d1be3', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'5da95547-8725-4ccb-a8ed-ecff1d0ba60d', CAST(414.88 AS Decimal(18, 2)), 48, 5, N'bbe3af07-945b-47ad-a854-7e7b73d719fb', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'72949b40-84fe-4375-8367-edae935cee68', CAST(980.80 AS Decimal(18, 2)), 21, 17, N'799542d1-4e0c-4744-b1fd-4d5189e92e8e', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'908508fd-923f-417c-8667-ef1b0345af26', CAST(938.81 AS Decimal(18, 2)), 42, 12, N'8cfc6b80-e13e-4161-8288-31e9afc35cc3', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'8323fd71-59a8-4325-9f86-ef3ad1e54bd2', CAST(919.40 AS Decimal(18, 2)), 60, 39, N'91449215-bf82-4014-a509-f3db522d1be3', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'064ba232-464c-49d2-a80c-ef6a4e2c6189', CAST(910.00 AS Decimal(18, 2)), 60, 32, N'b91fcb9a-00ef-4f44-8c7b-afefb182ef44', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'10e3478f-c984-4842-a2d4-ef70f5addb82', CAST(947.89 AS Decimal(18, 2)), 62, 25, N'018bbd9f-1525-49fa-924c-e469d1601d26', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'e2ee8556-13d3-41d9-b910-ef7243c5da2e', CAST(936.49 AS Decimal(18, 2)), 32, 11, N'799542d1-4e0c-4744-b1fd-4d5189e92e8e', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3830a3d0-226f-47ed-8ed4-ef77ee0a381c', CAST(3038.34 AS Decimal(18, 2)), 52, 9, N'75d2f14b-28cf-4da3-b717-433fee92ace3', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'9e86c8c2-face-4361-a058-efb84b2e423b', CAST(1093.77 AS Decimal(18, 2)), 33, 13, N'd817e4b2-484f-472f-997a-d4c85e64a589', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ce2c7dfc-b36e-4dbe-a94a-f08457e56325', CAST(1655.33 AS Decimal(18, 2)), 25, 17, N'cc1d1c5b-9b48-4d7c-8078-119c510772ec', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'9873719b-6c5d-4133-9e63-f0931b98a3fa', CAST(83.65 AS Decimal(18, 2)), 65, 12, N'a8e16935-2e35-42ba-bacf-bce5caa589fa', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'736df669-ed70-45fa-b78c-f21a5bdc62ee', CAST(1056.55 AS Decimal(18, 2)), 32, 10, N'74b46c85-347e-480b-a015-3f7589df13a9', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'c15169e8-5914-4070-a271-f26b6ce79866', CAST(618.18 AS Decimal(18, 2)), 58, 11, N'8cca0ab0-c34f-4292-a157-aa7cd3e0b4cb', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'61c8e4e4-1f37-4a03-a6c3-f2f6ba6311fa', CAST(353.07 AS Decimal(18, 2)), 45, 26, N'bbe3af07-945b-47ad-a854-7e7b73d719fb', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'54ab2852-def1-4af1-84a1-f4952ef0bfe0', CAST(958.44 AS Decimal(18, 2)), 65, 23, N'19fc48da-a072-44d7-9dfd-c4ff44055613', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f0c0ef27-7d35-45fe-8a32-f4963b5d3852', CAST(2438.57 AS Decimal(18, 2)), 52, 3, N'99481eb4-f180-4071-a06b-85ddaa12c247', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'bce59632-7d83-44cc-b1b8-f4e9912c91a2', CAST(475.71 AS Decimal(18, 2)), 38, 26, N'740209d0-c3e4-4506-afbf-7956721b1519', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'214a7961-044f-4732-9820-f5d0e818a48f', CAST(2389.69 AS Decimal(18, 2)), 15, 2, N'740209d0-c3e4-4506-afbf-7956721b1519', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ee9514c7-9e35-47f9-99a1-f5df7add30b3', CAST(1629.92 AS Decimal(18, 2)), 52, 3, N'f7931044-28b8-4c5a-8e03-e699afa7e6ff', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd6fbe82e-5ec9-499c-87f6-f60039d233c1', CAST(2420.61 AS Decimal(18, 2)), 36, 3, N'1e4b4fad-8ab7-4150-919a-0f8bd24fad90', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f89a6f19-fba7-4031-9625-f6c588e4acb5', CAST(2763.82 AS Decimal(18, 2)), 54, 20, N'738ff466-d4b6-4663-9a2d-0149421d1a71', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'834edebd-3a5c-4eca-9437-f6f60c5ba160', CAST(2355.80 AS Decimal(18, 2)), 50, 19, N'3291252c-cc5a-418c-8012-8b2555ce3747', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'22b212a9-030c-4299-ad9c-f749028540cb', CAST(1474.74 AS Decimal(18, 2)), 34, 13, N'0527b313-22ad-43aa-bf50-ca29a96db704', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'409acdde-761b-46a6-ad3c-f78d166ffb5e', CAST(1466.98 AS Decimal(18, 2)), 45, 16, N'3a39216e-ee33-4765-a927-7cf709d701cb', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'8053f3dc-ce3b-4ff9-9922-f7e17b9f6c6f', CAST(129.55 AS Decimal(18, 2)), 64, 25, N'38883823-5762-4647-866d-efcc9654af9d', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'71c18368-8835-4eac-8e08-f8f78a0f823b', CAST(1321.44 AS Decimal(18, 2)), 25, 11, N'be297f6f-c1a9-4d01-9fb0-760193b7672e', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'3c68ef0d-8a11-48dc-9533-f9f1d400f8ae', CAST(668.85 AS Decimal(18, 2)), 65, 21, N'd6ec1b5c-da7e-4fc4-a44c-c890df78848a', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'22d95334-9db0-4b53-b016-fa183325d877', CAST(833.72 AS Decimal(18, 2)), 69, 38, N'0527b313-22ad-43aa-bf50-ca29a96db704', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'488c72fe-dc79-435a-b8ba-fa47e767863d', CAST(80.26 AS Decimal(18, 2)), 72, 24, N'3ef23a04-884f-4e06-9fca-117f275bd56d', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'14e573a6-43ae-4b9a-a9ff-fb4e9dfd2c4a', CAST(1869.32 AS Decimal(18, 2)), 28, 17, N'1921ee30-cb7f-4c9b-b92f-929c8a357c60', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'7c6bd4fe-68e0-48b6-8d02-fb7e63340f6c', CAST(52.39 AS Decimal(18, 2)), 72, 26, N'216b4ce2-6a09-4374-98fa-d84934dbc7a4', N'1a92ade3-f460-4391-915e-2ab799aa789e', CAST(N'2022-04-10T21:52:55.7600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'f9c9d058-d25c-4362-bf1d-fbe556869f98', CAST(481.57 AS Decimal(18, 2)), 56, 28, N'd817e4b2-484f-472f-997a-d4c85e64a589', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'117dff12-2b06-44c5-aafb-fbf6bbcf8174', CAST(3526.45 AS Decimal(18, 2)), 34, 3, N'3ff588bf-85be-4863-9949-c2cdd93c0600', N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', CAST(N'2022-04-10T21:50:10.9266667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'd9b93368-786c-478e-8a09-fc319caba82d', CAST(858.18 AS Decimal(18, 2)), 65, 38, N'8cfc6b80-e13e-4161-8288-31e9afc35cc3', N'63c31b25-2071-40af-92cd-9c4b601ab13e', CAST(N'2022-04-10T21:03:34.2166667' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'65fba69d-c85c-4d86-830c-fcaf84286ba7', CAST(1251.00 AS Decimal(18, 2)), 24, 16, N'7d1c986f-b188-419f-99e9-6d565ac1e49f', N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', CAST(N'2022-04-10T21:45:59.5600000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'36e1348a-758a-4067-a011-fcc8fd39fbb6', CAST(1922.94 AS Decimal(18, 2)), 30, 29, N'be297f6f-c1a9-4d01-9fb0-760193b7672e', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'80461496-6ba5-492e-8584-ff522a80de4a', CAST(1536.88 AS Decimal(18, 2)), 31, 24, N'e8f89488-0556-4bc9-b611-b3d80ebd4145', N'ace41c27-a6d7-49a5-b590-958de2312385', CAST(N'2022-04-10T21:42:25.7500000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'ae5302a8-a192-47ce-9bf5-ff6341e4b192', CAST(1449.89 AS Decimal(18, 2)), 47, 9, N'8669299b-a744-4484-9c11-77339e45cf44', N'4f4a127b-89f7-4df5-9818-81c05553d774', CAST(N'2022-04-10T21:51:25.9100000' AS DateTime2), NULL)
GO

INSERT [dbo].[HotelRooms] ([Id], [Price], [MaxAllotment], [SoldAllotment], [HotelId], [RoomTypeId], [CreateDate], [UpdateDate]) VALUES (N'0dc027dc-b556-45d9-82fc-ffed6e6bf99b', CAST(769.46 AS Decimal(18, 2)), 29, 11, N'1921ee30-cb7f-4c9b-b92f-929c8a357c60', N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', CAST(N'2022-04-10T21:44:12.0400000' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'757dddc4-adb7-4b11-97fe-008f681ddd6b', N'Hotel Occazia', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'738ff466-d4b6-4663-9a2d-0149421d1a71', N'Treebones Resort', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'3130570c-98fe-4b85-98ea-01ca10368047', N'Beachwalk Resort', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'1e4b4fad-8ab7-4150-919a-0f8bd24fad90', N'Quaint Motel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'3ef23a04-884f-4e06-9fca-117f275bd56d', N'Fountain Fun', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'cc1d1c5b-9b48-4d7c-8078-119c510772ec', N'The Mutiny Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'9eed3fdb-f9c1-44f2-9a6e-1cf0594b422f', N'Coastal bay hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'a17c0b7e-81c4-4b74-8953-21cea684f77a', N'Four Seasons', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'7d35bf5b-4faa-41c6-acdf-25688d1b4fd3', N'The Lakefront', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'81c9a77b-0393-4fa0-8da2-25f2cafc7456', N'Beacon Motel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'38d83a7f-cf99-4c4f-920d-282935e2bc97', N'White Season Resort', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'49c564fe-5c51-41dd-8a69-2e976e416b59', N'Etiquette Suites', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'8cfc6b80-e13e-4161-8288-31e9afc35cc3', N'The Eternity Resort', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'0a6af0ae-3678-4fe7-96c4-3952c47263fd', N'Time Motel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'74b46c85-347e-480b-a015-3f7589df13a9', N'Holly House', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'75d2f14b-28cf-4da3-b717-433fee92ace3', N'Venture Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'799542d1-4e0c-4744-b1fd-4d5189e92e8e', N'Cape Grace', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'7e6619ef-1af0-4aea-8f5c-50231ed9fecd', N'Royal Galaxy', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'62287bf8-658f-4651-945f-55078974512f', N'The White Rock Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'b24e57b5-ca6a-4f51-abbc-564f04daf29c', N'Sunny Canopy', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'd26c444f-b17e-4801-ab73-5704fc16ac94', N'The New Yorker', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'f8d8f383-7351-4ead-a804-5995c95c3c18', N'High Desert Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'9eb26b58-ac1f-42de-9758-5e91321a8c5e', N'Comfort B&B', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'76c298fd-9639-469e-a5db-62165488cb37', N'Spring Brook', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'5a20b31a-8ea2-49a9-bf04-6270df237936', N'Sapphires Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'7a2472db-52b3-4225-831c-65898cefff02', N'The New View', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'7d1c986f-b188-419f-99e9-6d565ac1e49f', N'Sunset Lodge', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'ea52accb-9ae0-42f0-b7a0-6f8fee7f2a8b', N'Eden Roc', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'0f35b448-67d7-4866-8722-6fb8e50db299', N'The Watson Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'16d0252e-e622-4d6d-b49f-70bdbdbb8f9b', N'American Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'be297f6f-c1a9-4d01-9fb0-760193b7672e', N'Wonder Hill Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'2e55e93d-cbc1-4eb2-a606-7635daf7375a', N'Spotlight Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'98fec382-85bf-4b2d-9993-76f7d7b42cd5', N'Consulate Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'8669299b-a744-4484-9c11-77339e45cf44', N'Friendship Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'740209d0-c3e4-4506-afbf-7956721b1519', N'Towne Place Suites', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'9cec7d2c-ecc0-496d-881f-79dd856c56f1', N'The Glory Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'3a39216e-ee33-4765-a927-7cf709d701cb', N'Hotel Elite', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'bbe3af07-945b-47ad-a854-7e7b73d719fb', N'The Fresco Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'74af9a52-d754-4252-9a09-848f92aef2f7', N'University Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'99481eb4-f180-4071-a06b-85ddaa12c247', N'Tower Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'3291252c-cc5a-418c-8012-8b2555ce3747', N'Prestige proga Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'01324e2a-4b1f-47be-b21a-8c07f17a03af', N'Purple Orchid', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'857e71a4-1edd-4f46-b619-9119afff3013', N'Relax Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'1921ee30-cb7f-4c9b-b92f-929c8a357c60', N'The Orchard Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'ecf0020c-676a-49c1-81dc-a3d2684b4fda', N'Hotel Bliss', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'd1ca4e77-6875-4595-a74e-a535d2bd5ce4', N'The Lakefront', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'8cca0ab0-c34f-4292-a157-aa7cd3e0b4cb', N'The Palazzo Resort', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'9331a5d2-a7ae-4334-a421-ac2dbd4817cf', N'Lime Wood', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'b91fcb9a-00ef-4f44-8c7b-afefb182ef44', N'Parallel Shine', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'e8f89488-0556-4bc9-b611-b3d80ebd4145', N'Motel On Main', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'a8e16935-2e35-42ba-bacf-bce5caa589fa', N'Water Vibe Resorts', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'3ff588bf-85be-4863-9949-c2cdd93c0600', N'Purple Orchid', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'19fc48da-a072-44d7-9dfd-c4ff44055613', N'Lake Place Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'd6ec1b5c-da7e-4fc4-a44c-c890df78848a', N'Green Tortoise Hostel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'0527b313-22ad-43aa-bf50-ca29a96db704', N'Golden Cherry Motel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'c7717a5a-1e9b-4af3-bf0e-ca574d8594d1', N'The Glory Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'01bc0529-4615-45b8-8c81-cbfe55a3201b', N'Hotel Agoura', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'3d8b8201-c5a1-4cc8-ad7e-ce294a632351', N'Always Welcome', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'67ed7b28-553c-4f26-b773-d2a21d28d4ef', N'The Manhattan', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'005d842f-1ca3-42bd-a8ee-d39c7dd0147e', N'Dream Connect', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'd817e4b2-484f-472f-997a-d4c85e64a589', N'Emerald Bay Inn', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'ab158065-dcf3-460a-be8f-d76a9a9d7c0b', N'The Venetian', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'216b4ce2-6a09-4374-98fa-d84934dbc7a4', N'Waypoint', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'5cbba7ad-248a-4754-b7ec-e05e63469ade', N'The Hot Springs Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'8e05f571-0ef7-4f8d-a860-e2303c3e886a', N'Sandy Bloom', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'e22f0603-ae28-48c0-8c5f-e2eea9d95617', N'The Mississippi Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'018bbd9f-1525-49fa-924c-e469d1601d26', N'Cosmopolitan Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'f7931044-28b8-4c5a-8e03-e699afa7e6ff', N'Budget Suites', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'b52f209d-1ccd-46db-97f2-ecf4b98e5c6b', N'The Peninsula', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'38883823-5762-4647-866d-efcc9654af9d', N'The New View', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'95df93b4-d2ca-4b17-8b1d-f117a822ced8', N'Crowne Plaza', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'47610866-464d-4f9b-9a8c-f3bb55b14b75', N'Element', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'91449215-bf82-4014-a509-f3db522d1be3', N'The Huntington Hotel', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'7041714f-9b7a-497e-bf1f-f6fb836ed656', N'Ramada Limited & Suites', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Hotels] ([Id], [HotelName], [CreateDate], [UpdateDate]) VALUES (N'21672819-46dc-4416-a3fc-f945545ed09e', N'The Breakers', CAST(N'2022-04-10T20:24:31.2266667' AS DateTime2), NULL)
GO

INSERT [dbo].[Reservations] ([Id], [StartDate], [EndDate], [RoomCount], [HotelRoomId], [CreateDate], [UpdateDate]) VALUES (N'0cbe3147-bdb5-4614-89b5-d88a4da7af68', CAST(N'2022-04-12T00:00:00.0000000' AS DateTime2), CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2), 12, N'f6dc39f9-ff18-4c4e-9157-022df8bdb6c2', CAST(N'2022-04-13T00:06:55.3543367' AS DateTime2), NULL)
GO

INSERT [dbo].[RoomTypes] ([Id], [RoomTypeName], [CreateDate], [UpdateDate]) VALUES (N'1a92ade3-f460-4391-915e-2ab799aa789e', N'Twin', CAST(N'2022-04-10T20:07:07.6066667' AS DateTime2), NULL)
GO

INSERT [dbo].[RoomTypes] ([Id], [RoomTypeName], [CreateDate], [UpdateDate]) VALUES (N'cf2eedee-7c96-4490-8d1a-4041994dd5e8', N'Queen', CAST(N'2022-04-10T20:07:07.6066667' AS DateTime2), NULL)
GO

INSERT [dbo].[RoomTypes] ([Id], [RoomTypeName], [CreateDate], [UpdateDate]) VALUES (N'4f4a127b-89f7-4df5-9818-81c05553d774', N'King', CAST(N'2022-04-10T20:07:07.6066667' AS DateTime2), NULL)
GO

INSERT [dbo].[RoomTypes] ([Id], [RoomTypeName], [CreateDate], [UpdateDate]) VALUES (N'ace41c27-a6d7-49a5-b590-958de2312385', N'Double', CAST(N'2022-04-10T20:07:07.6066667' AS DateTime2), NULL)
GO

INSERT [dbo].[RoomTypes] ([Id], [RoomTypeName], [CreateDate], [UpdateDate]) VALUES (N'63c31b25-2071-40af-92cd-9c4b601ab13e', N'Single', CAST(N'2022-04-10T20:07:07.5766667' AS DateTime2), NULL)
GO

INSERT [dbo].[RoomTypes] ([Id], [RoomTypeName], [CreateDate], [UpdateDate]) VALUES (N'b5b9b29d-8b6b-4f83-ba7d-b8b7f21ad203', N'Triple', CAST(N'2022-04-10T20:07:07.6066667' AS DateTime2), NULL)
GO

INSERT [dbo].[RoomTypes] ([Id], [RoomTypeName], [CreateDate], [UpdateDate]) VALUES (N'c7f5fedd-c59e-4b99-9562-ec7446fcbcb7', N'Quad', CAST(N'2022-04-10T20:07:07.6066667' AS DateTime2), NULL)
GO

USE [master]
GO

ALTER DATABASE [OdeonHotel] SET  READ_WRITE
GO

/****** Object:  Database [OdeonHotel]    Script Date: 13.04.2022 12:55:19 ******/
CREATE DATABASE [OdeonHotel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OdeonHotelTestCase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OdeonHotelTestCase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OdeonHotelTestCase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OdeonHotelTestCase.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT

GO

--Syntax Error: Expected DEFAULT_FULLTEXT_LANGUAGE but encountered CATALOG_COLLATION instead.
--/****** Object:  Database [OdeonHotel]    Script Date: 13.04.2022 12:55:19 ******/
--CREATE DATABASE [OdeonHotel]
-- CONTAINMENT = NONE
-- ON  PRIMARY 
--( NAME = N'OdeonHotelTestCase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OdeonHotelTestCase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- LOG ON 
--( NAME = N'OdeonHotelTestCase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OdeonHotelTestCase.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
-- WITH CATALOG_COLLATION = DATABASE_DEFAULT

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

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--CREATE TABLE [dbo].[__EFMigrationsHistory](
--	[MigrationId] [nvarchar](150) NOT NULL,
--	[ProductVersion] [nvarchar](32) NOT NULL,
-- CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
--(
--	[MigrationId] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]

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

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--CREATE TABLE [dbo].[HotelRooms](
--	[Id] [uniqueidentifier] NOT NULL,
--	[Price] [decimal](18, 2) NOT NULL,
--	[MaxAllotment] [int] NOT NULL,
--	[SoldAllotment] [int] NOT NULL,
--	[HotelId] [uniqueidentifier] NOT NULL,
--	[RoomTypeId] [uniqueidentifier] NOT NULL,
--	[CreateDate] [datetime2](7) NOT NULL,
--	[UpdateDate] [datetime2](7) NULL,
-- CONSTRAINT [PK_HotelRooms] PRIMARY KEY CLUSTERED 
--(
--	[Id] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]

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

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--CREATE TABLE [dbo].[Hotels](
--	[Id] [uniqueidentifier] NOT NULL,
--	[HotelName] [nvarchar](max) NOT NULL,
--	[CreateDate] [datetime2](7) NOT NULL,
--	[UpdateDate] [datetime2](7) NULL,
-- CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED 
--(
--	[Id] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

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

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--CREATE TABLE [dbo].[Reservations](
--	[Id] [uniqueidentifier] NOT NULL,
--	[StartDate] [datetime2](7) NOT NULL,
--	[EndDate] [datetime2](7) NOT NULL,
--	[RoomCount] [int] NOT NULL,
--	[HotelRoomId] [uniqueidentifier] NOT NULL,
--	[CreateDate] [datetime2](7) NOT NULL,
--	[UpdateDate] [datetime2](7) NULL,
-- CONSTRAINT [PK_Reservations] PRIMARY KEY CLUSTERED 
--(
--	[Id] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]

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

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--CREATE TABLE [dbo].[RoomTypes](
--	[Id] [uniqueidentifier] NOT NULL,
--	[RoomTypeName] [nvarchar](max) NOT NULL,
--	[CreateDate] [datetime2](7) NOT NULL,
--	[UpdateDate] [datetime2](7) NULL,
-- CONSTRAINT [PK_RoomTypes] PRIMARY KEY CLUSTERED 
--(
--	[Id] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

/****** Object:  Index [IX_HotelRooms_HotelId]    Script Date: 13.04.2022 12:55:19 ******/
CREATE NONCLUSTERED INDEX [IX_HotelRooms_HotelId] ON [dbo].[HotelRooms]
(
	[HotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

GO

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--/****** Object:  Index [IX_HotelRooms_HotelId]    Script Date: 13.04.2022 12:55:19 ******/
--CREATE NONCLUSTERED INDEX [IX_HotelRooms_HotelId] ON [dbo].[HotelRooms]
--(
--	[HotelId] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

GO

/****** Object:  Index [IX_HotelRooms_RoomTypeId]    Script Date: 13.04.2022 12:55:19 ******/
CREATE NONCLUSTERED INDEX [IX_HotelRooms_RoomTypeId] ON [dbo].[HotelRooms]
(
	[RoomTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

GO

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--/****** Object:  Index [IX_HotelRooms_RoomTypeId]    Script Date: 13.04.2022 12:55:19 ******/
--CREATE NONCLUSTERED INDEX [IX_HotelRooms_RoomTypeId] ON [dbo].[HotelRooms]
--(
--	[RoomTypeId] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

GO

/****** Object:  Index [IX_Reservations_HotelRoomId]    Script Date: 13.04.2022 12:55:19 ******/
CREATE NONCLUSTERED INDEX [IX_Reservations_HotelRoomId] ON [dbo].[Reservations]
(
	[HotelRoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

GO

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--/****** Object:  Index [IX_Reservations_HotelRoomId]    Script Date: 13.04.2022 12:55:19 ******/
--CREATE NONCLUSTERED INDEX [IX_Reservations_HotelRoomId] ON [dbo].[Reservations]
--(
--	[HotelRoomId] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]



GO
