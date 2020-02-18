execute as @e[tag=gol.living] at @s run function gol:_run/process_living_cell
execute as @e[tag=gol.undead] at @s run function gol:_run/kill_cell
execute as @e[tag=gol.hibernate] at @s run function gol:_run/revive_cell

scoreboard players remove $gol.step gol.var 1

execute if score $gol.step gol.var matches 1.. run schedule function gol:_run/main 1t
execute if score $gol.step gol.var matches ..0 run function gol:stop