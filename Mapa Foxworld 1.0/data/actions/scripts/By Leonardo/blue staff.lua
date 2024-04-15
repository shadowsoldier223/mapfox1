function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 1789 then
queststatus = getPlayerStorageValue(cid,1789)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou uma Blue Staff.")
doPlayerAddItem(cid,7409,1 )
setPlayerStorageValue(cid,1789,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 