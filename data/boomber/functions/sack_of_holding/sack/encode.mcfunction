execute if block ~ ~ ~ minecraft:chest run data modify entity @s Item.id set value "minecraft:chest"
execute if block ~ ~ ~ minecraft:trapped_chest run data modify entity @s Item.id set value "minecraft:trapped_chest"
execute if block ~ ~ ~ minecraft:barrel run data modify entity @s Item.id set value "minecraft:barrel"

#define storage boomber:sack_of_holding
data merge storage boomber:sack_of_holding {list: [], calculation: [], output: []}
data modify storage boomber:sack_of_holding list set from block ~ ~ ~ Items
	function boomber:sack_of_holding/sack/blacklist
	data modify block ~ ~ ~ Items set from storage boomber:sack_of_holding output

data modify storage boomber:sack_of_holding result set from entity @s Item.tag
data modify storage boomber:sack_of_holding result.durability set from storage boomber:sack_of_holding durability
data modify storage boomber:sack_of_holding result.BlockEntityTag.Items set from block ~ ~ ~ Items
	data modify storage boomber:sack_of_holding result.BlockEntityTag.Lock set from block ~ ~ ~ Lock
	data modify storage boomber:sack_of_holding result.BlockEntityTag.LootTable set from block ~ ~ ~ LootTable
	data modify storage boomber:sack_of_holding result.BlockEntityTag.LootTableSeed set from block ~ ~ ~ LootTableSeed
	data modify storage boomber:sack_of_holding result.BlockEntityTag.CustomName set from block ~ ~ ~ CustomName
		execute if data block ~ ~ ~ CustomName run data modify storage boomber:sack_of_holding result.sack_of_holding.custom_name set from block ~ ~ ~ CustomName
		execute unless data block ~ ~ ~ CustomName if block ~ ~ ~ minecraft:chest run data modify storage boomber:sack_of_holding result.sack_of_holding.custom_name set value '{"translate": "block.minecraft.chest"}'
		execute unless data block ~ ~ ~ CustomName if block ~ ~ ~ minecraft:trapped_chest run data modify storage boomber:sack_of_holding result.sack_of_holding.custom_name set value '{"translate": "block.minecraft.trapped_chest"}'
		execute unless data block ~ ~ ~ CustomName if block ~ ~ ~ minecraft:barrel run data modify storage boomber:sack_of_holding result.sack_of_holding.custom_name set value '{"translate": "block.minecraft.barrel"}'

execute positioned ~ 255 ~ run function boomber:sack_of_holding/sack/method/name

execute store result score #durability bb.sh.var run data get storage boomber:sack_of_holding result.durability.current
	execute store result storage boomber:sack_of_holding result.durability.current int 1 run scoreboard players remove #durability bb.sh.var 1
	execute positioned ~ 255 ~ run function boomber:sack_of_holding/sack/method/durability

data modify entity @s Item.tag set from storage boomber:sack_of_holding result

playsound minecraft:item.armor.equip_leather block @a ~ ~ ~