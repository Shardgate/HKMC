return fail
execute at @s if items entity @s container.* poisonous_potato[minecraft:custom_data~{hk:{name:"weaversong"}}] unless score @s hk.charms.weaversong.obtained matches 1.. run function hk:charms/recipes/test_charm {name:"weaversong"}
execute at @s if items entity @s container.* poisonous_potato[minecraft:custom_data~{hk:{name:"glowing_womb"}}] unless score @s hk.charms.glowing_womb.obtained matches 1.. run function hk:charms/recipes/test_charm {name:"glowing_womb"}
execute at @s if items entity @s container.* poisonous_potato[minecraft:custom_data~{hk:{name:"baldur_shell"}}] unless score @s hk.charms.baldur_shell.obtained matches 1.. run function hk:charms/recipes/test_charm {name:"baldur_shell"}
execute at @s if items entity @s container.* poisonous_potato[minecraft:custom_data~{hk:{name:"flukenest"}}] unless score @s hk.charms.flukenest.obtained matches 1.. run function hk:charms/recipes/test_charm {name:"flukenest"}
