# Set a living cell by summoning an aec and setting black concrete.
execute align xyz run summon minecraft:area_effect_cloud ~.5 ~.5 ~.5 {Tags:["gol.living"], Age:-2147483648, Duration:-1, WaitTime:-2147483648}
setblock ~ ~ ~ minecraft:black_concrete