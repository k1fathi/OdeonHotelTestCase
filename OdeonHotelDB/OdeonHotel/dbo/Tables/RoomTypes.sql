CREATE TABLE [dbo].[RoomTypes] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [RoomTypeName] NVARCHAR (MAX)   NOT NULL,
    [CreateDate]   DATETIME2 (7)    NOT NULL,
    [UpdateDate]   DATETIME2 (7)    NULL,
    CONSTRAINT [PK_RoomTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

