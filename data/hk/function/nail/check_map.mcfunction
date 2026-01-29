advancement revoke @s only hk:use_map

execute at @s run loot spawn ~ ~ ~ loot hk:collectible/map

execute if data entity @s LastDeathLocation run tellraw @s {"translate":"hk.msg.map","with":[{"color":"light_purple","nbt":"LastDeathLocation.pos[0]","source":"entity","entity":"@s"},{"color":"light_purple","nbt":"LastDeathLocation.pos[1]","source":"entity","entity":"@s"},{"color":"light_purple","nbt":"LastDeathLocation.pos[2]","source":"entity","entity":"@s"}]}
