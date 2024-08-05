SELECT teams.name, ROUND(AVG(salaries.salary), 2) AS "average salary"
FROM teams
JOIN performances ON teams.id = performances.team_id
JOIN salaries ON performances.player_id = salaries.player_id
WHERE salaries.year = 2001
GROUP BY teams.name
ORDER BY "average salary" ASC
LIMIT 5;
