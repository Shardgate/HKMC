execute if score @s hk.monarch_wings.jump.cool3 matches 1.. run return fail
execute if entity @s[tag=hk.sneaking] run return fail

attribute @s minecraft:gravity modifier add hk:double_jump -2 add_multiplied_total
attribute @s minecraft:safe_fall_distance modifier add hk:double_jump 8 add_value
scoreboard players set @s hk.monarch_wings.jump.cool2 13
scoreboard players set @s hk.monarch_wings.jump.cool3 40

particle minecraft:cloud ~ ~-0.75 ~ 0.5 0.5 0.5 0.15 10 force
playsound minecraft:entity.breeze.wind_burst player @a ~ ~-0.75 ~

tag @s remove hk.monarch_wings.jump
