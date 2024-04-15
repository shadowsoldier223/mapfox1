azul = TEXTCOLOR_BLUE
function onStepIn(cid, item, pos)
pos= {x=422,y=556,z=7} --1 Floor depois do actionID
if isPlayer(cid) then
if item.actionid == 13540
then
oi = getPlayerStorageValue(cid,13540) --Nao retire isso daqui!
if oi == -1 then
doPlayerSendTextMessage(cid,22,"Bem Vindo! Boa Sorte Com Essa Grande Aventura :P.")
doSendAnimatedText(getPlayerPosition(cid), "Hail Ot!",azul)
setPlayerStorageMessage(cid,13540,1)
else
doTeleportThing(pos)

end

end

end

end