function onUse(cid, item, frompos, item2, topos)
if item.uid == 4567 then
queststatus = getPlayerStorageValue(cid,4567)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou um Tempest Shield.")
doPlayerAddItem(cid,2542,1 )
doPlayerAddExp(cid,1000000)
setPlayerStorageValue(cid,4567,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 