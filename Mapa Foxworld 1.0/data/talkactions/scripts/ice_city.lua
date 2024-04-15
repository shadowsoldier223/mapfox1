-- TELEPORT TALKACTION - Por: MattheusOT (XTibia)
function onSay(cid, words, param)
pos = {x=161, y=391, z=13}
doSendMagicEffect(getPlayerPosition(cid),35)
doPlayerSendCancel(cid,"Teleportado!")
doTeleportThing(cid,pos)
end