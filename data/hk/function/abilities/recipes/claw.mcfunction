tag @s add hk.mantis_claw
clear @s poisonous_potato[item_model="hk:abilities/mantis_claw"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Mantis Claw","color":"green"}]}
tellraw @s {"translate": "hk.item.lore.mantis_claw.3"}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~