function gol:_run/check_neighbors/check_neighbors_start
execute unless score $gol.neighbors.alive.count gol.var matches 2..3 run function gol:_run/undead_cell