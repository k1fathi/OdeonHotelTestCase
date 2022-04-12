CREATE TABLE [dbo].[Reservations] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [StartDate]   DATETIME2 (7)    NOT NULL,
    [EndDate]     DATETIME2 (7)    NOT NULL,
    [RoomCount]   INT              NOT NULL,
    [HotelRoomId] UNIQUEIDENTIFIER NOT NULL,
    [CreateDate]  DATETIME2 (7)    NOT NULL,
    [UpdateDate]  DATETIME2 (7)    NULL,
    CONSTRAINT [PK_Reservations] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Reservations_HotelRooms_HotelRoomId] FOREIGN KEY ([HotelRoomId]) REFERENCES [dbo].[HotelRooms] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Reservations_HotelRoomId]
    ON [dbo].[Reservations]([HotelRoomId] ASC);

