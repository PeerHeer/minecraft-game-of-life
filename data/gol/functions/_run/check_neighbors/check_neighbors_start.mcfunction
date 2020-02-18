#define entity $gol.neighbors.alive.count Amount of neighbors that are alive.

scoreboard players set $gol.neighbors.alive.count gol.var 0
function gol:_run/check_neighbors/blocks/block_x_pos