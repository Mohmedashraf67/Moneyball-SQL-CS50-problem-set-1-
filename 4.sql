-- select "first_name","last_name","salary" from "salaries"
-- join "players" on "salaries"."player_id"="players"."id"
-- where "salaries"."year"=2001
-- order by "salary" asc, "first_name","last_name","players"."id"
-- limit 50

SELECT "players"."first_name", "players"."last_name", "salaries"."salary" FROM "salaries"
JOIN "players" ON "players"."id"="salaries"."player_id"
WHERE "salaries"."year" = 2001
ORDER BY salaries.salary ASC, players.first_name ASC, players.last_name ASC, players.id ASC
LIMIT 50;
