# Tag the raycaster
execute as @n[tag=hk.spell.shade.spirit,distance=..2] run tag @s add hk.shade.raycaster

# Set the maximum distance
execute as @n[tag=hk.spell.shade.spirit,distance=..2] run scoreboard players set @s hk.shade.raycast 16

# Begin the raycast function
execute as @n[tag=hk.spell.shade.spirit,distance=..2] run execute at @s anchored eyes positioned ^ ^ ^1 run function hk:abilities/shade/raycast

playsound minecraft:entity.breeze.wind_burst player @a ^ ^ ^-0.25

# Remove the tag from the raycaster
