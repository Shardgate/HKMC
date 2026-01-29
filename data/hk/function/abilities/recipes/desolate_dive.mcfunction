tag @s add hk.desolate_dive
clear @s poisonous_potato[item_model="hk:spells/desolate_dive"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Desolate Dive","color":"green"}]}
tellraw @s {"translate": "hk.item.lore.desolate_dive.3"}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~