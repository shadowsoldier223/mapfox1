function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 3477 then
queststatus = getPlayerStorageValue(cid,3477)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou um winged helmet.")
doPlayerAddItem(cid,2474,1 )
setPlayerStorageValue(cid,3477,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 