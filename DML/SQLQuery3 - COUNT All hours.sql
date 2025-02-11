USE PV_319_Import;
GO

DECLARE @startDate   DATE  = '15.10.2024';
DECLARE @endDate     DATE  = '10.02.2025';
DECLARE @currentDate DATE =  @startDate;

WHILE (@currentDate <= @endDate)
BEGIN
    IF DATENAME(WEEKDAY, @currentDate) IN ('Tuesday', 'Thursday', 'Saturday')
    BEGIN
        INSERT INTO Test_Schedule (lesson_id, [group], discipline, teacher, date, time)
        VALUES (1, 319, 2, 1, @currentDate, '20:30'),
               (2, 319, 2, 1, @currentDate, '20:30');
    END

    SET @currentDate = DATEADD(DAY, 1, @currentDate);
END

SELECT * FROM Test_Schedule;

--TRUNCATE TABLE Test_Schedule;
