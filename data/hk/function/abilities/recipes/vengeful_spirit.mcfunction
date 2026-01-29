tag @s add hk.vengeful_spirit
clear @s poisonous_potato[item_model="hk:spells/vengeful_spirit"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Vengeful Spirit","color":"green"}]}
tellraw @s {"translate": "hk.item.lore.vengeful_spirit.3"}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~