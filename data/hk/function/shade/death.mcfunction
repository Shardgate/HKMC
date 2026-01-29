function hk:shade/summon
execute as @n[tag=hk.shade.display] run function hk:shade/new_marker
clear @s
loot give @s[tag=hk.old_nail] loot hk:nail/old_nail