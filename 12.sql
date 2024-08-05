WITH least_expensive_per_hit AS (
    SELECT player.id
    FROM (
        SELECT players.id, ROUND(salaries.salary / performances.H, 2) AS "dollars per hit"
        FROM salaries
        JOIN performances ON salaries.player_id = performances.player_id
        JOIN players ON salaries.player_id = players.id
        WHERE salaries.year = 2001 AND performances.H > 0
        ORDER BY "dollars per hit" ASC
        LIMIT 10
    )
),
least_expensive_per_rbi AS (
    SELECT player."id"
    FROM (
        SELECT players.id, ROUND(salaries.salary / performances.RBI, 2) AS "dollars per rbi"
        FROM salaries
        JOIN performances ON salaries.player_id = performances.player_id
        JOIN players ON salaries.player_id = players.id
        WHERE salaries.year = 2001 AND performances.RBI > 0
        ORDER BY "dollars per rbi" ASC
        LIMIT 10
    )
)
SELECT DISTINCT players.first_name, players.last_name
FROM players
WHERE players.id IN (SELECT player.id FROM least_expensive_per_hit)
   OR players.id IN (SELECT player.id FROM least_expensive_per_rbi)
ORDER BY players.id ASC;
