tag @s add hk.crystal_heart
clear @s poisonous_potato[item_model="hk:abilities/crystal_heart"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Crystal Heart","color":"green"}]}
tellraw @s {"translate": "hk.item.lore.crystal_heart.3"}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~