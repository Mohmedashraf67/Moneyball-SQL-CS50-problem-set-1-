-- select  * from "players"
-- join "salaries" on "players"."id"="salaries"."player_id"
-- limit 10
-- round(avg("salary") ,2) as "average salary"
select "year",round(avg("salary") ,2) as "average salary" from "salaries" group by "year" order by "years" desc


