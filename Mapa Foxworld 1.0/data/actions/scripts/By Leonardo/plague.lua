function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 3330 then
queststatus = getPlayerStorageValue(cid,3330)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você achou um Golden Shield.")
doPlayerAddItem(cid,2524,1 )
doPlayerAddItem(cid,2160,50 )
setPlayerStorageValue(cid,3330,1)
doPlayerAddExp(cid,4500000)
else
doPlayerSendTextMessage(cid,22,"Você já obteve a sua recompensa")
end
else
return 0
end
return 1
end 