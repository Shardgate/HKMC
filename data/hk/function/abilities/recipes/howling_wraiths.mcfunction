tag @s add hk.howling_wraiths
clear @s poisonous_potato[item_model="hk:spells/howling_wraiths"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Howling Wraiths","color":"green"}]}
tellraw @s {"translate": "hk.item.lore.howling_wraiths.3"}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~