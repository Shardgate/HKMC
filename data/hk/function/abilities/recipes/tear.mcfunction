tag @s add hk.ismas_tear
clear @s poisonous_potato[item_model="hk:abilities/ismas_tear"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Isma's Tear","color":"green"}]}
tellraw @s {"translate": "hk.item.lore.ismas_tear.2"}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~