﻿--Twin
SELECT * FROM [dbo].[HotelRooms];
--Single
INSERT INTO [dbo].[HotelRooms] SELECT 
NEWID(),
ROUND(RAND(CHECKSUM(NEWID())) * (100), 3),
FLOOR(RAND(CHECKSUM(NEWID())) * (20))+60,
FLOOR(RAND(CHECKSUM(NEWID())) * (20))+12,
[Id],
'1A92ADE3-F460-4391-915E-2AB799AA789E',
GETDATE(), 
NULL 
FROM [dbo].[Hotels];


--