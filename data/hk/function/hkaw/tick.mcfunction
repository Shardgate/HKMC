execute unless score @s hk.charms.quick_focus.active matches 1.. unless score @s hk.charms.deep_focus.active matches 1.. if score @s hkaw_sword_timer matches 17 run scoreboard players set @s hkaw_sword_timer 58
execute if score @s hk.charms.quick_focus.active matches 1.. unless score @s hk.charms.deep_focus.active matches 1.. if score @s hkaw_sword_timer matches 11 run scoreboard players set @s hkaw_sword_timer 58
execute unless score @s hk.charms.quick_focus.active matches 1.. if score @s hk.charms.deep_focus.active matches 1.. if score @s hkaw_sword_timer matches 31 run scoreboard players set @s hkaw_sword_timer 58
execute if score @s hk.charms.quick_focus.active matches 1.. if score @s hk.charms.deep_focus.active matches 1.. if score @s hkaw_sword_timer matches 24 run scoreboard players set @s hkaw_sword_timer 58

#Reseting Scoreboards
tag @s remove hkaw_has_sword
scoreboard players remove @s[tag=!hkaw_charging,scores={hkaw_sword_timer=2..59}] hkaw_sword_timer 2
scoreboard players remove @s[tag=!hkaw_charging,scores={hkaw_sword_timer=1}] hkaw_sword_timer 1
tag @s remove hkaw_charging

#Detecting Sword Swings and Charging
execute if items entity @s weapon.mainhand *[custom_data~{hk:{type:"ability_wheel"}}] run tag @s add hkaw_has_sword

tag @s[predicate=hk:sneaking,tag=hkaw_has_sword] add hkaw_charging
scoreboard players add @s[tag=hkaw_charging,scores={hkaw_sword_timer=..59}] hkaw_sword_timer 1

#Nail Art Charged Particles
execute at @s[tag=hkaw_charging,scores={hkaw_sword_timer=1..59,hkaw_particle=1}] run particle entity_effect{color:[0.600,0.400,0.800,1.00]} ^ ^ ^-0.25 0.5 0.5 0.5 0.15 10 force
execute at @s[scores={hkaw_sword_timer=60,hkaw_particle=1}] run particle minecraft:end_rod ~ ~1 ~ 0.5 1 0.5 0.001 1 normal

#Charging Sounds
execute at @s[tag=hkaw_charging,scores={hkaw_sword_timer=1..58}] run playsound block.soul_soil.break player @s ~ ~ ~
execute at @s[tag=hkaw_charging,scores={hkaw_sword_timer=59}] run playsound minecraft:block.ender_chest.open player @s ~ ~ ~

#Nail Arts
execute as @s[tag=hkaw_has_sword] as @s[tag=hk.player.loaded,scores={hkaw_sword_timer=60},predicate=!hk:sneaking,x_rotation=90,predicate=hk:abilities/is_on_ground] at @s run function hk:abilities/focus
execute as @s[tag=hk.player.loaded,scores={hkaw_sword_timer=60},predicate=!hk:sneaking,x_rotation=90,predicate=hk:abilities/is_on_ground] at @s run scoreboard players set @s hkaw_sword_timer 0
execute as @s[tag=!hk.player.loaded,scores={hkaw_sword_timer=60},predicate=!hk:sneaking,x_rotation=90,predicate=hk:abilities/is_on_ground] at @s run scoreboard players set @s hkaw_sword_timer 0

execute as @s[tag=hkaw_has_sword] as @s[tag=hk.crystal_heart,scores={hkaw_sword_timer=60},predicate=!hk:sneaking,tag=!hk.sprinting,predicate=hk:abilities/is_on_ground] if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{horizontal_speed:0,vertical_speed:0}}}] unless entity @s[x_rotation=90] at @s run function hk:abilities/crystal_heart
execute as @s[tag=hk.crystal_heart,scores={hkaw_sword_timer=60},predicate=!hk:sneaking,tag=!hk.sprinting,predicate=hk:abilities/is_on_ground] if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{horizontal_speed:0,vertical_speed:0}}}] unless entity @s[x_rotation=90] at @s run scoreboard players set @s hkaw_sword_timer 0
execute as @s[tag=!hk.crystal_heart,scores={hkaw_sword_timer=60},predicate=!hk:sneaking,tag=!hk.sprinting,predicate=hk:abilities/is_on_ground] if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{horizontal_speed:0,vertical_speed:0}}}] unless entity @s[x_rotation=90] at @s run scoreboard players set @s hkaw_sword_timer 0

tag @s[predicate=!hk:sprinting] remove hk.sprinting
tag @s[predicate=hk:sprinting] add hk.sprinting

scoreboard players add @s hkaw_particle 1
scoreboard players set @s[scores={hkaw_particle=3..}] hkaw_particle 1

