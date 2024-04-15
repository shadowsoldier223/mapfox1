function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 2007 then
queststatus = getPlayerStorageValue(cid,2007)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 demon legs!.")
doPlayerAddItem(cid,2495,1 )
setPlayerStorageValue(cid,2007,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 