function onUse(cid, item, frompos, item2, topos)
if item.uid == 3309 then
queststatus = getPlayerStorageValue(cid,3309)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Voc� encontrou um Eternal Flame ofere�a a um GOD e em troca receba uma voca��o suprema.")
doPlayerAddItem(cid,8304,1 )
setPlayerStorageValue(cid,3309,1)
else
doPlayerSendTextMessage(cid,22,"Voc� ja recebeu sua recompensa")
end
else
return 0
end
return 1
end 