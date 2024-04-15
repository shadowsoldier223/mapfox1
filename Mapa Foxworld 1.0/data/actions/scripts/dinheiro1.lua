function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 3 then return TRUE end
if item.uid == 3447 then
queststatus = getPlayerStorageValue(cid,3447)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 30k!.")
doPlayerAddItem(cid,2160,3 )
setPlayerStorageValue(cid,3447,1)
else
doPlayerSendTextMessage(cid,22,"Você já obteve a sua recompensa")
end
else
return 0
end
return 1
end 