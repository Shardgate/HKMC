$execute unless score @s hk.charms.$(name).obtained matches 1.. run tellraw @s {translate:"hk.dialog.charms.not_obtain"}

$function hk:menu/equip/template {name:"$(name)"}
function hk:menu/update/notches
scoreboard players set @s hk.charms.menu.trigger_equip 0
