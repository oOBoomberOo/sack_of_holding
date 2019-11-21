execute if block ~ ~ ~ minecraft:chest run data modify entity @s Item.id set value "minecraft:chest"
execute if block ~ ~ ~ minecraft:trapped_chest run data modify entity @s Item.id set value "minecraft:trapped_chest"
execute if block ~ ~ ~ minecraft:barrel run data modify entity @s Item.id set value "minecraft:barrel"

data modify entity @s Item.tag.ucit.sack_of_holding.calculation.list set from block ~ ~ ~ Items
data modify entity @s Item.tag.ucit.sack_of_holding.calculation.output set value []
function boomber:sack_of_holding/sack/blacklist
data modify block ~ ~ ~ Items set from entity @s Item.tag.ucit.sack_of_holding.calculation.output
data remove entity @s Item.tag.ucit.sack_of_holding.calculation

data modify entity @s Item.tag.BlockEntityTag.Items set from block ~ ~ ~ Items
data modify entity @s Item.tag.BlockEntityTag.Lock set from block ~ ~ ~ Lock
data modify entity @s Item.tag.BlockEntityTag.LootTable set from block ~ ~ ~ LootTable
data modify entity @s Item.tag.BlockEntityTag.LootTableSeed set from block ~ ~ ~ LootTableSeed
data modify entity @s Item.tag.BlockEntityTag.CustomName set from block ~ ~ ~ CustomName

execute if data block ~ ~ ~ CustomName run data modify entity @s Item.tag.ucit.sack_of_holding.custom_name set from block ~ ~ ~ CustomName
execute unless data block ~ ~ ~ CustomName if block ~ ~ ~ minecraft:chest run data modify entity @s Item.tag.ucit.sack_of_holding.custom_name set value '{"translate": "block.minecraft.chest"}'
execute unless data block ~ ~ ~ CustomName if block ~ ~ ~ minecraft:trapped_chest run data modify entity @s Item.tag.ucit.sack_of_holding.custom_name set value '{"translate": "block.minecraft.trapped_chest"}'
execute unless data block ~ ~ ~ CustomName if block ~ ~ ~ minecraft:barrel run data modify entity @s Item.tag.ucit.sack_of_holding.custom_name set value '{"translate": "block.minecraft.barrel"}'

tag @s add boomber.sack_of_holding.target
setblock ~ 255 ~ minecraft:oak_sign{Text1: '[{"text": "Sack of Holding <", "color": "white", "italic": false}, {"nbt": "Item.tag.ucit.sack_of_holding.custom_name", "entity": "@e[tag=boomber.sack_of_holding.target, limit=1]", "interpret": true}, {"text": ">"}]'}
data modify entity @s Item.tag.display.Name set from block ~ 255 ~ Text1
setblock ~ 255 ~ minecraft:air
tag @s remove boomber.sack_of_holding.target

playsound minecraft:item.armor.equip_leather block @a ~ ~ ~