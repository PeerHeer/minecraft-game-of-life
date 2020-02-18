# scheduled function (every tick)
    # Execute as all living cells
      execute as @e[tag=gol.living] at @s run function gol:_run/process_living_cell
        # For all 8 neighboring cells, check if (white_concrete && not already processed by a different cell), then check the neighboring cells of that cell
        execute positioned ~0 ~ ~0 if block ~ ~ ~ minecraft:white_concrete unless entity @e[distance=..0.1, tag=gol.hibernate, limit=1] run function gol:_run/check_neighbors/dead_cell
            # Reset the $gol.neighbors.alive.count score.
            scoreboard players set $gol.neighbors.alive.count gol.var 0
            # Check the +x, -x, +z and -z blocks of the empty cell neighborhood. Add to a score if the block is black_concrete.
            execute if block ~0 ~ ~0 minecraft:black_concrete run scoreboard players add $gol.neighbors.alive.count gol.var 1
            function gol:_run/check_neighbors/blocks/next_block
            # Check the other blocks, terminate when 4 blocks have been found or all blocks have been processed.
            execute if block ~0 ~ ~0 minecraft:black_concrete run scoreboard players add $gol.neighbors.alive.count gol.var 1
            execute unless score $gol.neighbors.alive.count gol.var matches 4 run function gol:_run/check_neighbors/blocks/nex_block
            # If the amount of neighbors is exactly 3, summon a hibernating marker, which will wake up at the end of the scheduled function.
            execute if score $gol.neighbors.alive.count gol.var matches 3 run function gol:_run/hibernate_cell
        # Now do the same checks as above for the living cell.
            # If the amount of neighbors is not  2..3, make the marker undead. It will die at the end of the scheduled function.
    # Execute as all cells that are undead or hibernating
    execute as @e[tag=gol.process] at @s run function gol:_run/process_new_cell
        # Do the appropriate actions
# Loop the schedule function.