execute if items entity @s contents minecraft:poisonous_potato[custom_data~{hk:{type:"ore"}}] at @s if entity @n[type=item,distance=0.01..0.2] align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ anvil run function hk:nail/recipe

execute if score .global hk.config.ability_wheel.clear matches 1.. if items entity @s contents poisonous_potato[custom_data~{hk:{type:"ability_wheel"}}] run kill @s

