function onStepIn(cid, item, pos)

if isPlayer(cid) then

if item.actionid == 5869 then
doSendAnimatedText(pos,"Bem Vindo",TEXTCOLOR_RED)
doSendMagicEffect(pos,12)
return doCombat(cid, item, pos)
else
return 0
end
return 1
end
end