# Remove one from the raycast limit
scoreboard players remove @s hk.dadash.raycast 1

particle entity_effect{color:[0.000,0.000,0.000,1.00]} ^ ^ ^-0.25 0.5 0.5 0.5 0.15 10 force
# Check if the raycast has hit an entity's hitbox
execute unless block ^ ^ ^ #minecraft:replaceable if score @s hk.dadash.raycast matches 1.. run return run function hk:abilities/dadash/damage_dadash

tp @s ~ ~ ~ ~ 90
effect give @s slow_falling 1 1 true

# If the raycast has not hit a wall, and the limit has not been reached, move the hk.dadash.raycast forward and run the function again
execute if score @s hk.dadash.raycast matches 0 run function hk:abilities/dadash/damage_dadash
execute if block ~ ~ ~ #minecraft:replaceable if score @s hk.dadash.raycast matches 1.. run scoreboard players set @s hk.dadash.raycast.cool 2