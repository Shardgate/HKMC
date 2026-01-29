execute if entity @s[tag=hk.dash.cooldown] run return fail

execute at @s run tp @s ~ ~ ~ ~ 0

execute store result score @s hk.dash_slash.raycast run data get entity @s Rotation[1]
execute unless score @s hk.dash_slash.raycast matches -45..6 run return fail

# Tag the hk.dash_slash.raycaster
tag @s add hk.dash_slash.raycaster

# Set the maximum distance
scoreboard players set @s hk.dash_slash.raycast 6

# Begin the raycast function

execute at @s anchored eyes rotated ~ 0 positioned ^ ^ ^-1 positioned ~ ~-2 ~ run function hk:nail_arts/gslash

execute at @s anchored eyes rotated ~ 0 positioned ^ ^ ^1 run function hk:abilities/dash_slash/raycast

execute positioned ~ ~0.25 ~ run particle minecraft:cloud ^ ^ ^-0.25 0.5 0.5 0.5 0.15 10 force
playsound minecraft:entity.breeze.wind_burst player @a ^ ^ ^-0.25

# Remove the tag from the hk.dash_slash.raycaster
tag @s remove hk.dash_slash.raycaster