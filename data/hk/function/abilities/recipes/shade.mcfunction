tag @s remove hk.mothwing_cloak
tag @s remove hk.mothwing_cloak.effect

tag @s add hk.shade_cloak
clear @s poisonous_potato[item_model="hk:abilities/shade_cloak"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Shade Cloak","color":"green"}]}
tellraw @s {"translate": "hk.item.lore.shade_cloak.2"}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~