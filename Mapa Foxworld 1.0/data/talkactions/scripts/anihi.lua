-- TELEPORT TALKACTION - Por: MattheusOT (XTibia)
function onSay(cid, words, param)
pos = {x=56, y=279, z=10}
doSendMagicEffect(getPlayerPosition(cid),29)
doPlayerSendCancel(cid,"Teleportado!")
doTeleportThing(cid,pos)
end