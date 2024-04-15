--function by Armageddom--
function onStepIn(cid, item, frompos, item2, topos) 
rand = math.random(1,6)

player1pos = getPlayerPosition(cid) 
player2pos = getPlayerPosition(cid)
player3pos = getPlayerPosition(cid)
player4pos = getPlayerPosition(cid)
player5pos = getPlayerPosition(cid)
player6pos = getPlayerPosition(cid)
novapos1 = {x=160, y=54, z=7}
novapos2 = {x=181, y=123, z=11}
novapos3 = {x=210, y=24, z=7}
novapos4 = {x=253, y=24, z=7}
novapos5 = {x=366, y=28, z=7}
novapos6 = {x=160, y=54, z=7}
msg = "Teleportado!"

if item.uid == 6666 then

if rand == 1 then
doPlayerSendTextMessage(cid, 22, msg)
getThingfromPos(player1pos) 
doSendMagicEffect(player1pos,2)
doTeleportThing(cid,novapos1)
doSendMagicEffect(novapos1,10)

elseif rand == 2 then
doPlayerSendTextMessage(cid, 22, msg)
getThingfromPos(player2pos) 
doSendMagicEffect(player2pos,2)
doTeleportThing(cid,novapos2)
doSendMagicEffect(novapos2,10)

elseif rand == 3 then
doPlayerSendTextMessage(cid, 22, msg)
getThingfromPos(player3pos) 
doSendMagicEffect(player3pos,2)
doTeleportThing(cid,novapos3)
doSendMagicEffect(novapos3,10)

elseif rand == 4 then
doPlayerSendTextMessage(cid, 22, msg)
getThingfromPos(player4pos) 
doSendMagicEffect(player4pos,2)
doTeleportThing(cid,novapos4)
doSendMagicEffect(novapos4,10)

elseif rand == 5 then
doPlayerSendTextMessage(cid, 22, msg)
getThingfromPos(player5pos) 
doSendMagicEffect(player5pos,2)
doTeleportThing(cid,novapos5)
doSendMagicEffect(novapos5,10)

elseif rand == 6 then
doPlayerSendTextMessage(cid, 22, msg)
getThingfromPos(player6pos) 
doSendMagicEffect(player6pos,2)
doTeleportThing(cid,novapos6)
doSendMagicEffect(novapos6,10)
end
return 1
end
end