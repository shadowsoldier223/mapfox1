--
function onUse(cid, item, frompos, item2, topos)
 
if getPlayerStorageValue(cid,13540)
if getPlayerPremiumDays(cid) <= 360 then
if doPlayerRemoveMoney(cid, 10000) == TRUE then
doPlayerAddPremiumDays(cid, 30)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Foram adcionados ".. days .." dias de VIP no seu character.")
 
else
doPlayerSendTextMessage(cid,22,"Você tem ".. quantity .." dias de VIP restantes.")
doSendMagicEffect(topos,12)
setPlayerStorageValue(cid,13540,1)
end
return 0
end
return 1
end
