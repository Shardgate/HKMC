# Tag the raycaster
execute as @n[tag=hk.spell.venge.spirit,distance=..2] run tag @s add hk.venge.raycaster

# Set the maximum distance
execute as @n[tag=hk.spell.venge.spirit,distance=..2] run scoreboard players set @s hk.venge.raycast 16

# Begin the raycast function
execute as @n[tag=hk.spell.venge.spirit,distance=..2] run execute at @s anchored eyes positioned ^ ^ ^1 run function hk:abilities/venge/raycast

playsound minecraft:entity.breeze.wind_burst player @a ^ ^ ^-0.25

# Remove the tag from the raycaster
