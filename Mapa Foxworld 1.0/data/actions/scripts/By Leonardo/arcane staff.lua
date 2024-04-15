function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 2453 then
queststatus = getPlayerStorageValue(cid,2453)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 Arcane Staff!.")
doPlayerAddItem(cid,2453,1 )
doPlayerAddExp(cid,100000)
setPlayerStorageValue(cid,2453,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 