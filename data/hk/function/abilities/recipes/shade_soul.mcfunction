tag @s remove hk.vengeful_spirit

tag @s add hk.shade_soul
clear @s poisonous_potato[item_model="hk:spells/shade_soul"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Shade Soul","color":"green"}]}
tellraw @s {"translate": "hk.item.lore.shade_soul.3"}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~