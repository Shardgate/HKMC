execute at @s unless items entity @s container.* poisonous_potato[minecraft:custom_data~{hk:{type:"fragment"}}] run return fail
clear @s poisonous_potato[minecraft:custom_data~{hk:{type:"fragment"}}] 1
scoreboard players add @s hk.player.soul.vessel.fragments 1

execute at @s if score @s hk.player.soul.vessel.fragments matches 1 run title @s times 10t 30t 20t
execute at @s if score @s hk.player.soul.vessel.fragments matches 2 run title @s times 10t 30t 20t
execute at @s if score @s hk.player.soul.vessel.fragments matches 3.. run title @s times 10t 30t 20t
execute at @s if score @s hk.player.soul.vessel.fragments matches 1 run title @a title {"font":"hk:gui","text":"⚫"}
execute at @s if score @s hk.player.soul.vessel.fragments matches 2 run title @a title {"font":"hk:gui","text":"🔘"}
execute at @s if score @s hk.player.soul.vessel.fragments matches 3.. run title @a title {"font":"hk:gui","text":"⚪"}
# execute at @s if score @s hk.player.soul.vessel.fragments matches 1 run playsound minecraft:entity.zombie.attack_wooden_door player @s ~ ~ ~
# execute at @s if score @s hk.player.soul.vessel.fragments matches 2 run playsound minecraft:entity.zombie.attack_wooden_door player @s ~ ~ ~
# execute at @s if score @s hk.player.soul.vessel.fragments matches 3.. run playsound minecraft:entity.zombie.attack_wooden_door player @s ~ ~ ~

execute at @s if score @s hk.player.soul.vessel.fragments matches 3.. run scoreboard players add @s hk.player.soul.vessels 1
execute at @s if score @s hk.player.soul.vessel.fragments matches 3.. run scoreboard players set @s hk.player.soul.vessel.fragments 0

scoreboard players set @s hk.player.soul.vessel.anim.cool 100