function onUse(cid, item, fromPosition, itemEx, toPosition)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end

stonepos = {x=404, y=685, z=12, stackpos=1}
playerpos = {x=404, y=685, z=12, stackpos=225}
stone = getThingfromPos(stonepos)
player = getThingfromPos(playerpos)

if item.uid == 1008 and item.itemid == 1945 then
doRemoveItem(stone.uid,1)
doSendMagicEffect(stonepos,45)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 1008 and item.itemid == 1946 then
if isCreature(player.uid) == FALSE then
doCreateItem(1304,1,stonepos)
doTransformItem(item.uid,item.itemid-1)
else
end
else
end
return TRUE
end