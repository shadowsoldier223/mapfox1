function onUse(cid, item, frompos, item2, topos)

if item.uid == 6565 and item.itemid == 1945 then
player1pos = {x=440, y=554, z=4, stackpos=253}
player1 = getThingfromPos(player1pos)

player2pos = {x=444, y=554, z=4, stackpos=253}
player2 = getThingfromPos(player2pos)

if player1.itemid > 0 and player2.itemid > 0 then
arenalevel = 100
player1level = getPlayerLevel(player1.uid)
player2level = getPlayerLevel(player2.uid)

if player1level >= arenalevel and player2level >= arenalevel then
for arenax = 366,366 do
for arenay = 503,510 do
arenapos = {x=arenax, y=arenay, z=7, stackpos=253}
arenacreature = getThingfromPos(arenapos)

if arenacreature.itemid > 0 then
doPlayerSendCancel(cid,"Espere o dualo atual terminar.")
return 1
end
end
end

nplayer1pos = {x=366, y=503, z=7}
nplayer2pos = {x=366, y=510, z=7}

doSendMagicEffect(player1pos,2)
doSendMagicEffect(player2pos,2)

doTeleportThing(player1.uid,nplayer1pos)
doTeleportThing(player2.uid,nplayer2pos)

doSendMagicEffect(nplayer1pos,10)
doSendMagicEffect(nplayer2pos,10)

doPlayerSendTextMessage(player1.uid,18,"BAIXA O SAFARRO NELE!")
doPlayerSendTextMessage(player2.uid,18,"BAIXA O SAFARRO NELE!")
else
doPlayerSendCancel(cid,"Os dois jogadores tem que ser level 100 para duelar.")
end
else
doPlayerSendCancel(cid,"Você precisa de 2 jogadores para duelar.")
end
else
return 0
end

return 1
end