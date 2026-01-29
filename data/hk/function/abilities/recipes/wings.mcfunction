tag @s add hk.monarch_wings
clear @s poisonous_potato[item_model="hk:abilities/monarch_wings"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Monarch Wings","color":"green"}]}
tellraw @s {"translate": "hk.item.lore.monarch_wings.2"}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~