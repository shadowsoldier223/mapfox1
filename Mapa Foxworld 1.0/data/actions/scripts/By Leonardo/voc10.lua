function onUse(cid, item, frompos, item2, topos)
if item.uid == 3310 then
queststatus = getPlayerStorageValue(cid,3310)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Voc� encontrou um Green Suplhur ofere�a a um GOD e em troca receba uma voca��o suprema.")
doPlayerAddItem(cid,6549,1 )
setPlayerStorageValue(cid,3310,1)
else
doPlayerSendTextMessage(cid,22,"Voc� ja recebeu sua recompensa")
end
else
return 0
end
return 1
end 