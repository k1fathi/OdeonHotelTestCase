CREATE TABLE [dbo].[Hotels] (
    [Id]         UNIQUEIDENTIFIER NOT NULL,
    [HotelName]  NVARCHAR (MAX)   NOT NULL,
    [CreateDate] DATETIME2 (7)    NOT NULL,
    [UpdateDate] DATETIME2 (7)    NULL,
    CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED ([Id] ASC)
);

