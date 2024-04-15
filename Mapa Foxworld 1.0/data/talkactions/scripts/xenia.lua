-- 1º script de invasao para Darkness, por Zyron--
function onSay(cid, words, param)
monstro = "xenia"
Monstro = "valkyrie"



pos1 = {x=42, y=128, z=7}
pos2 = {x=37, y=124, z=7}


if getPlayerAccess(cid) >= 1 then --so GM e GOD pode usar esse comando
doSummonCreature(monstro, pos1)
doSummonCreature(Monstro, pos2)

broadcastMessage("Xenia warrior beats in Amazom Camp gates of wanting revenge.", MESSAGE_EVENT_ADVANCE)

end
end