
select "year","salary" from "salaries" where "player_id"=(select "id" from "players" where "first_name" like "%Cal%" and "last_name" like "%Ripken%")
order by "year" desc
