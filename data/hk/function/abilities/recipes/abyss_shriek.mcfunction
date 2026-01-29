tag @s remove hk.howling_wraiths

tag @s add hk.abyss_shriek
clear @s poisonous_potato[item_model="hk:spells/abyss_shriek"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Abyss Shriek","color":"green"}]}
tellraw @s {"translate": "hk.item.lore.abyss_shriek.3"}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~