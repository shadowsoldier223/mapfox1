-- 1º script de invasao para Darkness, por Zyron--
function onSay(cid, words, param)
monstro = "yakchal"
Monstro = "ice witch"



pos1 = {x=263, y=17, z=2}
pos2 = {x=260, y=16, z=2}


if getPlayerAccess(cid) >= 1 then --so GM e GOD pode usar esse comando
doSummonCreature(monstro, pos1)
doSummonCreature(Monstro, pos2)

broadcastMessage("Yakchal queen of hearts of ice came to his tower without mercy, leaving the tower witches or die.", MESSAGE_EVENT_ADVANCE)

end
end