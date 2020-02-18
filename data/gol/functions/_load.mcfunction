#define entity $gol.step Step

scoreboard objectives add gol.coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add gol.var dummy
scoreboard objectives add step trigger

scoreboard players enable @a step

execute unless score $gol.step gol.var = $gol.step gol.var run scoreboard players set $gol.step gol.var 2147483647

schedule function gol:_init/detect_coas 2t