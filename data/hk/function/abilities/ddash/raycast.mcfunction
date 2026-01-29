# Remove one from the raycast limit
scoreboard players remove @s hk.ddash.raycast 1

particle minecraft:cloud ^ ^ ^-0.25 0.5 0.5 0.5 0.15 10 force

# Check if the raycast has hit an entity's hitbox
execute unless block ^ ^ ^ #minecraft:replaceable if score @s hk.ddash.raycast matches 1.. run return run function hk:abilities/ddash/damage_ddash


tp @s ~ ~ ~ ~ 90
effect give @s slow_falling 1 1 true

# If the raycast has not hit a wall, and the limit has not been reached, move the hk.ddash.raycast forward and run the function again
execute if score @s hk.ddash.raycast matches 0 run function hk:abilities/ddash/damage_ddash
execute if block ~ ~ ~ #minecraft:replaceable if score @s hk.ddash.raycast matches 1.. run scoreboard players set @s hk.ddash.raycast.cool 2