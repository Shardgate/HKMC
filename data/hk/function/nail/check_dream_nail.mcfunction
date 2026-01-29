execute if entity @s[gamemode=survival] unless entity @s[x_rotation=-90] at @s run loot spawn ~ ~ ~ loot hk:nail/dream_nail
execute if entity @s[gamemode=adventure] unless entity @s[x_rotation=-90] at @s run loot spawn ~ ~ ~ loot hk:nail/dream_nail

advancement revoke @s only hk:use_dream_nail
execute at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ #air run return fail
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ #air run return fail
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~1 ~ #air run return fail

execute at @s align xyz positioned ~0.5 ~ ~0.5 if entity @s[x_rotation=90] run function hk:dream_nail/set_gate
execute at @s align xyz positioned ~0.5 ~ ~0.5 if entity @s[x_rotation=-90] run function hk:dream_nail/tp_gate

