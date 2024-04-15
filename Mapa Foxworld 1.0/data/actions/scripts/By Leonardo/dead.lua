function onUse(cid, item, frompos, item2, topos)
if item.uid == 1999 then
queststatus = getPlayerStorageValue(cid,1999)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou um Premio por sobreviver.")
doPlayerAddItem(cid,2160,100 )
doPlayerAddExp(cid,6000000)
setPlayerStorageValue(cid,1999,1)
else
doPlayerSendTextMessage(cid,22,"Você ja recebeu seu premio!")
end
else
return 0
end
return 1
end 