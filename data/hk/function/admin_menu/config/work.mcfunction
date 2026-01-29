$scoreboard players set .global hk.config.ability_wheel.clear $(rule1)
$scoreboard players set .global hk.charms.enabled $(rule2)
tellraw @s {translate: "hk.dialog.config.applied_changes"}
execute at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~