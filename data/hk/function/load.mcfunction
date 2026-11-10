tellraw @a ["\n",{translate: "hk.reload.message.global",fallback:"-- [HKMC] Resourcepack Missing --", with:[{text:"❤ hkmc",font:"hk:tooltip"}], "hover_event":{"action":"show_text","value":[{translate: "hk.reload.message.admin"},"\n",{translate: "hk.reload.message.player"}]}}]
# tellraw @a {translate: "hk.reload.message.admin"}
# tellraw @a {translate: "hk.reload.message.player"}

gamerule send_command_feedback false

schedule function hk:lantern/main_10t 10t
function hk:soul/load

scoreboard objectives add hk.monarch_wings.jump minecraft.custom:minecraft.jump
scoreboard objectives add hk.monarch_wings.jump.old dummy
scoreboard objectives add hk.monarch_wings.jump.cool dummy
scoreboard objectives add hk.monarch_wings.jump.cool2 dummy
scoreboard objectives add hk.monarch_wings.jump.cool3 dummy

scoreboard objectives add hk.dash.raycast.cool2 dummy
scoreboard objectives add hk.sdash.raycast.cool2 dummy

scoreboard objectives add hk.dash.raycast dummy
scoreboard objectives add hk.dash.raycast.cool dummy
scoreboard objectives add hk.sdash.raycast dummy
scoreboard objectives add hk.sdash.raycast.cool dummy
scoreboard objectives add hk.cdash.raycast dummy
scoreboard objectives add hk.cdash.raycast.cool dummy

scoreboard objectives add hk.dash_slash.raycast dummy
scoreboard objectives add hk.dash_slash.raycast.cool dummy

scoreboard objectives add hk.ddash.raycast dummy
scoreboard objectives add hk.ddash.raycast.cool dummy
scoreboard objectives add hk.dadash.raycast dummy
scoreboard objectives add hk.dadash.raycast.cool dummy

scoreboard objectives add hk.venge.raycast dummy
scoreboard objectives add hk.venge.raycast.cool dummy
scoreboard objectives add hk.shade.raycast dummy
scoreboard objectives add hk.shade.raycast.cool dummy

scoreboard objectives add hk.generic_dash.hold_w dummy

scoreboard objectives add hk.ability_wheel.count dummy

scoreboard objectives add hk.bench.raycast dummy
scoreboard objectives add hk.bench.raycast2 dummy

scoreboard objectives add hkna_swung_sword minecraft.custom:minecraft.damage_dealt "Has Dealt Damage?"
scoreboard objectives add hkna_sword_timer dummy "Nail Art Timer"
scoreboard objectives add hkna_particle dummy "Particle Timer"
scoreboard objectives add hkna_cyc_dist dummy "Distance to Cycloner"

scoreboard objectives add hkaw_swung_sword minecraft.custom:minecraft.damage_dealt "Has Dealt Damage?"
scoreboard objectives add hkaw_sword_timer dummy "Nail Art Timer"
scoreboard objectives add hkaw_particle dummy "Particle Timer"
scoreboard objectives add hkaw_cyc_dist dummy "Distance to Cycloner"

scoreboard objectives add hk.inv.id dummy
scoreboard objectives add hk.inv.temp dummy
execute unless score .main hk.inv.id matches -2147483648..2147483647 run scoreboard players set .main hk.inv.id 0

scoreboard objectives add hk.p.id dummy
scoreboard objectives add hk.p.temp dummy
execute unless score .main hk.p.id matches -2147483648..2147483647 run scoreboard players set .main hk.p.id 0

scoreboard objectives add hk.demo dummy

scoreboard objectives add hk.charms.notches dummy
scoreboard objectives add hk.charms.notches_used dummy

scoreboard objectives add hk.charms.deathcount minecraft.custom:minecraft.time_since_death
scoreboard objectives add hk.charms.deathcount2 deathCount

function hk:charms/load
function hk:menu/load

# Config

scoreboard objectives add hk.config.ability_wheel.clear dummy
execute unless score .global hk.config.ability_wheel.clear matches -2147483648..2147483647 run scoreboard players set .global hk.config.ability_wheel.clear 1

scoreboard objectives add hk.charms.enabled dummy
execute unless score .global hk.charms.enabled matches -2147483648..2147483647 run scoreboard players set .global hk.charms.enabled 1

scoreboard objectives add hk.items.menu.trigger_equip trigger
scoreboard objectives add hk.items.charms.menu.trigger_equip trigger

# Lantern Load Convention
scoreboard players set hk.version.major load.status 1
scoreboard players set hk.version.minor load.status 1
scoreboard players set hk.version.patch load.status 2

schedule function hk:main 1t