execute if entity @s[tag=hk.dash.cooldown] run return fail

tp @s ~ ~ ~ ~ 0
execute store result score @s hk.cdash.raycast run data get entity @s Rotation[1]
execute unless score @s hk.cdash.raycast matches -45..6 run return fail

# Tag the raycaster
tag @s add hk.cdash.raycaster

# Set the maximum distance
scoreboard players set @s hk.cdash.raycast 100

# Begin the raycast function
execute at @s anchored eyes positioned ^ ^ ^1 run function hk:abilities/cdash/raycast

execute positioned ~ ~0.25 ~ run particle entity_effect{color:[0.600,0.400,0.800,1.00]} ^ ^ ^-0.25 0.5 0.5 0.5 0.15 10 force
playsound minecraft:entity.breeze.wind_burst player @a ^ ^ ^-0.25

# Remove the tag from the raycaster
