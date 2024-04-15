function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 4323 then
queststatus = getPlayerStorageValue(cid,4323)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você recebeu um Golden Globet.")
Trofeu = doPlayerAddItem(cid,5805,1 )
doSetItemSpecialDescription(Trofeu, "Troféu conquistado na Hell Quest por "..getPlayerName(cid)..".")
setPlayerStorageValue(cid,4323,1)
else
doPlayerSendTextMessage(cid,22,"Você já obteve a sua recompensa")
end
else
return 0
end
return 1
end 