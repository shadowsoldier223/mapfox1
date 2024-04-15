function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 1230 then
queststatus = getPlayerStorageValue(cid,1230)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 500k!.")
doPlayerAddItem(cid,2160,50 )
setPlayerStorageValue(cid,1230,1)
else
doPlayerSendTextMessage(cid,22,"Você já obteve a sua recompensa")
end
else
return 0
end
return 1
end 