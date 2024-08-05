SELECT salaries.salary  FROM salaries
JOIN performances ON salaries.player_id = performances.player_id
WHERE salaries.year=2001 and performances.HR =(    SELECT MAX(HR)
    FROM performances
    WHERE year = 2001);


