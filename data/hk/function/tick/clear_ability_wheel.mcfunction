execute if items entity @s armor.head poisonous_potato[custom_data~{hk:{type:"ability_wheel"}}] run item replace entity @s armor.head with air
execute if items entity @s armor.chest poisonous_potato[custom_data~{hk:{type:"ability_wheel"}}] run item replace entity @s armor.chest with air
execute if items entity @s armor.legs poisonous_potato[custom_data~{hk:{type:"ability_wheel"}}] run item replace entity @s armor.legs with air
execute if items entity @s armor.feet poisonous_potato[custom_data~{hk:{type:"ability_wheel"}}] run item replace entity @s armor.feet with air
execute if items entity @s player.cursor poisonous_potato[custom_data~{hk:{type:"ability_wheel"}}] run item replace entity @s player.cursor with air
execute if items entity @s weapon.offhand poisonous_potato[custom_data~{hk:{type:"ability_wheel"}}] run item replace entity @s weapon.offhand with air

execute store result score @s hk.ability_wheel.count run clear @s poisonous_potato[custom_data~{hk:{type:"ability_wheel"}}] 0
execute if score @s hk.ability_wheel.count matches 2.. run clear @s poisonous_potato[custom_data~{hk:{type:"ability_wheel"}}]
execute store result score @s hk.ability_wheel.count run clear @s poisonous_potato[custom_data~{hk:{type:"ability_wheel"}}] 0
execute if score @s hk.ability_wheel.count matches 0 run loot give @s loot hk:ability_wheel
execute at @s unless items entity @s container.* poisonous_potato[custom_data~{hk:{type:"ability_wheel"}}] run function hk:abilities/wheel/drop