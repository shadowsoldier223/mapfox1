function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 4326 then
queststatus = getPlayerStorageValue(cid,4326)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou um Crown Helmet.")
doPlayerAddItem(cid,2128,1 )
setPlayerStorageValue(cid,4326,1)
else
doPlayerSendTextMessage(cid,22,"Você já obteve a sua recompensa")
end
else
return 0
end
return 1
end 