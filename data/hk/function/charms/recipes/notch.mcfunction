clear @s poisonous_potato[item_model="hk:charms/charm_notch"] 1
tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "Charm Notch","color":"green"}]}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~
scoreboard players add @s hk.charms.notches 1
effect give @s saturation 1 255 true