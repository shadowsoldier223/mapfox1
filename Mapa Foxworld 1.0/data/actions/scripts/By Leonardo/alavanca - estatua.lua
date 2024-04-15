function onUse(cid, item, fromPosition, itemEx, toPosition)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end

stonepos = {x=674, y=739, z=6, stackpos=2}
stone = getThingfromPos(stonepos)

 if item.uid == 1551 and item.itemid == 1551 then
   doRemoveItem(stone.uid,1)
   doSendMagicEffect(stonepos,45)
   else
   end
return TRUE
end