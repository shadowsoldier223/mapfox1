function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 10005 then
queststatus = getPlayerStorageValue(cid,10005)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você ganhou acesso 10005.")
setPlayerStorageValue(cid,10005,1)
else
doPlayerSendTextMessage(cid,22,"Nada acontece")
end
else
return 0
end
return 1
end 