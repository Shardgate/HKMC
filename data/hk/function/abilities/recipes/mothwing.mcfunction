tag @s add hk.mothwing_cloak
clear @s poisonous_potato[item_model="hk:abilities/mothwing_cloak"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Mothwing Cloak","color":"green"}]}
tellraw @s {"translate": "hk.item.lore.mothwing_cloak.2"}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~