summon item ~ ~ ~ {Tags: ["boomber.sack_of_holding.drop_item"], PickupDelay: 5s, Item: {id: "minecraft:stone", Count: 1b}}
	data modify entity @e[type=item, limit=1, tag=boomber.sack_of_holding.drop_item] Item set from storage boomber:sack_of_holding calculation
	tag @e[tag=boomber.sack_of_holding.drop_item] remove boomber.sack_of_holding.drop_item

scoreboard players set #success bb.sh.var 1