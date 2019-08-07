USE master
GO

-- Drop and restore Databases
DROP DATABASE IF EXISTS TSQL;
DROP DATABASE IF EXISTS AdventureWorks;
DROP DATABASE IF EXISTS AdventureWorks2016;
DROP DATABASE IF EXISTS AdventureWorks2016CTP3;
GO

RESTORE DATABASE [TSQL] FROM  DISK = N'/var/opt/mssql/data/TSQL.bak' WITH  REPLACE,
MOVE N'TSQL' TO N'/var/opt/mssql/data/TSQL.mdf', 
MOVE N'TSQL_Log' TO N'/var/opt/mssql/data/TSQL_log.ldf'
GO


RESTORE DATABASE [AdventureWorks] FROM  DISK = N'/var/opt/mssql/data/AdventureWorks.bak' WITH  REPLACE,
MOVE N'AdventureWorks2012_Data' TO N'/var/opt/mssql/data/AdventureWorks_Data.mdf', 
MOVE N'AdventureWorks2012_Log' TO N'/var/opt/mssql/data/AdventureWorks_log.ldf'
GO


RESTORE DATABASE [AdventureWorks2016] FROM  DISK = N'/var/opt/mssql/data/AdventureWorks2016CTP3.bak' WITH  REPLACE,
MOVE N'AdventureWorks2016CTP3_Data' TO N'/var/opt/mssql/data/AdventureWorks2016CTP3_Data.mdf', 
MOVE N'AdventureWorks2016CTP3_Log' TO N'/var/opt/mssql/data/AdventureWorks2016CTP3_log.ldf'
GO
