# Remove one from the raycast limit
scoreboard players remove @s hk.sdash.raycast 1

particle entity_effect{color:[0.000,0.000,0.000,1.00]} ^ ^ ^-0.25 0.5 0.5 0.5 0.15 10 force

# Check if the raycast has hit an entity's hitbox
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=#hk:hostile,tag=!hk.sdash.raycaster,distance=..1, tag=!smithed.entity] if score @s hk.sdash.raycast matches 1.. run return run function hk:abilities/sdash/damage_sdash
execute unless block ~ ~ ~ #minecraft:replaceable if score @s hk.sdash.raycast matches 1.. run return run function hk:abilities/sdash/damage_sdash

tp @s ~ ~-1.5 ~
effect give @s slow_falling 1 1 true

# If the raycast has not hit a wall, and the limit has not been reached, move the hk.sdash.raycast forward and run the function again
execute if score @s hk.sdash.raycast matches 0 run function hk:abilities/sdash/damage_sdash
execute if block ~ ~ ~ #minecraft:replaceable if score @s hk.sdash.raycast matches 1.. run scoreboard players set @s hk.sdash.raycast.cool 2