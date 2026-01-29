tag @s add hk.dash_slash
clear @s poisonous_potato[item_model="hk:nail_arts/dash_slash"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Dash Slash","color":"green"}]}
tellraw @s {"translate": "hk.item.lore.dash_slash.2"}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~