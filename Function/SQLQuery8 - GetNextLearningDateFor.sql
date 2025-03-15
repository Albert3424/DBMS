USE PV_319_Import;
GO

ALTER FUNCTION dbo.GetNextLearningDateFor(@group_name AS NVARCHAR(10))RETURNS DATE
BEGIN
	DECLARE @last_spent_date		AS DATE	   = dbo.GetLastDateForGroup(@group_name);
	DECLARE @last_spent_day			AS TINYINT = DATEPART(WEEKDAY, @last_spent_date)
	DECLARE @interval			    AS TINYINT = 
	IIF
	(
	@last_spent_day = dbo.GetMaxLearningDayFor(@group_name) + 1,
	@last_spent_date - dbo.GetNextLearningDayFor(@group_name) - 2,
	dbo.GetNextLearningDayFor(@group_name) + 1 - @last_spent_date
	);
	RETURN DATEADD(DAY, @interval, @last_spent_date);
END