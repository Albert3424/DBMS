USE PV_319_Import;
GO

UPDATE	Holidays	SET duration = 14	WHERE holiday_id = 1;
UPDATE	Holidays	SET duration = 3	WHERE holiday_id = 2;
UPDATE	Holidays	SET duration = 3	WHERE holiday_id = 3;
UPDATE	Holidays	SET duration = 3	WHERE holiday_id = 4;
UPDATE	Holidays	SET duration = 10	WHERE holiday_id = 5;
UPDATE	Holidays	SET duration = 14	WHERE holiday_id = 6;
UPDATE	Holidays	SET duration = 4	WHERE holiday_id = 7;

SELECT * FROM Holidays;