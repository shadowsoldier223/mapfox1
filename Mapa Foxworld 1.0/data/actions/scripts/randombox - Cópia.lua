-----   Random Box By EddyHavoc   -----

function onUse(cid, item, frompos, item2, topos)
r1 = math.random(1,6)
if getPlayerLevel(cid) >= 60 then
if doPlayerRemoveItem(cid,6497,1) == TRUE then
if r1 == 1 then
doPlayerSendTextMessage(cid,22,"Você Encontrou O Que Estava Atrás Phantasm Armor.")
doPlayerAddItem(cid,8879,1)
elseif r1 == 2 then
doPlayerSendTextMessage(cid,22,"Você Encontrou Sua Calcinha Perdida!.")
doPlayerAddItem(cid,7464,1)
elseif r1 == 3 then
doPlayerSendTextMessage(cid,22,"Tente Novamente!.")
doPlayerAddItem(cid,5918,1)
if r1 == 4 then
doPlayerSendTextMessage(cid,22,"Você Esta Cego Não é Essa!.")
doPlayerAddItem(cid,2649,1)
elseif r1 == 5 then
doPlayerSendTextMessage(cid,22,"Procure Novamente!.")
doPlayerAddItem(cid,6095,1)
elseif r1 == 6 then
doPlayerSendTextMessage(cid,22,"Uma Hora Você Achar!.")
doPlayerAddItem(cid,2650,1)
end
end
end
end