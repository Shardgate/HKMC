execute if entity @s[tag=hk.dash.cooldown] run return fail

tp @s ~ ~ ~ ~ 0
execute store result score @s hk.dadash.raycast run data get entity @s Rotation[1]
execute unless score @s hk.dadash.raycast matches -45..6 run return fail

execute at @s anchored eyes positioned ^ ^ ^5 unless block ~ ~ ~ #minecraft:replaceable run return fail

# Tag the raycaster
tag @s add hk.dadash.raycaster

# Set the maximum distance
scoreboard players set @s hk.dadash.raycast 330

# Begin the raycast function
execute at @s anchored eyes positioned ^ ^ ^1 run function hk:abilities/dadash/raycast

execute positioned ~ ~0.25 ~ run particle entity_effect{color:[0.000,0.000,0.000,1.00]} ^ ^ ^-0.25 0.5 0.5 0.5 0.15 10 force
playsound minecraft:entity.breeze.wind_burst player @a ^ ^ ^-0.25

# Remove the tag from the raycaster
