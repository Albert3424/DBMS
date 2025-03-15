USE PV_319_Import;
SET DATEFIRST 1;
GO

--PRINT(dbo.GetGroupID(N'PV_319'));
--PRINT(dbo.GetDisciplineID(N'Hardware%'));
----EXEC sp_PrintScheduleForGroup N'PV_319';
--PRINT(dbo.CountSpentLessons(N'PV_319', N'Процедурное программирвоание'));
--PRINT(dbo.GetNewYearHolidaysStartDate(2023));
--PRINT(dbo.GetSummerHolidaysStart(2023));
--PRINT(dbo.GetHolidaysDuration(N'Летние%'));

--PRINT('---------------------------');
--PRINT(dbo.GetHolidayStartDate(N'Летние%', 2025));
--PRINT(dbo.GetEasterDate(2004));
--PRINT(dbo.GetLastDateForGroup(N'PV_319'));
--DECLARE @date AS DATE = (SELECT MAX([date]) FROM Schedule WHERE [group]=dbo.GetGroupID(N'PV_319'));
--PRINT(@date);

DECLARE @group		AS NVARCHAR(10) = N'PV_319';
DECLARE @date		AS DATE		=	dbo.GetLastDateForGroup(@group);
WHILE   @date < '2025-01-01'
BEGIN
	PRINT (@date);
	PRINT (DATENAME(WEEKDAY, @date));
	PRINT ('----------------------');
	SET	   @date = dbo.GetNextLearningDateFor(@group);
END