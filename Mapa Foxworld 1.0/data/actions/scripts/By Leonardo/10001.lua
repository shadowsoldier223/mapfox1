function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 10001 then
queststatus = getPlayerStorageValue(cid,10001)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Voc� ganhou acesso 10001.")
setPlayerStorageValue(cid,10001,1)
else
doPlayerSendTextMessage(cid,22,"Nada acontece")
end
else
return 0
end
return 1
end 