$tag $(name) remove hk.player.loaded
tellraw @s {translate: "hk.dialog.config.applied_changes"}
execute at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~