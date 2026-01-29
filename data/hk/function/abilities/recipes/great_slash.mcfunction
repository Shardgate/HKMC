tag @s add hk.great_slash
clear @s poisonous_potato[item_model="hk:nail_arts/great_slash"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Great Slash","color":"green"}]}
tellraw @s {"translate": "hk.item.lore.great_slash.3"}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~