tag @s add hk.cyclone_slash
clear @s poisonous_potato[item_model="hk:nail_arts/cyclone_slash"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Cyclone Slash","color":"green"}]}
tellraw @s {"translate": "hk.item.lore.cyclone_slash.3"}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~