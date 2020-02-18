execute as @s[tag=gol.undead] at @s run function gol:_run/kill_cell
execute as @s[tag=gol.hibernate] at @s run function gol:_run/revive_cell

tag @s remove gol.process