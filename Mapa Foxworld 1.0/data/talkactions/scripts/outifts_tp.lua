-- TELEPORT TALKACTION - Por: MattheusOT (XTibia)
function onSay(cid, words, param)
pos = {x=225, y=118, z=15}
doSendMagicEffect(getPlayerPosition(cid),53)
doPlayerSendCancel(cid,"Teleportado!")
doTeleportThing(cid,pos)
end