# Remove one from the hk.dash_slash.raycast limit
scoreboard players remove @s hk.dash_slash.raycast 1

# Optional: display a particle
particle minecraft:cloud ^ ^ ^-0.25 0.5 0.5 0.5 0.15 10 force
particle sweep_attack ^ ^ ^

# Check if the hk.dash_slash.raycast has hit an entity's hitbox
execute unless block ~ ~ ~ #minecraft:replaceable if score @s hk.dash_slash.raycast matches 1.. run return run function hk:abilities/dash_slash/hit

effect give @s slow_falling 1 1 true

tp @s ~ ~ ~ ~ 0

# If the hk.dash_slash.raycast has not hit a wall, and the limit has not been reached, move the hk.dash_slash.raycast forward and run the function again
execute at @s if score @s hk.dash_slash.raycast matches 0 run function hk:abilities/dash_slash/hit
execute if block ~ ~ ~ #minecraft:replaceable if score @s hk.dash_slash.raycast matches 1.. positioned ~ ~-0.25 ~ positioned ^ ^ ^1 run function hk:abilities/dash_slash/raycast
