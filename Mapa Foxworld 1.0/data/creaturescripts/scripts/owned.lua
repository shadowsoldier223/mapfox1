function onKill(cid, target)
if isPlayer(cid) == TRUE and isPlayer(target) == TRUE then
doSendAnimatedText(getCreaturePosition(target), "OwNeD!", 35)
end
return TRUE
end