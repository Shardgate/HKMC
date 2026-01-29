tag @s add hk.bench.raycast2er

scoreboard players set @s hk.bench.raycast2 100

execute at @s anchored eyes positioned ^ ^ ^.1 run function hk:bench/raycast2/raycast2

tag @s remove hk.bench.raycast2er
execute at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace minecraft:vault