$tellraw @s {"translate": "hk.item.obtained.ability","with": [{"translate": "hk.item.name.$(name)"}]}
$tellraw @s [{"translate": "hk.item.lore.$(name).1"}," ",{"translate": "hk.item.lore.$(name).2"}]
$scoreboard players set @s hk.charms.$(name).obtained 1
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~

function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out
$data modify storage pdb:main in.hk.charms append value "$(name)"
function pdb:save_me

$clear @s poisonous_potato[item_model="hk:charms/$(name)"] 1
