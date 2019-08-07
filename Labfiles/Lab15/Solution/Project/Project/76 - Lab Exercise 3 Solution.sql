---------------------------------------------------------------------
-- LAB 15
--
-- Exercise 3
---------------------------------------------------------------------

USE TSQL;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------

EXEC sys.sp_help;

EXEC sys.sp_help N'Sales.Customers';

---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------

EXEC sys.sp_helptext N'Sales.GetTopCustomers';

---------------------------------------------------------------------
-- Task 3
---------------------------------------------------------------------

EXEC sys.sp_columns @table_name = N'Customers', @table_owner = N'Sales';

---------------------------------------------------------------------
-- Task 4
---------------------------------------------------------------------

DROP PROCEDURE Sales.GetTopCustomers;