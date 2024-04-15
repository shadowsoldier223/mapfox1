function onUse(cid, item, frompos, item2, topos)
if item.uid == 4821 then
queststatus = getPlayerStorageValue(cid,4821)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou uma dragon scale mail.")
doPlayerAddItem(cid,2492,1 )
setPlayerStorageValue(cid,4821,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 