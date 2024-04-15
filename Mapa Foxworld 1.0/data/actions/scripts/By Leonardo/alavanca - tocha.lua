function onUse(cid, item, fromPosition, itemEx, toPosition)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end

stonepos = {x=675, y=740, z=6, stackpos=2}
stone = getThingfromPos(stonepos)

 if item.uid == 2059 and item.itemid == 2059 then
     if stone.itemid > 1000 then
         doRemoveItem(stone.uid,1)
         doSendMagicEffect(stonepos,45)
     end
 end

return TRUE
end