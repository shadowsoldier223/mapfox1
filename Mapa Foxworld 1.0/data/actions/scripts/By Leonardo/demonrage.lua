function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 1014 then
queststatus = getPlayerStorageValue(cid,1014)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Voc� encontrou uma demonrage.")
doPlayerAddItem(cid,7382,1 )
setPlayerStorageValue(cid,1014,1)
else
doPlayerSendTextMessage(cid,22,"Voc� j� obteve a sua recompensa")
end
else
return 0
end
return 1
end 