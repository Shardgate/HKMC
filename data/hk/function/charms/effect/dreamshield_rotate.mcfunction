execute positioned ~ ~1 ~ run tp @s ~ ~ ~ 0 0
$execute positioned ~ ~1 ~ rotated $(val) 0 run tp @s ^ ^ ^3
$rotate @s $(val) 0

$execute unless score @s hk.charms.dreamshield.cool matches 1.. positioned ~ ~1 ~ rotated $(val) 0 positioned ^ ^ ^3 if entity @n[type=#hk:hostile,distance=..1.5] run function hk:charms/effect/dreamshield_damage

