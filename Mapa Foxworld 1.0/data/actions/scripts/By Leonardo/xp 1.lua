function onUse(cid, item, frompos, item2, topos)
if item.uid == 4447 then
queststatus = getPlayerStorageValue(cid,4447)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você recebeu Experiência.")
doPlayerAddExp(cid,500000)
setPlayerStorageValue(cid,4447,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 