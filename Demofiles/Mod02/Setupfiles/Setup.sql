USE master
GO

-- Drop and restore Databases
IF EXISTS(SELECT * FROM sys.sysdatabases WHERE name = 'TSQL')
BEGIN
	DROP DATABASE TSQL
END
GO



RESTORE DATABASE [TSQL] FROM  DISK = N'/var/opt/mssql/data/TSQL.bak' WITH  REPLACE,
MOVE N'TSQL' TO N'/var/opt/mssql/data/TSQL.mdf', 
MOVE N'TSQL_Log' TO N'/var/opt/mssql/data/TSQL_log.ldf'
GO
-- ALTER AUTHORIZATION ON DATABASE::TSQL TO [ADVENTUREWORKS\Student];
GO

