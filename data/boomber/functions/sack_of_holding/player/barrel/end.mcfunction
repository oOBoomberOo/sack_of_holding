loot spawn ~ ~ ~ loot boomber:sack_of_holding/item/used_sack_of_holding
execute as @e[type=item, nbt={Item: {tag: {ctc: {id: "used_sack_of_holding", from: "boomber:sack_of_holding"}}}}, limit=1, sort=nearest, distance=..0.5] run function boomber:sack_of_holding/sack/encode

replaceitem entity @s weapon.mainhand minecraft:air
setblock ~ ~ ~ minecraft:air
scoreboard players set #raycast bb.sh.var 1