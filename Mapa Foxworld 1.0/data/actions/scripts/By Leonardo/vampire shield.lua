function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 3344 then
queststatus = getPlayerStorageValue(cid,3344)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 Vampire Shield.")
doPlayerAddItem(cid,2534,1 )
setPlayerStorageValue(cid,3344,1)
else
doPlayerSendTextMessage(cid,22,"Você já obteve a sua recompensa")
end
else
return 0
end
return 1
end 