function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end
if item.uid == 8268 then
queststatus = getPlayerStorageValue(cid,8268)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Agora você pode usar a magia sun berserker (exori sun).")
doPlayerLearnInstantSpell(cid, "Sun Berserker")
setPlayerStorageValue(cid,8268,1)
else
doPlayerSendTextMessage(cid,22,"Você já aprendeu a magia.")
end
else
return 0
end
return 1
end 