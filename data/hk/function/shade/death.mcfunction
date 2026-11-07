function hk:shade/summon
execute as @n[tag=hk.shade.display] run function hk:shade/new_marker
clear @s
loot give @s loot hk:ability_wheel