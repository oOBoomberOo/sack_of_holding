data modify storage boomber:sack_of_holding durability set from entity @s SelectedItem.tag.durability
loot spawn ~ ~ ~ loot boomber:sack_of_holding/item/used_sack_of_holding
execute as @e[type=item, nbt={Item: {tag: {ctc: {id: "used_sack_of_holding", from: "boomber:sack_of_holding"}}}}, limit=1, distance=..0.5] run function boomber:sack_of_holding/sack/encode

replaceitem entity @s weapon.mainhand minecraft:air
execute if block ~ ~ ~ minecraft:chest[waterlogged=false] run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:chest[waterlogged=true] run setblock ~ ~ ~ minecraft:water
scoreboard players set #raycast bb.sh.var 1