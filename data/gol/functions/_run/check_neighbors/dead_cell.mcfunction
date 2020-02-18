function gol:_run/check_neighbors/check_neighbors_start
execute if score $gol.neighbors.alive.count gol.var matches 3 run function gol:_run/hibernate_cell