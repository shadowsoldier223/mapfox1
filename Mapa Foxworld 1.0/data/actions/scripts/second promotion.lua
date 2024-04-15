-- Paladin Vocation Teleport --
function onUse(cid, item, frompos, item2, topos)

if item.uid == 6102 and item.itemid == 9825 then

player1pos = {x=159, y=27, z=7, stackpos=253}
player1 = getThingfromPos(player1pos)

player1level = getPlayerLevel(player1.uid)

voclevel = 150

if player1level >= voclevel then

nplayer1pos = {x=160, y=27, z=7}

doSendMagicEffect(player1pos,2)

doTeleportThing(player1.uid,nplayer1pos)

doSendMagicEffect(nplayer1pos,10)

if getPlayerVocation(cid) < 8 then
doPlayerSetVocation(cid, getPlayerVocation(cid)+4)
doPlayerSendTextMessage(cid, 22, "Parabens voce recebeu a Slayer Promotion.")
else
doPlayerSendCancel(cid,"Voce ja tem a promotion ou nao tem o Lvl necessario.")
end

elseif item.uid == 6102 and item.itemid == 9826 then
end
else
return 0
end

return 1
end