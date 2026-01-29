$execute if score @s hk.charms.$(name).obtained matches 1.. if score @s hk.charms.$(name).active matches 0 if score @s hk.charms.notches_used < @s hk.charms.notches run tellraw @s {translate:"hk.dialog.charms.equipped",with:[{translate:"hk.item.name.$(name)"}]}
$execute if score @s hk.charms.$(name).obtained matches 1.. if score @s hk.charms.$(name).active matches 0 if score @s hk.charms.notches_used < @s hk.charms.notches run return run scoreboard players set @s hk.charms.$(name).active 1

$execute if score @s hk.charms.$(name).active matches 1 run tellraw @s {translate:"hk.dialog.charms.unequipped",with:[{translate:"hk.item.name.$(name)"}]}
$execute if score @s hk.charms.$(name).active matches 1 run return run scoreboard players set @s hk.charms.$(name).active 0

