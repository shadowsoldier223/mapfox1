function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 1229 then
queststatus = getPlayerStorageValue(cid,1229)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 Horned Helmet feito pelos Dark Cyclops!.")
doPlayerAddItem(cid,2496,1 )
setPlayerStorageValue(cid,1229,1)
else
doPlayerSendTextMessage(cid,22,"Você já obteve a sua recompensa")
end
else
return 0
end
return 1
end 