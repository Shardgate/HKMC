execute if items entity @s contents minecraft:poisonous_potato[count=1] at @s if items entity @n[type=item,distance=0.01..0.2] contents iron_sword[custom_data~{hk:{nail_upgrade:0b}}] run function hk:nail/summon_nail {nail:sharpened_nail}

execute if items entity @s contents minecraft:poisonous_potato[count=1] at @s if items entity @n[type=item,distance=0.01..0.2] contents iron_sword[custom_data~{hk:{nail_upgrade:1b}}] run function hk:nail/summon_nail {nail:channelled_nail}

execute if items entity @s contents minecraft:poisonous_potato[count=2] at @s if items entity @n[type=item,distance=0.01..0.2] contents iron_sword[custom_data~{hk:{nail_upgrade:2b}}] run function hk:nail/summon_nail {nail:coiled_nail}

execute if items entity @s contents minecraft:poisonous_potato[count=3] at @s if items entity @n[type=item,distance=0.01..0.2] contents iron_sword[custom_data~{hk:{nail_upgrade:3b}}] run function hk:nail/summon_nail {nail:pure_nail}

