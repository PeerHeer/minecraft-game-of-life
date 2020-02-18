execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:white_concrete unless entity @e[distance=..0.1, tag=gol.hibernate, limit=1] run function gol:_run/check_neighbors_dead
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:white_concrete unless entity @e[distance=..0.1, tag=gol.hibernate, limit=1] run function gol:_run/check_neighbors_dead
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:white_concrete unless entity @e[distance=..0.1, tag=gol.hibernate, limit=1] run function gol:_run/check_neighbors_dead
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:white_concrete unless entity @e[distance=..0.1, tag=gol.hibernate, limit=1] run function gol:_run/check_neighbors_dead
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:white_concrete unless entity @e[distance=..0.1, tag=gol.hibernate, limit=1] run function gol:_run/check_neighbors_dead
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:white_concrete unless entity @e[distance=..0.1, tag=gol.hibernate, limit=1] run function gol:_run/check_neighbors_dead
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:white_concrete unless entity @e[distance=..0.1, tag=gol.hibernate, limit=1] run function gol:_run/check_neighbors_dead
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:white_concrete unless entity @e[distance=..0.1, tag=gol.hibernate, limit=1] run function gol:_run/check_neighbors_dead

execute store result score $gol.neighbors.alive.count gol.var if entity @e[tag=gol.living, distance=0.1..1.5, limit=4]
execute unless score $gol.neighbors.alive.count gol.var matches 2..3 run tag @s add gol.undead