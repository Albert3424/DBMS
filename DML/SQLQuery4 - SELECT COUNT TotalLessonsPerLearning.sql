USE PV_319_Import;
GO

SELECT
		discipline_name		AS N'Дисциплина',
		number_of_lessons   AS N'Количество занятий'
FROM	Directions, Disciplines, DisciplinesDirectionsRelation
WHERE	direction = direction_id
AND		discipline = discipline_id
AND     direction_name LIKE N'%Дизайн'
;
GO

SELECT
			[Направление обучения]	=	direction_name,
			[Количество занятий]	=	SUM(number_of_lessons)
FROM		Disciplines, Directions, DisciplinesDirectionsRelation
WHERE		direction	=	direction_id
AND			discipline	=	discipline_id
GROUP BY	direction_name;