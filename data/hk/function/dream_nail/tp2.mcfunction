$execute positioned $(x) $(y) $(z) align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ ~ 0

$execute positioned $(x) $(y) $(z) align xyz positioned ~0.5 ~ ~0.5 if entity @s[gamemode=survival] at @s run loot spawn ~ ~ ~ loot hk:nail/dream_nail
$execute positioned $(x) $(y) $(z) align xyz positioned ~0.5 ~ ~0.5 if entity @s[gamemode=adventure] at @s run loot spawn ~ ~ ~ loot hk:nail/dream_nail

$playsound minecraft:entity.player.teleport player @s $(x) $(y) $(z)

$tellraw @s {"translate": "hk.dreamgate.warp","with": [{"text": "$(x)","color":"light_purple"},{"text": "$(y)","color":"light_purple"},{"text": "$(z)","color":"light_purple"}]}
