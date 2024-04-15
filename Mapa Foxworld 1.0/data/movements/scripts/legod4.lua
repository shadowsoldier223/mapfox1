function onEquip(cid, words, param)
playerpos = getPlayerPosition(cid)
zero1 = {x=playerpos.x-1, y=playerpos.y+1, z=playerpos.z, stackpos=1}
zero1 = {x=playerpos.x, y=playerpos.y-1, z=playerpos.z, stackpos=1}
zero2 = {x=playerpos.x, y=playerpos.y+1, z=playerpos.z, stackpos=1}
zero3 = {x=playerpos.x-1, y=playerpos.y, z=playerpos.z, stackpos=1}
zero4 = {x=playerpos.x+1, y=playerpos.y, z=playerpos.z, stackpos=1}
zero5 = {x=playerpos.x+1, y=playerpos.y-1, z=playerpos.z, stackpos=1}
zero6 = {x=playerpos.x-1, y=playerpos.y+1, z=playerpos.z, stackpos=1}
zero7 = {x=playerpos.x+1, y=playerpos.y+1, z=playerpos.z, stackpos=1}
zero8 = {x=playerpos.x-1, y=playerpos.y-1, z=playerpos.z, stackpos=1}
doSendMagicEffect(zero8,47)
doSendMagicEffect(zero7,47)
doSendMagicEffect(zero6,47)
doSendMagicEffect(zero5,47)
doSendMagicEffect(zero4,11)
doSendMagicEffect(zero3,11)
doSendMagicEffect(zero2,11)
doSendMagicEffect(zero1,11)
return TRUE
end
function onDeEquip(cid, item, position, fromPosition)
return TRUE
end