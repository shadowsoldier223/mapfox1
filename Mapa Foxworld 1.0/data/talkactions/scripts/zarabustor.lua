-- 1º script de invasao para Darkness, por Zyron--
function onSay(cid, words, param)
monstro = "zarabustor"
Monstro = "warlock"

pos1 = {x=467, y=139, z=7}
pos2 = {x=469, y=136, z=7}


if getPlayerAccess(cid) >= 1 then --so GM e GOD pode usar esse comando
doSummonCreature(monstro, pos1)
doSummonCreature(Monstro, pos2)

broadcastMessage("Master of magicians and is back with all its fury Zarabustor just invade Magician Land.", MESSAGE_EVENT_ADVANCE)

end
end