execute if score @s hk.sdash.raycast.cool2 matches 1.. run return fail

execute if entity @s[tag=hk.dash.cooldown] run return fail

execute store result score @s hk.sdash.raycast run data get entity @s Rotation[1]
execute unless score @s hk.sdash.raycast matches -45..45 run return fail

# Tag the raycaster
tag @s add hk.sdash.raycaster

# Set the maximum distance
scoreboard players set @s hk.sdash.raycast 4

scoreboard players set @s hk.sdash.raycast.cool2 15

# Begin the raycast function
execute at @s anchored feet rotated ~ 0 positioned ^ ^ ^1 run function hk:abilities/sdash/raycast

execute positioned ~ ~0.25 ~ run particle entity_effect{color:[0.000,0.000,0.000,1.00]} ^ ^ ^-0.25 0.5 0.5 0.5 0.15 10 force
playsound minecraft:entity.breeze.wind_burst player @a ^ ^ ^-0.25

# Remove the tag from the raycaster
