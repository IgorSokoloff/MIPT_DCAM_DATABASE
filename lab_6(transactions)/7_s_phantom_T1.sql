﻿SET TRANSACTION ISOLATION LEVEL SERIALIZABLEBEGIN TRANSACTION 
SELECT * FROM Награда where Награда_ид>1

WAITFOR DELAY '00:00:05';SELECT * FROM Награда where Награда_ид>1COMMIT