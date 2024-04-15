function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 4893 then
queststatus = getPlayerStorageValue(cid,4893)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou uma demon shield.")
doPlayerAddItem(cid,2520,1 )
setPlayerStorageValue(cid,4893,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 