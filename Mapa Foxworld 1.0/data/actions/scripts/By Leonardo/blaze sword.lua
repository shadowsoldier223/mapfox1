function onUse(cid, item, frompos, item2, topos)
if item.uid == 3787 then
queststatus = getPlayerStorageValue(cid,3787)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou uma Blaze Sword.")
doPlayerAddItem(cid,7745,1 )
setPlayerStorageValue(cid,3787,1)
else
doPlayerSendTextMessage(cid,22,"Você já obteve a sua recompensa")
end
else
return 0
end
return 1
end 