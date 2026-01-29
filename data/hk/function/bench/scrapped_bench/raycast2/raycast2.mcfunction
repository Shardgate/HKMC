scoreboard players remove @s hk.bench.raycast2 1

execute if block ~ ~ ~ vault[facing=south] run function hk:bench/place/face_south
execute if block ~ ~ ~ vault[facing=north] run function hk:bench/place/face_north
execute if block ~ ~ ~ vault[facing=east] run function hk:bench/place/face_east
execute if block ~ ~ ~ vault[facing=west] run function hk:bench/place/face_west

execute if block ~ ~ ~ #minecraft:replaceable if score @s hk.bench.raycast2 matches 1.. positioned ^ ^ ^0.1 run function hk:bench/raycast2/raycast2