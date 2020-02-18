scoreboard players set #gol.hit gol.var 1

execute if block ~ ~ ~ minecraft:white_concrete if predicate gol:place_cell run function gol:_init/actions/set_living_cell
execute if block ~ ~ ~ minecraft:black_concrete if predicate gol:remove_cell run function gol:_init/actions/remove_living_cell
execute if predicate gol:eraser run function gol:_init/actions/erase_cells