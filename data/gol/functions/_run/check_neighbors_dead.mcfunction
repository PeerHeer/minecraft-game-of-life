# Check if there are 3 neighbors. If so, make the cell hibernate and alive after everything has been processed.
execute store result score $gol.neighbors.alive.count gol.var if entity @e[tag=gol.living, distance=..1.5, limit=4]
execute if score $gol.neighbors.alive.count gol.var matches 3 run function gol:_run/hibernate_cell