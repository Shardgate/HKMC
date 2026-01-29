# Remove one from the raycast limit
scoreboard players remove @s hk.cdash.raycast 1

particle entity_effect{color:[0.600,0.400,0.800,1.00]} ^ ^ ^-0.25 0.5 0.5 0.5 0.15 10 force

# Check if the raycast has hit an entity's hitbox
execute unless block ~ ~ ~ #minecraft:replaceable if score @s hk.cdash.raycast matches 1.. run return run function hk:abilities/cdash/damage_cdash

tp @s ~ ~ ~ ~ 0
effect give @s slow_falling 1 1 true

# If the raycast has not hit a wall, and the limit has not been reached, move the hk.cdash.raycast forward and run the function again
execute if score @s hk.cdash.raycast matches 0 run function hk:abilities/cdash/damage_cdash
execute if block ~ ~ ~ #minecraft:replaceable if score @s hk.cdash.raycast matches 1.. run scoreboard players set @s hk.cdash.raycast.cool 2