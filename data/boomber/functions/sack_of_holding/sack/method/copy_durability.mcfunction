setblock ~ ~ ~ minecraft:shulker_box
	loot insert ~ ~ ~ loot boomber:sack_of_holding/item/empty_sack_of_holding
	data modify block ~ ~ ~ Items[0].tag.durability set from storage boomber:sack_of_holding data.durability

	setblock ~ ~-1 ~ minecraft:oak_sign{Text1: '[{"text": "Durability: ", "color": "gray", "italic": false}, {"nbt": "Items[0].tag.durability.current", "block": "~ ~1 ~", "color": "gray", "italic": false}, {"text": "/", "color": "gray", "italic": false}, {"nbt": "Item[0].tag.durability.max", "block": "~ ~1 ~", "color": "gray", "italic": false}]'}
		data modify block ~ ~-1 ~ Items[0].tag.display.Lore[-1] set value ""
		data modify block ~ ~-1 ~ Items[0].tag.display.Lore[-1] set from block ~ ~-1 ~ Text1
	setblock ~ ~-1 ~ minecraft:air

	execute if score #hand bb.sh.var = #hand.right bb.sh.enum run loot replace entity @s weapon.mainhand 1 mine ~ ~ ~ minecraft:iron_pickaxe{ctc: {id: 'inventory_modifier'}}
	execute if score #hand bb.sh.var = #hand.left bb.sh.enum run loot replace entity @s weapon.offhand 1 mine ~ ~ ~ minecraft:iron_pickaxe{ctc: {id: 'inventory_modifier'}}

setblock ~ ~ ~ minecraft:air