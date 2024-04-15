function onUse(cid, item, fromPosition, itemEx, toPosition)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end

stonepos = {x=145, y=566, z=15, stackpos=1}
stone = getThingfromPos(stonepos)

if item.itemid == 1945 then
doTransformItem(item.uid,item.itemid+1)           
else
doTransformItem(item.uid,item.itemid-1)
end

if isCreature(stone.uid) == FALSE and stone.itemid == 1304 then
doSendMagicEffect(stonepos,45)
doRemoveItem(stone.uid,1)
end

return TRUE
end