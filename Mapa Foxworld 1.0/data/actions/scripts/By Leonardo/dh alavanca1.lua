function onUse(cid, item, fromPosition, itemEx, toPosition)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end

stonepos = {x=360, y=993, z=14, stackpos=1}
playerpos = {x=360, y=993, z=14, stackpos=225}
stone = getThingfromPos(stonepos)
player = getThingfromPos(playerpos)

if item.uid == 9889 and item.itemid == 1945 then
doRemoveItem(stone.uid,1)
doSendMagicEffect(stonepos,45)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 9889 and item.itemid == 1946 then
if isCreature(player.uid) == FALSE then
doCreateItem(1355,1,stonepos)
doTransformItem(item.uid,item.itemid-1)
else
end
else
end
return TRUE
end