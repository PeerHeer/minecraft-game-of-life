execute unless block ~ ~ ~ #gol:blocks run function gol:_init/raycast/hit_block
scoreboard players add #gol.distance gol.var 1
execute if score #gol.hit gol.var matches 0 if score #gol.distance gol.var matches 501 run scoreboard players remove $gol.coas.stage gol.var 1
execute if score #gol.hit gol.var matches 0 if score #gol.distance gol.var matches ..500 positioned ^ ^ ^0.1 run function gol:_init/raycast/ray