USE [OdeonHotel]
GO

INSERT INTO [dbo].[Hotels] SELECT NEWID(),[Name],GETDATE(),NULL FROM [OdeonHotel].[dbo].[HotelsName] 
GO
SELECT * FROM [dbo].[Hotels];