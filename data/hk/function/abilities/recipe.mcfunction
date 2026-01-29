execute at @s unless items entity @s container.* poisonous_potato[minecraft:custom_data~{hk:{type:"abilities"}}] run return fail

execute at @s if items entity @s[tag=!hk.monarch_wings] container.* poisonous_potato[item_model="hk:abilities/monarch_wings"] run function hk:abilities/recipes/wings
execute at @s if items entity @s[tag=!hk.shade_cloak,tag=hk.mothwing_cloak] container.* poisonous_potato[item_model="hk:abilities/shade_cloak"] run function hk:abilities/recipes/shade
execute at @s if items entity @s[tag=!hk.mothwing_cloak,tag=!hk.shade_cloak] container.* poisonous_potato[item_model="hk:abilities/mothwing_cloak"] run function hk:abilities/recipes/mothwing
execute at @s if items entity @s[tag=!hk.ismas_tear] container.* poisonous_potato[item_model="hk:abilities/ismas_tear"] run function hk:abilities/recipes/tear

execute at @s if items entity @s[tag=!hk.crystal_heart] container.* poisonous_potato[item_model="hk:abilities/crystal_heart"] run function hk:abilities/recipes/crystal
execute at @s if items entity @s[tag=!hk.mantis_claw] container.* poisonous_potato[item_model="hk:abilities/mantis_claw"] run function hk:abilities/recipes/claw
