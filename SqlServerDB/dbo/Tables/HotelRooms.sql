CREATE TABLE [dbo].[HotelRooms] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Price]         DECIMAL (18, 2)  NOT NULL,
    [MaxAllotment]  INT              NOT NULL,
    [SoldAllotment] INT              NOT NULL,
    [HotelId]       UNIQUEIDENTIFIER NOT NULL,
    [RoomTypeId]    UNIQUEIDENTIFIER NOT NULL,
    [CreateDate]    DATETIME2 (7)    NOT NULL,
    [UpdateDate]    DATETIME2 (7)    NULL,
    CONSTRAINT [PK_HotelRooms] PRIMARY KEY CLUSTERED ([Id] ASC),
    ALTER TABLE [dbo].[HotelRooms]  WITH CHECK ADD  CONSTRAINT [FK_HotelRooms_Hotels_HotelId] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([Id])
GO

ALTER TABLE [dbo].[HotelRooms] CHECK CONSTRAINT [FK_HotelRooms_Hotels_HotelId],
    ALTER TABLE [dbo].[HotelRooms]  WITH CHECK ADD  CONSTRAINT [FK_HotelRooms_RoomTypes_RoomTypeId] FOREIGN KEY([RoomTypeId])
REFERENCES [dbo].[RoomTypes] ([Id])
GO

ALTER TABLE [dbo].[HotelRooms] CHECK CONSTRAINT [FK_HotelRooms_RoomTypes_RoomTypeId]
);


GO
CREATE NONCLUSTERED INDEX [IX_HotelRooms_HotelId]
    ON [dbo].[HotelRooms]([HotelId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_HotelRooms_RoomTypeId]
    ON [dbo].[HotelRooms]([RoomTypeId] ASC);


GO
ALTER TABLE [dbo].[HotelRooms]  WITH CHECK ADD  CONSTRAINT [FK_HotelRooms_RoomTypes_RoomTypeId] FOREIGN KEY([RoomTypeId])
REFERENCES [dbo].[RoomTypes] ([Id])
GO

ALTER TABLE [dbo].[HotelRooms] CHECK CONSTRAINT [FK_HotelRooms_RoomTypes_RoomTypeId]
GO
ALTER TABLE [dbo].[HotelRooms]  WITH CHECK ADD  CONSTRAINT [FK_HotelRooms_Hotels_HotelId] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([Id])
GO

ALTER TABLE [dbo].[HotelRooms] CHECK CONSTRAINT [FK_HotelRooms_Hotels_HotelId]