USE PV_319_Import;
SET DATEFIRST 1;
GO

EXEC sp_ScheduleForBaseStacionarGroup N'PV_319', N'Процедурное программирование %', N'Ковтун', N'2023-11-23', '18:30', 2,4,6,2,1;