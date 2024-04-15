function Poisoned(cid)
doTargetCombatHealth(0, cid, COMBAT_POISONDAMAGE, -600, -600, CONST_ME_NONE)
end


function onUse(cid, item, fromPosition, itemEx, toPosition)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end

stonepos = {x=452, y=44, z=11, stackpos=1}
stone = getThingfromPos(stonepos)

 if item.uid == 1390 and item.itemid == 5057 then
     doRemoveItem(stone.uid,1)
         for x = 1, 10 do 
             addEvent(Poisoned, x * 1000, cid
)
         end
     doSendMagicEffect(stonepos,45)
 else
 end

return TRUE
end