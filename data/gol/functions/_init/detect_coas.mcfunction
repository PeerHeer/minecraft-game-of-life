# Check if a player right clicked with the coas.
execute as @a[scores={gol.coas=1..}] at @s run function gol:_init/process_coas
execute as @a[scores={step=1..}] run function gol:_init/step/check_if_running

# Re-schedule the function.
schedule function gol:_init/detect_coas 2t