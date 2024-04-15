function onUse(cid, item, frompos, item2, topos)
if item.uid == 3311 then
queststatus = getPlayerStorageValue(cid,3311)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou um War Horn ofereça a um GOD e em troca receba uma vocação suprema.")
doPlayerAddItem(cid,2079,1 )
setPlayerStorageValue(cid,3311,1)
else
doPlayerSendTextMessage(cid,22,"Você ja recebeu sua recompensa")
end
else
return 0
end
return 1
end 