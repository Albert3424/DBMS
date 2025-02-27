USE PV_319_Import;
GO

DECLARE @new_year_date		AS DATE		= DATEFROMPARTS(2025,01,01);
DECLARE @weekday			AS TINYINT  = DATEPART(WEEKDAY, @new_year_date);
DECLARE @start_date			AS DATE		= DATEADD(DAY, 1 - @weekday, @new_year_date);
PRINT(@date);
PRINT(@weekday);
PRINT(@start_date);