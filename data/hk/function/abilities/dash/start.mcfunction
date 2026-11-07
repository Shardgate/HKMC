execute if score @s hk.dash.raycast.cool2 matches 1.. run return fail

execute if entity @s[tag=hk.dash.cooldown] run return fail

execute store result score @s hk.dash.raycast run data get entity @s Rotation[1]
execute unless score @s hk.dash.raycast matches -45..45 run return fail

# Tag the raycaster
tag @s add hk.dash.raycaster

# Set the maximum distance
scoreboard players set @s hk.dash.raycast 4

execute unless score @s hk.charms.dashmaster.active matches 1.. run scoreboard players set @s hk.dash.raycast.cool2 12
execute if score @s hk.charms.dashmaster.active matches 1.. run scoreboard players set @s hk.dash.raycast.cool2 8

# Begin the raycast function
execute at @s anchored feet rotated ~ 0 positioned ^ ^ ^1 run function hk:abilities/dash/raycast

execute positioned ~ ~0.25 ~ run particle minecraft:cloud ^ ^ ^-0.25 0.5 0.5 0.5 0.15 10 force
playsound minecraft:entity.breeze.wind_burst player @a ^ ^ ^-0.25

# Remove the tag from the raycaster
