function onUse(cid, item, frompos, item2, topos)
if item.uid == 3456 then
queststatus = getPlayerStorageValue(cid,3456)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você se tornou vip.")
setPlayerStorageValue(cid,13540,1)
else
doPlayerSendTextMessage(cid,22,"Você já é vip")
end
else
return 0
end
return 1
end 