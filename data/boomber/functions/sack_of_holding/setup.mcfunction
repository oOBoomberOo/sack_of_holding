scoreboard objectives add bb.sh.var dummy
scoreboard objectives add bb.sh.enum dummy

scoreboard objectives add bb.sh.chest minecraft.custom:minecraft.open_chest
scoreboard objectives add bb.sh.tchest minecraft.custom:minecraft.trigger_trapped_chest
scoreboard objectives add bb.sh.barrel minecraft.custom:minecraft.open_barrel

#define score_holder #hand.left
scoreboard players set #hand.left bb.sh.enum 0
#define score_holder #hand.right
scoreboard players set #hand.right bb.sh.enum 1