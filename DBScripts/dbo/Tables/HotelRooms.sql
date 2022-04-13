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
ALTER TABLE [dbo].[HotelRooms]  WITH CHECK ADD  CONSTRAINT [FK_HotelRooms_Hotels_HotelId] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([Id])
GO

ALTER TABLE [dbo].[HotelRooms] CHECK CONSTRAINT [FK_HotelRooms_Hotels_HotelId]
GO


GO
ALTER TABLE [dbo].[HotelRooms]  WITH CHECK ADD  CONSTRAINT [FK_HotelRooms_RoomTypes_RoomTypeId] FOREIGN KEY([RoomTypeId])
REFERENCES [dbo].[RoomTypes] ([Id])
GO

ALTER TABLE [dbo].[HotelRooms] CHECK CONSTRAINT [FK_HotelRooms_RoomTypes_RoomTypeId]
GO


GO
/****** Object:  Index [IX_HotelRooms_HotelId]    Script Date: 13.04.2022 12:58:33 ******/
/****** Object:  Index [IX_HotelRooms_HotelId]    Script Date: 13.04.2022 12:55:19 ******/
CREATE NONCLUSTERED INDEX [IX_HotelRooms_HotelId] ON [dbo].[HotelRooms]
(
	[HotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HotelRooms_RoomTypeId]    Script Date: 13.04.2022 12:58:33 ******/
/****** Object:  Index [IX_HotelRooms_RoomTypeId]    Script Date: 13.04.2022 12:55:19 ******/
CREATE NONCLUSTERED INDEX [IX_HotelRooms_RoomTypeId] ON [dbo].[HotelRooms]
(
	[RoomTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]