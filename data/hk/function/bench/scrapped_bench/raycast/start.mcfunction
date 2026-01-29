tag @s add hk.bench.raycaster

scoreboard players set @s hk.bench.raycast 100

execute at @s anchored eyes positioned ^ ^ ^.1 run function hk:bench/raycast/raycast

tag @s remove hk.bench.raycaster