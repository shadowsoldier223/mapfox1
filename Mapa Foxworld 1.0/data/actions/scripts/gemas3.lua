function onUse(cid, item, fromPosition, itemEx, toPosition)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end

stonepos = {x=497, y=366, z=10, stackpos=1}
playerpos = {x=497, y=366, z=10, stackpos=225}
stone = getThingfromPos(stonepos)
player = getThingfromPos(playerpos)

if item.uid == 1013 and item.itemid == 1945 then
doRemoveItem(stone.uid,1)
doSendMagicEffect(stonepos,31)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 1013 and item.itemid == 1946 then
if isCreature(player.uid) == FALSE then
doCreateItem(8635,1,stonepos)
doTransformItem(item.uid,item.itemid-1)
else
end
else
end
return TRUE
end