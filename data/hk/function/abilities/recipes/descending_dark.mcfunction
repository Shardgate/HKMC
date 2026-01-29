tag @s remove hk.desolate_dive

tag @s add hk.descending_dark
clear @s poisonous_potato[item_model="hk:spells/descending_dark"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Descending Dark","color":"green"}]}
tellraw @s {"translate": "hk.item.lore.descending_dark.3"}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~