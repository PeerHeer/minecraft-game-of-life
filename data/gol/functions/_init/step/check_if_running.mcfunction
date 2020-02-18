execute if score $gol.status gol.var matches 1 run tellraw @s [{"text":"[ERROR] ", "color":"red"}, {"text":"Please stop the current simulation first.", "color":"white"}]
execute if score $gol.status gol.var matches 0 run function gol:_init/step/set_step

scoreboard players reset @s step
scoreboard players enable @s step