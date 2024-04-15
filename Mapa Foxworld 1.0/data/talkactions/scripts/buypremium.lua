function onSay(cid, words, param)
if getPlayerPremiumDays(cid) <= 360 then
if doPlayerRemoveMoney(cid, 7000) == TRUE then
doPlayerAddPremiumDays(cid, 30)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have bought 30 days of premium account.")
else
doPlayerSendCancel(cid, "You don't have enough money, 30 days premium account costs 7000 gold coins.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
else
doPlayerSendCancel(cid, "You can not buy more than one year of Premium Account.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
return TRUE
end