function onUse(cid, item, frompos, item2, topos)
if item.id == 8300 then
queststatus = getPlayerStorageValue(cid,13450)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você ganhou acesso a ilha vip.")
setPlayerStorageValue(cid,13450,1)
else
doPlayerSendTextMessage(cid,22,"Você já tem acesso a area vip")
end
else
return 0
end
return 1
end 