function onStepIn(cid, item, position, fromPosition)

config = {  
    msg_yes = 'Bem vindo.', 
    msg_no = 'Somentes jogadores premium podem passar.' 
        } 
 
if(isPlayer(cid)) then
if isPremium(cid) == TRUE then
doPlayerSendTextMessage(cid, 25, config.msg_yes) 
doSendMagicEffect(getThingPos(cid), 14) 
else 
doTeleportThing(cid, fromPosition) 
doPlayerSendCancel(cid, config.msg_no)
doSendMagicEffect(getThingPos(cid), 12)  
end
end
return TRUE
end