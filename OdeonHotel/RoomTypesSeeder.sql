USE [OdeonHotel]
GO
INSERT INTO [dbo].[RoomTypes] ([Id],[RoomTypeName],[CreateDate],[UpdateDate])  VALUES  (NEWID(),'Single',GETDate(),NUll)
INSERT INTO [dbo].[RoomTypes] ([Id],[RoomTypeName],[CreateDate],[UpdateDate])  VALUES  (NEWID(),'Double',GETDate(),NUll)
INSERT INTO [dbo].[RoomTypes] ([Id],[RoomTypeName],[CreateDate],[UpdateDate])  VALUES  (NEWID(),'Triple',GETDate(),NUll)
INSERT INTO [dbo].[RoomTypes] ([Id],[RoomTypeName],[CreateDate],[UpdateDate])  VALUES  (NEWID(),'Quad',GETDate(),NUll)
INSERT INTO [dbo].[RoomTypes] ([Id],[RoomTypeName],[CreateDate],[UpdateDate])  VALUES  (NEWID(),'Queen',GETDate(),NUll)
INSERT INTO [dbo].[RoomTypes] ([Id],[RoomTypeName],[CreateDate],[UpdateDate])  VALUES  (NEWID(),'King',GETDate(),NUll)
INSERT INTO [dbo].[RoomTypes] ([Id],[RoomTypeName],[CreateDate],[UpdateDate])  VALUES  (NEWID(),'Twin',GETDate(),NUll)
INSERT INTO [dbo].[RoomTypes] ([Id],[RoomTypeName],[CreateDate],[UpdateDate])  VALUES  (NEWID(),'Single',GETDate(),NUll)
GO
SELECT * FROM [dbo].[RoomTypes] order by CreateDate;