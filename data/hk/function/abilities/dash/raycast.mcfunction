# Remove one from the raycast limit
scoreboard players remove @s hk.dash.raycast 1

particle minecraft:cloud ^ ^ ^-0.25 0.5 0.5 0.5 0.15 10 force

# Check if the raycast has hit an entity's hitbox
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=#hk:hostile,tag=!hk.dash.raycaster,distance=..1] if score @s hk.dash.raycast matches 1.. run return run function hk:abilities/dash/damage_dash
execute unless block ~ ~ ~ #minecraft:replaceable if score @s hk.dash.raycast matches 1.. run return run function hk:abilities/dash/damage_dash

tp @s ~ ~-1.5 ~
effect give @s slow_falling 1 1 true

# If the raycast has not hit a wall, and the limit has not been reached, move the hk.dash.raycast forward and run the function again
execute if score @s hk.dash.raycast matches 0 run function hk:abilities/dash/damage_dash
execute if block ~ ~ ~ #minecraft:replaceable if score @s hk.dash.raycast matches 1.. run scoreboard players set @s hk.dash.raycast.cool 2